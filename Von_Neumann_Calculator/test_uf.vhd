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
-- File 29 : Functional Unit Testbench
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

entity test_uf is
end entity test_uf;

-- Architecture

architecture bench_uf of test_uf is 
  
  component unit_fonc is
    generic(  tuf : time := 4 ns;
              tind : time := 1 ns
            );
            
    port(     datain_a, datain_b : in word;
              fs : in fscode;
              n, z, v, c : out bit;
              f_out : out word
        );
  end component;
  
  for UUT : unit_fonc use entity work.unit_fonc(behaviour_uf);
  
  signal datain_a_t, datain_b_t : word;
  signal fs_t : fscode;
  signal n_t, z_t, v_t, c_t : bit;
  signal f_out_t : word;
  
  begin

    UUT : unit_fonc port map(datain_a_t, datain_b_t, fs_t, n_t, z_t, v_t, c_t, f_out_t);

    fs_t <= "0001" after 5 ns,
            "0010" after 10 ns,
            "0101" after 15 ns,
            "0110" after 20 ns,
            "1000" after 25 ns,
            "1001" after 30 ns,
            "1010" after 35 ns,
            "1011" after 40 ns,
            "1100" after 45 ns,
            "1101" after 50 ns,
            "1110" after 55 ns,
            "1111" after 60 ns,
            "0000" after 65 ns;
    
    datain_a_t <= "0000000000000111";
    datain_b_t <= "0000000000000100";
    
end bench_uf;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------