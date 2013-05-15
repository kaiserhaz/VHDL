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

entity test_datapath is
end entity test_datapath;

architecture bench_datapath of test_datapath is
  
  for UUT : datapath use entity work.datapath(behaviour_datapath);
  
  signal clk_t, rst_t, n_t, z_t, c_t, v_t : bit;
  signal ctrlword_t : controlword;
  signal datain_t, dataout_t : word;
  signal addrout_t : address;
  signal opcodeout_t : opcode;
  
  constant cycle : time := 10 ns;
  signal endsim : boolean;
  file stim_file : text is "stimulus_datapath.txt";  

  begin
    
    UUT : datapath port map(clk_t, rst_t, ctrlword_t, datain_t, dataout_t,
                            addrout_t, opcodeout_t, n_t, z_t, c_t, v_t);
    
    process
      variable vrst : bit ;
      variable vdatain : bit_vector(Nbbits-1 downto 0);
      variable vctrlword : bit_vector(Nbctrl-1 downto 0);
      variable li : line;
      begin
        while not endfile(stim_file) loop
          readline(stim_file,li);
          if li'length > 0 and li(1) /= '-' then
            read(li,vrst);
            read(li,vdatain);
            read(li,vctrlword(23));
            read(li,vctrlword(22 downto 21));
            read(li,vctrlword(20 downto 17));
            read(li,vctrlword(16 downto 13));
            read(li,vctrlword(12 downto 9));
            read(li,vctrlword(8));
            read(li,vctrlword(7 downto 4));
            read(li,vctrlword(3));
            read(li,vctrlword(2));
            read(li,vctrlword(1));
            read(li,vctrlword(0));
            
            rst_t <= vrst;
            datain_t <= signed(vdatain);
            ctrlword_t <= unsigned(vctrlword);
  
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
    
end architecture bench_datapath;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------