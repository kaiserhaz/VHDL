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
-- File 21 : Datapath testbench
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

--Entity

entity test_cpu is
end entity test_cpu;

architecture bench_cpu of test_cpu is
  
  for UUT : cpu use entity work.cpu(rtl_cpu);
  
  signal clk_t, rst_t, mw_t : bit;
  signal datain_t, dataout_t : word;
  signal addrout_t : address;
  
  constant cycle : time := 14 ns;
  signal endsim : boolean;
  file stim_file : text is "stimulus_cpu.txt";  

  begin
    
    UUT : cpu port map(clk_t, rst_t, datain_t, mw_t, addrout_t, dataout_t);

    process
      variable vrst : bit ;
      variable vdatain : bit_vector(Nbbits-1 downto 0);
      variable li : line;
      begin
        while not endfile(stim_file) loop
          readline(stim_file,li);
          if li'length > 0 and li(1) /= '-' then
            read(li,vrst);
            read(li,vdatain);
            
            rst_t <= vrst;
            datain_t <= signed(vdatain);
  
            wait for cycle;
          end if;
        end loop;
        
        endsim <= true;
        
        assert false report "Simulation ended" severity note;
        wait;
    end process ;
    
    process
      begin
        wait for 7 ns; -- Register-to-register delay is highest at 12 ns, therefore we estimate to 14 ns clock period
        clk_t <= not clk_t;
    end process;
    
end architecture bench_cpu;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------