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
-- File 214 : Instruction Register Testbench
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

entity test_ir is
end entity test_ir;

-- Architecture

architecture bench_ir of test_ir is 
  
  component instr_reg is
    generic(  tir : time := 2 ns
            );
            
    port(     clk : in bit;
              il_in : in bit;
              datain : in word;
              dr_out, sa_out, sb_out : out regaddress;
              op_out : out opcode
        );
  end component;
  
  for UUT : instr_reg use entity work.instr_reg(behaviour_ir);
  
  signal clk_t, il_in_t : bit;
  signal datain_t : word;
  signal dr_out_t, sa_out_t, sb_out_t : regaddress;
  signal op_out_t : opcode;
  
  begin

    UUT : instr_reg port map(clk_t, il_in_t, datain_t, dr_out_t, sa_out_t, sb_out_t, op_out_t);
    
    il_in_t <= '0', '1' after 40 ns;
    
    datain_t <= "0001111000000001", "0110110000000111" after 30 ns, "0000001111000100" after 50 ns, "1100101000000010" after 75 ns;
        
    process
      begin
        wait for 5 ns;
        clk_t <= not clk_t;
    end process;
  
end bench_ir;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------