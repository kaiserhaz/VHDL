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
-- File 24 : Zero Fill
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

entity zero_fill is
  port(     sb_in : in regaddress;
            sb_filled_out : out word
      );
end entity zero_fill;

-- Architecture

architecture behaviour_zf of zero_fill is
  begin
    process(sb_in)
      variable interm_addr : address := (others=>'0');
      begin
        interm_addr(sb_in'range) := sb_in;
        sb_filled_out <= signed(interm_addr);
    end process;
end behaviour_zf;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------