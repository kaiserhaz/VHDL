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

entity test_uc is
end entity test_uc;

architecture bench_uc of test_uc is
  
  for UUT : unite_controle use entity work.unite_controle(behaviour_uc);
  
  signal clk_t, rst_t, n_t, z_t, c_t, v_t : bit;
  signal opcodein_t : opcode;
  signal ctrlwordout_t : controlword;
  
  constant cycle : time := 10 ns;
  signal endsim : boolean;
  file stim_file : text is "stimulus_uc.txt";  

  begin
    
    UUT : unite_controle port map(clk_t, rst_t, n_t, z_t, c_t, v_t, opcodein_t, ctrlwordout_t);
    
    process
      variable vrst, vn, vz, vc, vv : bit ;
      variable vopcodein : bit_vector(Nbopcode-1 downto 0);
      variable li : line;
      begin
        while not endfile(stim_file) loop
          readline(stim_file,li);
          if li'length > 0 and li(1) /= '-' then
            read(li,vrst);
		        read(li,vn);
	          read(li,vz);
  		        read(li,vc);
  		        read(li,vv);
            read(li,vopcodein);
            
            rst_t <= vrst;
			      n_t <= vn;
			      z_t <= vz;
			      c_t <= vc;
			      v_t <= vv;
            opcodein_t <= unsigned(vopcodein);

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
    
end architecture bench_uc;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------