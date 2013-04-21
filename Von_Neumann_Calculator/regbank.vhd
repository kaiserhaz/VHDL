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
-- File 21 : Register bank
--
----
-------------------
----------------------------------------
----------------------------------------

-- Libraries

library ieee;
use ieee.numeric_bit.all;
use work.VNC_package.all;

-- Entity

entity banc_registre is
  generic(  tw, tr : time := 3 ns;
            fich : string := "bancreginit.txt"
          );
          
  port(     clk, rw, rst : in bit;
            datain : in word;
            d_addr, a_addr, b_addr : in sysregaddress;
            dataout_a, dataout_b : out word
      );     
end entity banc_registre;

-- Architecture

architecture behaviour of banc_registre is
  signal bancregs : defbancreg;
  begin
  
  P1:process(rst, clk)
    begin
  
    if rst='1' then
      bancregs <= init_banc_reg(fich); -- Initialisation ou reset
      dataout_a <= (others=>'0');
      dataout_b <= (others=>'0');
     
    elsif (clk='1' and clk'event and rw='1') then --  Ecriture en memoire
      if d_addr'event then
        bancregs(to_integer(d_addr)) <= datain after tw;
      elsif a_addr'event then
        bancregs(to_integer(a_addr)) <= datain after tw;
      else
        bancregs(to_integer(b_addr)) <= datain after tw;
      end if;
      
    elsif (clk='1' and clk'event and mw='0') then --  Lecture en memoire
      if d_addr'event then
        dataout <= memoires(to_integer(datain)) after tmemoire;
      
    end if;
    
  end process;
  
end behaviour;