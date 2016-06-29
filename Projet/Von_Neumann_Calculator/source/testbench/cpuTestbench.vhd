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
-- File 5 : CPU
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
  
  signal sysClk, cpuClk, rst, mw: bit;
  signal din, dout: word;
  signal addr: address;
  constant cycle: time := 20 ns;

begin

  UUT0:cpu port map (cpuClk, rst, din, dout, mw, addr);
  MEM0:memory port map (sysClk, rst, dout, din, mw, addr);

  rst <= '1', '0' after 1 ns;

  clkP:process(sysClk)
  begin
    if(falling_edge(sysClk)) then
      cpuClk <= not cpuClk;
    end if;
  end process;

  sysP:process
  begin
    wait for cycle/4;
    sysClk <= not sysClk;
  end process;

end bench;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------