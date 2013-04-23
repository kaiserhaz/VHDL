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
-- File 00 : RAM package
--
----
-------------------
----------------------------------------
----------------------------------------

-- Libraries

library ieee;
use ieee.numeric_bit.all;
use std.textio.all;

-- RAM package

package mem_package is

  constant Nbbits : natural := 16;
  constant Nbadr : natural := 2**8;
  constant Nbctrl : natural := 21;
  
  subtype word is signed(Nbbits-1 downto 0);
  type defmem is array (natural range 255 downto 0) of word;
  
  impure function init_mem(fichier:string)return defmem;
  --function to_unsigned(arg:signed,size:natural)return unsigned;
  
  component memoire is
    generic(  tmemoire : time := 4 ns;
              fich : string := "meminit.txt"
            );
            
    port(     clk,rst : in bit;
              mw : in bit;
              datain : in signed(Nbbits-1 downto 0);
              adress : in unsigned (Nbbits-1 downto 0);
              dataout : out signed (Nbbits-1 downto 0)
        );
  end component;
  
end mem_package;

----------------------------------------
----------------------------------------
------- Written by Moustapha LO --------
----------------------------------------
----------------------------------------