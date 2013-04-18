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
-- File 10 : RAM
--
----
-------------------
----------------------------------------
----------------------------------------

--Librairies

library ieee;
use ieee.numeric_bit.all;
use work.mem_package.all;

-- Entité

entity memoire is
  generic(  tmemoire : time := 4 ns;
            fich : string := "meminit.txt"
          );
            
  port(     clk,rst : in bit;
            mw : in bit;
            datain : in signed(Nbbits-1 downto 0);
            adress : in unsigned (Nbbits-1 downto 0);
            dataout : out signed (Nbbits-1 downto 0)
       );
end memoire;

-- Architecture

architecture behaviour of memoire is 
  signal memoires : defmem;
  begin
  
  P1:process(rst,clk)
    begin
  
    if rst='1' then
      memoires <= init_mem(fich); -- Initialisation ou reset
      dataout <= (others=>'0');
      
    elsif (clk='1' and clk'event and mw='1') then --  Ecriture en memoire
      memoires(to_integer(adress)) <= datain after tmemoire;
      
    elsif (clk='1' and clk'event and mw='0') then --  Lecture en memoire
      dataout <= memoires(to_integer(datain)) after tmemoire;
      
    end if;
    
  end process;
  
end behaviour;

----------------------------------------
----------------------------------------
------- Written by Moustapha LO --------
----------------------------------------
----------------------------------------