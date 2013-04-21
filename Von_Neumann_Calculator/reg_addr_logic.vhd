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

entity reg_addr_logic is
  port(     dr_in, sa_in, sb_in : in regaddress;
            dx_in, ax_in, bx_in : in sysregaddress;
            da_out, aa_out, ba_out : out sysregaddress
      );
end entity reg_addr_logic;

-- Architecture

architecture behaviour_ral of reg_addr_logic is
  begin
    process(dx_in, ax_in, bx_in)
      variable interm_out : sysregaddress := (others=>'0');
      begin
        if dx_in(dx_in'left) = '1' then
          da_out <= dx_in;
        else
          interm_out(dr_in'range) := dr_in;
          da_out <= interm_out;
        end if;
        
        if ax_in(ax_in'left) = '1' then
          aa_out <= ax_in;
        else
          interm_out(sa_in'range) := sa_in;
          aa_out <= interm_out;
        end if;
        
        if bx_in(bx_in'left) = '1' then
          ba_out <= bx_in;
        else
          interm_out(sb_in'range) := sb_in;
          ba_out <= interm_out;
        end if;
    end process;
end behaviour_ral;