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
-- File 213 : Program Counter Testbench
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

entity test_pc is
end entity test_pc;

-- Architecture

architecture bench_pc of test_pc is 
  
  component prog_counter is
    generic(  tpc : time := 2 ns
            );
            
    port(     clk : in bit;
              sa_in, addr_extended_in : in address;
              ps_in : in bit_vector(1 downto 0);
              pc_out : out address
        );
  end component;
  
  for UUT : prog_counter use entity work.prog_counter(behaviour_pc);
  
  signal clk_t : bit;
  signal sa_in_t, aext_in_t : address;
  signal ps_in_t : bit_vector(1 downto 0);
  signal pc_out_t : address;
  
  begin

    UUT : prog_counter port map(clk_t, sa_in_t, aext_in_t, ps_in_t, pc_out_t);
    
    sa_in_t <= "0000000000000001", "0000000000000111" after 10 ns, "0000000000000100" after 34 ns, "0000000000000010" after 45 ns;
    aext_in_t <= "1111111111101110", "0000000000000100" after 9 ns, "0000000000000011" after 37 ns, "1111111111010100" after 38 ns;
    
    ps_in_t <= "11", "01" after 14 ns, "01" after 24 ns, "01" after 34 ns, "10" after 44 ns, "00" after 55 ns;
    
    process
      begin
        wait for 5 ns;
        clk_t <= not clk_t;
    end process;
  
end bench_pc;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------