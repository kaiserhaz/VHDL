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
-- File 27 : Instruction Register
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

entity instr_reg is
  generic(  tir : time := 2 ns
          );
          
  port(     clk : in bit;
            il_in : in bit;
            datain : in word;
            dr_out, sa_out, sb_out : out regaddress;
            op_out : out opcode
      );
end entity instr_reg;

-- Architecture

architecture behaviour_ir of instr_reg is
  begin
    process(clk)
      begin
      if clk = '1' and il_in = '1' then
        op_out <= unsigned(datain(datain'left downto datain'left-Nbopcode+1)) after tir;
        dr_out <= unsigned(datain(datain'left-Nbopcode downto datain'left-Nbopcode-2)) after tir;
        sa_out <= unsigned(datain(datain'left-Nbopcode-3 downto datain'left-Nbopcode-5)) after tir;
        sb_out <= unsigned(datain(datain'right+Nbregaddr-1 downto 0)) after tir;
      end if;
    end process;
end behaviour_ir;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------