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
  
  signal currentstate, nextstate : defstate;  -- State variables
  
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
  begin
    case (currentstate) is                    -- Switch on current state
      when INF => ctrlwordInterm := X"800002";
                  nextstate <= EX0 after 2 ns;
                  
      when EX0 => case (opcodein) is
                    when "0000000" => ctrlwordInterm := X"200004";  -- MOVA
                    when "0000001" => ctrlwordInterm := X"200014";  -- INC
                    when "0000010" => ctrlwordInterm := X"200024";  -- ADD
                    when "0000101" => ctrlwordInterm := X"200054";  -- SUB
                    when "0000110" => ctrlwordInterm := X"200064";  -- DEC
                    when "0001000" => ctrlwordInterm := X"200084";  -- AND
                    when "0001001" => ctrlwordInterm := X"200094";  -- OR
                    when "0001010" => ctrlwordInterm := X"2000A4";  -- XOR
                    when "0001011" => ctrlwordInterm := X"2000B4";  -- NOT
                    when "0001100" => ctrlwordInterm := X"2000C4";  -- MOVB
                    when "0001101" => ctrlwordInterm := X"2000D4";  -- SHR
                    when "0001110" => ctrlwordInterm := X"2000E4";  -- SHL
                    when "0010000" => ctrlwordInterm := X"20000C";  -- LD
                    when "0100000" => ctrlwordInterm := X"200001";  -- ST
                    when "1001100" => ctrlwordInterm := X"2001C4";  -- LDI
                    when "1000010" => ctrlwordInterm := X"200124";  -- ADI
                    when "1100000" => if (z = '1') then             -- BRZ
                                        ctrlwordInterm := X"400000";
                                      else
                                        ctrlwordInterm := X"200000";
                                      end if;
                    when "1100001" => if (n = '1') then             -- BRN
                                        ctrlwordInterm := X"400000";
                                      else
                                        ctrlwordInterm := X"200000";
                                      end if;
                    when "1110000" => ctrlwordInterm := X"600000";  -- JMP
                    when others => ctrlwordInterm := X"000000";
                  end case;
                  
                  nextstate <= INF after 2 ns;           -- Update next state
    end case;
      
    ctrlwordout <= ctrlwordInterm after 2 ns; -- Output control word

  end process;
    
end bhvCu;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------