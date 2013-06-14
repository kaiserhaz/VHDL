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
-- File 25 : Address Extender
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

entity addr_extender is
  port(     dr_in, sb_in : in regaddress;
            addr_extended_out : out address
      );
end entity addr_extender;

-- Architecture

architecture behaviour_aext of addr_extender is
  begin
    process(dr_in, sb_in)
      variable interm_addr : address;
      begin
        if dr_in(dr_in'left) = '1' then
          interm_addr := (others=>'1');
        else
          interm_addr := (others=>'0');
        end if;
        
        interm_addr(dr_in'left + sb_in'left + 1 downto 0) := dr_in & sb_in;
        
        addr_extended_out <= interm_addr;
    end process;
end behaviour_aext;
        
----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------