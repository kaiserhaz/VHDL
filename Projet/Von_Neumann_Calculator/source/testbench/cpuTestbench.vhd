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
-- File 5 : CPU Testbench
--
----
-------------------
----------------------------------------
----------------------------------------

-- Librairies

library ieee;
use ieee.numeric_bit.all;
use work.vncPackage.all;

-- Entity

entity cpuTestbench is
end entity cpuTestbench;

-- Architecture

architecture bench of cpuTestbench is

  for UUT0:cpu use entity work.cpu(harchCpu);
  for MEM0:memory use entity work.memory(bhvMem);
  
  signal sysClk, rst, mw: bit;
  signal din, dout: word;
  signal addr: address;
  constant cycle: time := 14 ns;

begin

  UUT0:cpu port map (sysClk, rst, din, dout, mw, addr);
  MEM0:memory port map (sysClk, rst, dout, din, mw, addr);

  rst <= '1', '0' after 1 ns;

  sysP:process
  begin
    wait for cycle/2;
    sysClk <= not sysClk;
  end process;

end bench;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------