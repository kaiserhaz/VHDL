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
-- File 00 : VNC package
--
----
-------------------
----------------------------------------
----------------------------------------

-- Libraries

library ieee;
use ieee.numeric_bit.all;
use std.textio.all;
use work.VNC_package.all;

-- Entity

entity prog_counter is
  generic(  tpc : time := 2 ns
          );
          
  port(     clk : in bit;
            sa_in, addr_extended_in : in address;
            ps_in : in bit_vector(1 downto 0);
            pc_out : out address
      );
end entity prog_counter;

-- Architecture

architecture behaviour_pc of prog_counter is
  begin
    process(clk)
      variable pc_count : address := (others=>'0');
      begin
        case ps_in is
          when "00" => null;
          when "01" => pc_count := pc_count + 1;
          when "10" => pc_count := pc_count + addr_extended_in;
          when "11" => pc_count := sa_in;
        end case;
        
        pc_out <= pc_count after tpc;
    end process;
end behaviour_pc;