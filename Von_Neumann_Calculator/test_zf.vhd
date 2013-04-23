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
-- File 211 : Zero Fill Testbench
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

entity test_zf is
end entity test_zf;

-- Architecture

architecture bench_zf of test_zf is 
  
  component zero_fill is
    port(     sb_in : in regaddress;
              sb_filled_out : out word
        );
  end component;
  
  for UUT : zero_fill use entity work.zero_fill(behaviour_zf);
  
  signal sb_in_t : regaddress;
  signal sb_fo_t : word;
  
  begin

    UUT : zero_fill port map(sb_in_t, sb_fo_t);
    
    sb_in_t <= "101", "011" after 10 ns, "111" after 20 ns, "000" after 30 ns;
  
end bench_zf;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------