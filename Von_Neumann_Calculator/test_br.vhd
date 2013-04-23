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
-- File 28 : Register Bank Testbench
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

entity test_br is
end entity test_br;

-- Architecture

architecture bench_br of test_br is 
  
  component banc_registre is
    generic(  tw, tr : time := 3 ns;
              fich : string := "bancreginit.txt"
            );
            
    port(     clk, rw, rst : in bit;
              datain : in word;
              d_addr, a_addr, b_addr : in sysregaddress;
              dataout_a, dataout_b : out word
        );     
  end component;
  
  for UUT : banc_registre use entity work.banc_registre(behaviour_br);
  
  constant cycle : time := 10 ns;
  
  signal clk_t, rw_t, rst_t : bit;
  signal datain_t : word;
  signal d_addr_t, a_addr_t, b_addr_t : sysregaddress;
  signal dataout_a_t, dataout_b_t : word;
  signal endsim : boolean;
  
  file stim_file : text is "stimulus_br.txt";
  
  begin

    UUT : banc_registre port map(clk_t, rw_t, rst_t, datain_t, d_addr_t, a_addr_t, b_addr_t, dataout_a_t, dataout_b_t);
      
    process
      variable vrst, vrw : bit ;
      variable vdatain : bit_vector(Nbbits-1 downto 0);
      variable vdadress, vaadress, vbadress : bit_vector(Nbregaddr downto 0);
      variable li : line;
      begin
        while not endfile(stim_file) loop
          readline(stim_file,li);
          if li'length > 0 and li(1) /= '-' then
            read(li,vrst);
            read(li,vrw);
            read(li,vdatain);
            read(li,vdadress);
            read(li,vaadress);
            read(li,vbadress);
            
            rst_t <= vrst;
            rw_t <= vrw;
            datain_t <= signed(vdatain);
            d_addr_t <= unsigned(vdadress);
            a_addr_t <= unsigned(vaadress);
            b_addr_t <= unsigned(vbadress);
  
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
  
end bench_br;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------