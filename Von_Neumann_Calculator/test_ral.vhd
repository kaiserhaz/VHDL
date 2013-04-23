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
-- File 210 : Register Address Logic Testbench
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

entity test_ral is
end entity test_ral;

-- Architecture

architecture bench_ral of test_ral is 
  
  component reg_addr_logic is
    port(     dr_in, sa_in, sb_in : in regaddress;
              dx_in, ax_in, bx_in : in sysregaddress;
              da_out, aa_out, ba_out : out sysregaddress
        );
  end component;
  
  for UUT : reg_addr_logic use entity work.reg_addr_logic(behaviour_ral);
  
  signal dr_in_t, sa_in_t, sb_in_t : regaddress;
  signal dx_in_t, ax_in_t, bx_in_t : sysregaddress;
  signal da_out_t, aa_out_t, ba_out_t : sysregaddress;
  
  begin

    UUT : reg_addr_logic port map(dr_in_t, sa_in_t, sb_in_t, dx_in_t, ax_in_t, bx_in_t, da_out_t, aa_out_t, ba_out_t);
    
    sb_in_t <= "101", "011" after 10 ns, "111" after 20 ns, "010" after 30 ns;
    sa_in_t <= "001", "101" after 11 ns, "110" after 21 ns, "011" after 29 ns;
    dr_in_t <= "011", "110" after 9 ns, "000" after 22 ns, "111" after 27 ns;
    
    bx_in_t <= "0101", "1011" after 12 ns, "1111" after 23 ns, "0000" after 30 ns;
    ax_in_t <= "1001", "0101" after 8 ns, "0110" after 19 ns, "1011" after 28 ns;
    dx_in_t <= "0011", "1110" after 7 ns, "0000" after 24 ns, "1111" after 31 ns;
  
end bench_ral;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------