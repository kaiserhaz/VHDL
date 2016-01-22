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
-- File 40 : CPU
--
----
-------------------
----------------------------------------
----------------------------------------

--Librairies

library ieee;
use ieee.numeric_bit.all;
use work.VNC_package.all;

-- Entité

entity cpu is
  port(     clk, rst : in bit;
            datain : in word;
            mw : out bit;
            addrout : out address;
            dataout : out word
       );
end entity cpu;

-- Architecture

architecture rtl_cpu of cpu is
  
  for control_unit : unite_controle use entity work.unite_controle(behaviour_uc);
  for datapath_unit : datapath use entity work.datapath(behaviour_datapath);
  
  signal n_trans, z_trans, c_trans, v_trans : bit;
  signal ctrlword_trans : controlword;
  signal opcode_trans : opcode;
  
  begin
    
    control_unit : unite_controle port map (clk, rst, n_trans, z_trans, c_trans, v_trans, opcode_trans, ctrlword_trans);
    datapath_unit : datapath port map (clk, rst, ctrlword_trans, datain, dataout, addrout, opcode_trans, n_trans, z_trans, c_trans, v_trans);
      
    mw <= ctrlword_trans(0);
    
end architecture rtl_cpu;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------