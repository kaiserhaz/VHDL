----------------------------------------
----------------------------------------
-------------------
----
--
-- The Von Neumann Calculator
-- A VHDL Project
-- UniKL
-- 2015-2016
-- 
-- File 4 : Datapath
--
----
-------------------
----------------------------------------
----------------------------------------

-- Librairies

library ieee;
use ieee.numeric_bit.all;
use work.vncPackage.all;

-- Entité

entity datapath is
  generic(  sAdr      : address := startAdr   -- Start address
      );
  port(     clk       : in bit;               -- Clock
            rst       : in bit;               -- Reset
            ctrlword  : in controlword;       -- Control word
            datain    : in word;              -- Data in line
            dataout   : out word;             -- Data out line
            addrout   : out address;          -- Address line
            opcodeout : out opcode;           -- Opcode
            n         : out bit;              -- N status (Neg)
            z         : out bit               -- Z status (Zero)
--            c         : out bit;              -- C status (Carry)
--            v         : out bit               -- V status (oVerflow)
      );
end entity datapath;

-- Architecture

architecture bhvDatapath of datapath is 
  
  -- Internal signals
  
  signal bancregs : defbancreg;
  signal zfOut : word;
  signal aextOut : address;
  signal ufOut : word;
  signal pcOut : address;
  signal irOut : address;
  signal raldOut, ralaOut, ralbOut : sysregaddress;
  signal databOut : word;
  signal busA, busB, busD : word;
  
  alias ilIn : bit is ctrlword(23);
  alias psIn : unsigned(1 downto 0) is ctrlword(22 downto 21);
  alias dxIn : sysregaddress is ctrlword(20 downto 17);
  alias axIn : sysregaddress is ctrlword(16 downto 13);
  alias bxIn : sysregaddress is ctrlword(12 downto 9);
  alias mbIn : bit is ctrlword(8);
  alias fsIn : fscode is ctrlword(7 downto 4);
  alias mdIn : bit is ctrlword(3);
  alias rwIn : bit is ctrlword(2);
  alias mmIn : bit is ctrlword(1);
  alias mwIn : bit is ctrlword(0);
  alias opOut : opcode is irOut(15 downto 9);
  alias drIn : regaddress is irOut(8 downto 6);
  alias saIn : regaddress is irOut(5 downto 3);
  alias sbIn : regaddress is irOut(2 downto 0);  
  
begin
  
  -- Synchronous processes
  
  -- Instruction register
  
  irP:process(rst, clk)
  begin
  
    if (rst='1') then                         -- On reset
      opOut <= (others => '0') after 2 ns;    -- Deassert all lines
      drIn <= (others => '0') after 2 ns;
      saIn <= (others => '0') after 2 ns;
      sbIn <= (others => '0') after 2 ns;
      
    elsif (clk='1' and clk'event) then        -- Else on clock rising edge
      if (ilIn = '1') then                    -- If instruction load allowed
        opOut <= unsigned(datain(datain'left downto datain'left-Nbopcode+1)) after 2 ns; -- Output values from data line
        drIn <= unsigned(datain(datain'left-Nbopcode downto datain'left-Nbopcode-2)) after 2 ns;
        saIn <= unsigned(datain(datain'left-Nbopcode-3 downto datain'left-Nbopcode-5)) after 2 ns;
        sbIn <= unsigned(datain(datain'right+Nbregaddr-1 downto 0)) after 2 ns;
      end if;
    
    end if;

  end process;
  
  -- Program counter
  
  pcP:process(rst, clk)
    variable pcCount : address := sAdr;       -- Internal address counter
  begin
  
    if (rst='1') then                         -- On reset
      pcCount := sAdr;                        -- Set counter on default
    
    elsif (clk='1' and clk'event) then        -- Else on clock rising edge
      case (psIn) is                          -- Switch on program state input
        when "00" => pcCount := pcCount;      -- No change
--        when "01" => pcCount := pcCount + 1;  -- Increment
        when "01" => pcCount := pcCount - 1;  -- Decrement
        when "10" => pcCount := pcCount + aextOut; -- Extend by address
        when "11" => pcCount := address(busA);     -- Use A
        when others => pcCount := sAdr;       -- Reset on other cases
      end case;
    
    end if;
  
    pcOut <= pcCount after 2 ns;

  end process;
  
  -- Regsiter file
  
  rfP:process(clk, rst)
  begin
  
    if (rst='1') then
      bancregs <= initBancReg(rfinitfile) after 3 ns;
    
    elsif (clk='1' and clk'event) then        -- Else on clock rising edge
      if (rwIn='1') then                      -- On write
        bancregs(to_integer(raldOut)) <= busD after 3 ns; -- Write to register with data address
      
      else                                    -- On read
        busA <= bancregs(to_integer(ralaOut)) after 3 ns; -- Output according to the A and B addresses
        databOut <= bancregs(to_integer(ralbOut)) after 3 ns;
        
      end if;
      
    end if;
  
  end process;
  
  -- Asynchronous processes
  
  -- ALU process
  
  aluP:process(fsIn, busA, busB)
    variable intermW : word;                  -- Intermediate word
  begin
    
    case (fsIn) is                            -- Switch on fs
      when "0000" => intermW := signed(busA);                -- Output A
      when "0001" => intermW := signed(busA) + 1;            -- Increment A
      when "0010" => intermW := signed(busA) + busB;         -- Add B
      when "0101" => intermW := signed(busA) + not busB + 1; -- Subtract B (two's complement)
      when "0110" => intermW := signed(busA) - 1;            -- Decrement A
      when "1000" => intermW := signed(busA) and busB;       -- AND
      when "1001" => intermW := signed(busA) or busB;        -- OR
      when "1010" => intermW := signed(busA) xor busB;       -- XOR
      when "1011" => intermW := not signed(busA);            -- NOT
      when "1100" => intermW := busB;                        -- Output B
      when "1101" => intermW := busB srl 1;                  -- Shift right
      when "1110" => intermW := busB sll 1;                  -- Shift left
      when others => intermW := (others => '0');             -- Deassert result
    end case;
    
    ufOut <= intermW after 4 ns;             -- Affect to output signal
 
  end process;
  
  -- ALU subprocess: update datapath status
  
  aluSp:process(ufOut)
  begin
  
    -- Negative
    if (ufOut(ufOut'left - 1) = '1') then
      n <= '1' after 1 ns;
    else
      n <= '0' after 1 ns;
    end if;
    
    -- Zero
    if (ufOut = 0) then
      z <= '1' after 1 ns;
    else
      z <= '0' after 1 ns;
    end if;
    
--        if intermW > -- Carry and Overflow cases
  
  end process;
  
  -- Zero-fill process
  
  zfP:process(sbIn)
    variable intermAddr : address := (others=>'0'); -- Intermediate address
  begin
      intermAddr := "0000000000000" & sbIn;   -- Concatenate zeros
      zfOut <= word(intermAddr);              -- Affect to output
  end process;
  
  -- Address extender process
  
  aeP:process(drIn, sbIn)
    variable intermAddr : address;            -- Intermediate address
  begin
      if (drIn(drIn'left) = '1') then         -- If destination address is negative
        intermAddr := "1111111111" & drIn & sbIn;
      else                                    -- If positive
        intermAddr := "0000000000" & drIn & sbIn;
      end if;
      
      aextOut <= intermAddr;                  -- Affect to output
  end process;
    
  -- Register Address Logic process
  
  ralP:process(dxIn, axIn, bxIn, drIn, saIn, sbIn)
  begin
  
    if dxIn(dxIn'left) = '1' then             -- Multiplex on MSB for destination
      raldOut <= dxIn;
    else
      raldOut <= '0' & drIn;                  -- Concatenate zero on MSB
    end if;
    
    if axIn(axIn'left) = '1' then             -- Multiplex on MSB for A
      ralaOut <= axIn;
    else
      ralaOut <= '0' & saIn;                  -- Concatenate zero on MSB
    end if;
    
    if bxIn(bxIn'left) = '1' then             -- Multiplex on MSB for B
      ralbOut <= bxIn;
    else
      ralbOut <= '0' & sbIn;                  -- Concatenate zero on MSB
    end if;
  
  end process;

  -- Muxes

  -- B data mux
  
  with mbIn select
    busB <= databOut after 1 ns when '0',
            zfOut after 1 ns    when '1',
       (others=>'0') after 1 ns when others;
  
  -- Address mux
  
  with mmIn select
    addrout <= pcOut after 1 ns  when '1',
        address(busA) after 1 ns when '0',
        (others=>'0') after 1 ns when others;
  
  -- Data mux
  
  with mdIn select
    busD <= ufOut after 1 ns when '0',
           datain after 1 ns when '1',
    (others=>'0') after 1 ns when others;
    
  -- Continuous assignment
  
  dataout <= busB;
  
  opcodeout <= opOut;
  
end bhvDatapath;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------