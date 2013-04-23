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
-- File 212 : Address Extender Testbench
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

entity test_aext is
end entity test_aext;

-- Architecture

architecture bench_aext of test_aext is 
  
  component addr_extender is
    port(     dr_in, sb_in : in regaddress;
              addr_extended_out : out address
        );
  end component;
  
  for UUT : addr_extender use entity work.addr_extender(behaviour_aext);
  
  signal dr_in_t, sb_in_t : regaddress;
  signal aext_out_t : address;
  
  begin

    UUT : addr_extender port map(dr_in_t, sb_in_t, aext_out_t);
    
    sb_in_t <= "101", "011" after 10 ns, "111" after 20 ns, "000" after 30 ns;
    dr_in_t <= "011", "110" after 9 ns, "000" after 22 ns, "111" after 27 ns;
  
end bench_aext;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------