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
-- File 3 : Control Unit
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

entity controlUnit is
  port(    clk         : in bit;              -- Clock
           rst         : in bit;              -- Reset
           n           : in bit;              -- Result negative
           z           : in bit;              -- Result zero
--           c           : in bit;              -- Result carry
--           v           : in bit;              -- Result overflow
           opcodein    : in opcode;           -- Opcode
           ctrlwordout : out controlword      -- Control word
       );
end entity controlUnit;

-- Architecture

architecture bhvCu of controlUnit is
  
  type defstate is (INF, EX0);                -- State type
  type defop is ( VNCMOVA, VNCINC, VNCADD, VNCSUB, VNCDEC,
                  VNCAND, VNCOR, VNCXOR, VNCNOT, VNCMOVB,
                  VNCSHR, VNCSHL, VNCLDI, VNCADI, VNCLD,
                  VNCST, VNCBRZ, VNCBRN, VNCJMP, VNCNOP );    -- Opcodes
  
  signal currentstate, nextstate : defstate;  -- State variables
  signal currop : defop;                      -- Opcode signal
  
begin
  
  mem:process(rst, clk)
  begin
    if (rst = '1') then                       -- On reset
      currentstate <= INF after 3 ns;         -- Current state is Instruction Fetch
    elsif (rising_edge(clk)) then             -- Else on clock rising edge
      currentstate <= nextstate after 3 ns;   -- Current state is next state

    end if;
    
  end process;
      
  comb:process(currentstate)
    variable ctrlwordInterm : controlword := X"000000"; -- Intermediate control word
    variable opInterm : defop;
  begin
    case (currentstate) is                    -- Switch on current state
      when INF => ctrlwordInterm := X"800002";
                  opInterm := VNCNOP;
                  nextstate <= EX0;             
                  
      when EX0 => case (opcodein) is
                    when "0000000" => ctrlwordInterm := X"200004";  -- MOVA
                                      opInterm := VNCMOVA; 
                    when "0000001" => ctrlwordInterm := X"200014";  -- INC
                                      opInterm := VNCINC;
                    when "0000010" => ctrlwordInterm := X"200024";  -- ADD
                                      opInterm := VNCADD;
                    when "0000101" => ctrlwordInterm := X"200054";  -- SUB
                                      opInterm := VNCSUB;
                    when "0000110" => ctrlwordInterm := X"200064";  -- DEC
                                      opInterm := VNCDEC;
                    when "0001000" => ctrlwordInterm := X"200084";  -- AND
                                      opInterm := VNCAND;
                    when "0001001" => ctrlwordInterm := X"200094";  -- OR
                                      opInterm := VNCOR;
                    when "0001010" => ctrlwordInterm := X"2000A4";  -- XOR
                                      opInterm := VNCXOR;
                    when "0001011" => ctrlwordInterm := X"2000B4";  -- NOT
                                      opInterm := VNCNOT;
                    when "0001100" => ctrlwordInterm := X"2000C4";  -- MOVB
                                      opInterm := VNCMOVB;
                    when "0001101" => ctrlwordInterm := X"2000D4";  -- SHR
                                      opInterm := VNCSHR;
                    when "0001110" => ctrlwordInterm := X"2000E4";  -- SHL
                                      opInterm := VNCSHL;
                    when "0010000" => ctrlwordInterm := X"20000C";  -- LD
                                      opInterm := VNCLD;
                    when "0100000" => ctrlwordInterm := X"200001";  -- ST
                                      opInterm := VNCST;
                    when "1001100" => ctrlwordInterm := X"2001C4";  -- LDI
                                      opInterm := VNCLDI;
                    when "1000010" => ctrlwordInterm := X"200124";  -- ADI
                                      opInterm := VNCADI;
                    when "1100000" => if (z = '1') then             -- BRZ
                                        ctrlwordInterm := X"400000";
                                      else
                                        ctrlwordInterm := X"200000";
                                      end if;
                                      opInterm := VNCBRZ;
                    when "1100001" => if (n = '1') then             -- BRN
                                        ctrlwordInterm := X"400000";
                                      else
                                        ctrlwordInterm := X"200000";
                                      end if;
                                      opInterm := VNCBRN;
                    when "1110000" => ctrlwordInterm := X"600000";  -- JMP
                                      opInterm := VNCJMP;
                    when others => ctrlwordInterm := X"000000";
                                      opInterm := VNCNOP;
                  end case;
                  
                  nextstate <= INF;           -- Update next state
    end case;
      
    ctrlwordout <= ctrlwordInterm after 2 ns; -- Output control word
    currop <= opInterm;

  end process;
    
end bhvCu;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------