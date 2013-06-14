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
-- File 22 : Functional Unit
--
----
-------------------
----------------------------------------
----------------------------------------

-- Libraries

library ieee;
use ieee.numeric_bit.all;
use work.VNC_package.all;
  
-- Entity

entity unit_fonc is
  generic(  tuf : time := 4 ns;
            tind : time := 1 ns
          );
          
  port(     datain_a, datain_b : in word;
            fs : in fscode;
            n, z, v, c : out bit;
            f_out : out word
      );
end entity unit_fonc;

-- Architecture

architecture behaviour_uf of unit_fonc is
--  subtype lword is signed(Nbbits downto 0); 
  begin
    process(fs)
      variable interm_f : word;
      begin
        case fs is
          when "0000" => interm_f := datain_a;
          when "0001" => interm_f := datain_a + 1;
          when "0010" => interm_f := datain_a + datain_b;
          when "0101" => interm_f := datain_a + not datain_b + 1;
          when "0110" => interm_f := datain_a - 1;
          when "1000" => interm_f := datain_a and datain_b;
          when "1001" => interm_f := datain_a or datain_b;
          when "1010" => interm_f := datain_a xor datain_b;
          when "1011" => interm_f := not datain_a;
          when "1100" => interm_f := datain_b;
          when "1101" => interm_f := datain_b srl 1;
          when "1110" => interm_f := datain_b sll 1;
          when others => null;
        end case;
        
        if interm_f(interm_f'left - 1) = '1' then
          n <= '1' after tind;
        else
          n <= '0' after tind;
        end if;
          
        if interm_f = 0 then
          z <= '1' after tind;
        else
          z <= '0' after tind;
        end if;
        
--        if interm_f > -- Carry and Overflow cases
        
        f_out <= interm_f after tuf;
        
    end process;
end behaviour_uf;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------