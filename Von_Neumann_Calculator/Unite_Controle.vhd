----------------------------------------
----------------------------------------
-------------------
----
--
-- The Von Neumann Calculator
-- A VHDL Project
-- Polytech Nice-Sophia
-- ELEC4
-- 2013
-- 
-- File 30 : Control Unit
--
----
-------------------
----------------------------------------
----------------------------------------

--Librairies

library ieee;
use ieee.numeric_bit.all;
use work.VNC_package.all;

-- Entité

entity unite_controle is
 generic(  tmem : time := 3 ns;
           tcalc : time := 2 ns
         );
       
  port(     clk, rst, n, z, c, v : in bit;
            opcodein : in opcode;
            ctrlwordout : out controlword
       );
end entity unite_controle;

-- Architecture

architecture behaviour_uc of unite_controle is 
  
  type defstate is (INF, EX0);
  
  signal currentstate, nextstate : defstate;
  
  begin
  
  mem:process(rst, clk)
    begin
      if rst = '1' then
        currentstate <= INF;
      elsif rising_edge(clk) then
        currentstate <= nextstate after tmem;
      end if;
  end process;
      
  comb:process(currentstate)
    variable ctrlword_interm : controlword := (others=>'0');
    
    begin
      case currentstate is
      when INF => ctrlword_interm := "100000000000000000000010";
                  nextstate <= EX0;
                  
      when EX0 => case opcodein is
                  when "0000000" => ctrlword_interm := "001000000000000000000100";
                  when "0000001" => ctrlword_interm := "001000000000000000010100";
                  when "0000010" => ctrlword_interm := "001000000000000000100100";
                  when "0000101" => ctrlword_interm := "001000000000000001010100";
                  when "0000110" => ctrlword_interm := "001000000000000001100100";
                  when "0001000" => ctrlword_interm := "001000000000000010000100";
                  when "0001001" => ctrlword_interm := "001000000000000010010100";
                  when "0001010" => ctrlword_interm := "001000000000000010100100";
                  when "0001011" => ctrlword_interm := "001000000000000010110100";
                  when "0001100" => ctrlword_interm := "001000000000000011000100";
                  when "0010000" => ctrlword_interm := "001000000000000000001100";
                  when "0100000" => ctrlword_interm := "001000000000000000000001";
                  when "1001100" => ctrlword_interm := "001000000000000111000100";
                  when "1000010" => ctrlword_interm := "001000000000000100100100";
                  when "1100000" => if z = '1' then
                                      ctrlword_interm := "010000000000000000000000";
                                    else
                                      ctrlword_interm := "001000000000000000000000";
                                    end if;
                  when "1100001" => if n = '1' then
                                      ctrlword_interm := "010000000000000000000000";
                                    else
                                      ctrlword_interm := "001000000000000000000000";
                                    end if;
                  when "1110000" => ctrlword_interm := "011000000000000000000000";
                  when others => ctrlword_interm := (others => '0');
                  end case;
                  
                  nextstate <= INF;  
      end case;
      
      ctrlwordout <= ctrlword_interm after tcalc;
      
  end process;
    
end behaviour_uc;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------