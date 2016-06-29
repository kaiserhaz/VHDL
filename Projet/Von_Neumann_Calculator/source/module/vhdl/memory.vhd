----------------------------------------
----------------------------------------
-------------------
----
--
-- The Von Neumann Calculator
-- A VHDL Project
-- UniKL
-- 2015-2016
-- 
-- File 2 : Memory
--
----
-------------------
----------------------------------------
----------------------------------------

-- Librairies

library ieee;
use ieee.numeric_bit.all;
use work.vncPackage.all;

-- Entité

entity memory is
  port(     clk     : in bit;                 -- Clock
            rst     : in bit;                 -- Reset
            datain  : in word;                -- Data in
            dataout : out word;               -- Data out
            mw_n    : in bit;                 -- Memory write signal
            addrin  : in address              -- Address in
       );
end entity memory;

-- Architecture

architecture bhvMem of memory is
  
  signal memoires : defmem;
  
begin
  
  P1:process(rst, clk)
  begin
  
    if rst='1' then
	  memoires <= init_mem(meminitfile);       -- Initialisation ou reset
	  dataout <= X"0000" after 4 ns;
	
	elsif (rising_edge(clk) and mw_n='0') then -- Ecriture en memoire
	  memoires(to_integer(addrin)) <= datain after 4 ns;
          dataout <= X"0000" after 4 ns;
	
	elsif (rising_edge(clk) and mw_n='1') then -- Lecture en memoire
	  dataout <= memoires(to_integer(addrin)) after 4 ns;

	end if;
	
  end process;
    
end architecture bhvMem;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------