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
-- File 21 : Register Bank
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

architecture behaviour_br of banc_registre is
  signal bancregs : defbancreg;

-- Method to correct for signal non-detection since the data is stored according to the address that changes
--  state during the rising edge, and not before. The address needs to be present and the most recently
--  changed.

--  type sysreg_bundle is array (natural range <>) of sysregaddress;
--  
--  function sig_event_time_compare(signal comp_array : in sysreg_bundle)return natural is
--  variable timestamp : time := 1 ms;
--  variable signalindex : natural := 0;
--  begin
--    for i in comp_array'range loop
--      if comp_array(i)'last_event < timestamp then
--        timestamp := comp_array(i)'last_event;
--        signalindex := i;
--      end if;
--    end loop;
--    return signalindex;
--  end function;
  
  begin
  
  process(rst, clk)
    begin
  
    if rst='1' then
      bancregs <= init_banc_reg(fich); -- Initialisation ou reset
      dataout_a <= (others=>'0');
      dataout_b <= (others=>'0');
     
    elsif (clk='1' and clk'event and rw='1') then --  Ecriture en memoire
      bancregs(to_integer(d_addr)) <= datain after tw;
      
    elsif (clk='1' and clk'event and rw='0') then --  Lecture en memoire
      if a_addr'last_event < b_addr'last_event then
        dataout_a <= bancregs(to_integer(a_addr)) after tr;
      else
        dataout_b <= bancregs(to_integer(b_addr)) after tr;
      end if;
      
    end if;
  end process;
end behaviour_br;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------