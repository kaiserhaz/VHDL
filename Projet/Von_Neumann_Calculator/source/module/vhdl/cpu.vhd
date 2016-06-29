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

use work.vncPackage.all;

-- Entité

entity cpu is
  port(     clk     : in bit;                 -- Clock
            rst     : in bit;                 -- Reset
            datain  : in word;                -- Data in
            dataout : out word;               -- Data out
            mw      : out bit;                -- Memory write signal
            addrout : out address             -- Address out
       );
end entity cpu;

-- Architecture

architecture harchCpu of cpu is
  
  for controlU : controlUnit use entity work.controlunit(bhvCu);
  for datapathU : datapath use entity work.datapath(bhvDatapath);
  
  signal nTrans,
         zTrans
         --cTrans,
         --vTrans
         : bit;
  signal ctrlwordTrans : controlword;
  signal opcodeTrans : opcode;
  
  begin
    
--    controlU : controlUnit port map (clk, rst, nTrans, zTrans, cTrans, vTrans, opcodeTrans, ctrlwordTrans);
    controlU : controlUnit port map (clk, rst, nTrans, zTrans, opcodeTrans, ctrlwordTrans);
--    datapathU : datapath port map (clk, rst, ctrlwordTrans, datain, dataout, addrout, opcodeTrans, nTrans, zTrans, cTrans, vTrans);
    datapathU : datapath port map (clk, rst, ctrlwordTrans, datain, dataout, addrout, opcodeTrans, nTrans, zTrans);
    
    mw <= not ctrlwordTrans(0);
    
end architecture harchCpu;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------