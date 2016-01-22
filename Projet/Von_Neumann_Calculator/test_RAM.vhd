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
-- File 11 : RAM Testbench
--
----
-------------------
----------------------------------------
----------------------------------------

--Librairies

library ieee;
use ieee.numeric_bit.all;
use std.textio.all;
use work.VNC_package.all;

-- Entité

entity test_RAM is
end entity test_RAM;

-- Architecture

architecture bench_ram of test_RAM is 
  
  for UUT : memoire use entity work.memoire(behaviour_ram);
  
  constant cycle : time := 10 ns;
  
  signal clk_t, rst_t, mw_t : bit;
  signal datain_t, dataout_t : word;
  signal adress_t : address;
  signal endsim : boolean;
  
  file stim_file : text is "stimulus_ram.txt";
  
  begin

    UUT : memoire port map(clk_t, rst_t, mw_t, datain_t, adress_t, dataout_t);
      
    process
      variable vrst, vmw : bit ;
      variable vdatain : bit_vector(Nbbits-1 downto 0);
      variable vadress : bit_vector(Nbbits-1 downto 0);
      variable li : line;
      begin
        while not endfile(stim_file) loop
          readline(stim_file,li);
          if li'length > 0 and li(1) /= '-' then
            read(li,vrst);
            read(li,vmw);
            read(li,vdatain);
            read(li,vadress);
            
            rst_t <= vrst;
            mw_t <= vmw;
            datain_t <= signed(vdatain);
            adress_t <= unsigned(vadress);
  
            wait for cycle;
          end if;
        end loop;
        
        endsim <= true;
        
        assert false report "Simulation ended" severity note;
        wait;
    end process ;
    
    process
      begin
        wait for 5 ns;
        clk_t <= not clk_t;
    end process;
  
end bench_ram;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------