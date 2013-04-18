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
use work.mem_package.all;

-- Entité

entity test_RAM is
end entity test_RAM;

-- Architecture

architecture bench1 of test_RAM is 
  
  component memoire is
    generic(  tmemoire : time := 4 ns;
              fich : string := "meminit.txt"
            );
            
    port(     clk,rst : in bit;
              mw : in bit;
              datain : in signed(Nbbits-1 downto 0);
              adress : in unsigned(Nbbits-1 downto 0);
              dataout : out signed(Nbbits-1 downto 0)
        );
  end component;
  
  for UUT : memoire use entity work.memoire(behaviour);
  
  constant cycle : time := 10 ns;
  
  signal clk_t, rst_t, mw_t : bit;
  signal datain_t, dataout_t : signed(Nbbits-1 downto 0);
  signal adress_t : unsigned(Nbbits-1 downto 0);
  signal endsim : boolean;
  
  file stim_file : text is "stimulus.txt";
  
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
  
end bench1;

----------------------------------------
----------------------------------------
-------- Written by Kaiserhaz ----------
----------------------------------------
----------------------------------------