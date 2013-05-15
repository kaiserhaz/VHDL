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
-- File 00 : VNC Package
--
----
-------------------
----------------------------------------
----------------------------------------

-- Libraries

library ieee;
use ieee.numeric_bit.all;
use std.textio.all;

-- VNC package

package VNC_package is

  constant Nbbits : natural := 16;          -- Word length
  constant Nbmemcase : natural := 65536;    -- Memory size
  constant Nbbancregcase : natural := 16;   -- Register bank size
  constant Nbctrl : natural := 24;          -- Control word length
  constant Nbregaddr : natural := 3;        -- User Register address length
  constant Nbopcode : natural := 7;         -- Opcode word length
  constant Nbfscode : natural := 4;         -- FS code word length
  
  subtype word is signed(Nbbits-1 downto 0);             -- Subtype word
  subtype controlword is unsigned(Nbctrl-1 downto 0);    -- Subtype control word
  subtype address is unsigned(Nbbits-1 downto 0);        -- Subtype address
  subtype regaddress is unsigned(Nbregaddr-1 downto 0);  -- Subtype user register address
  subtype sysregaddress is unsigned(Nbregaddr downto 0); -- Subtype system register address
  subtype opcode is unsigned(Nbopcode-1 downto 0);       -- Subtype opcode
  subtype fscode is unsigned(Nbfscode-1 downto 0);       -- Subtype fscode
  
  type defmem is array (natural range (Nbmemcase/256)-1 downto 0) of word;    -- Type RAM
  type defbancreg is array (natural range Nbbancregcase-1 downto 0) of word;  -- Type Register Bank
  
  impure function init_mem(fichier:string)return defmem;          -- Init function of 8-bit depth for the RAM
                                                                  --  delete /256 for full depth
  impure function init_banc_reg(fichier:string)return defbancreg; -- Init function for the register bank
  --function to_unsigned(arg:signed,size:natural)return unsigned;

  -- RAM component

  component memoire is
    generic(  tmemoire : time := 4 ns;
              fich : string := "meminit.txt"
            );
            
    port(     clk, rst : in bit;
              mw : in bit;
              datain : in word;
              adress : in address;
              dataout : out word
        );
  end component;
  
  -- Datapath component
  
  component datapath is
    generic(  tw, tr : time := 3 ns;
              tpc, tir : time := 2 ns;
              tmux, tind : time := 1 ns;
              tuf : time := 4 ns;
              fich : string := "datapathinit.txt"
            );
         
    port(     clk, rst : in bit;
              ctrlword : in controlword;
              datain : in word;
              dataout : out word;
              addrout : out address;
              opcodeout : out opcode;
              n, z, c, v : out bit
         );
  end component;
  
  component unite_controle is
    generic(  tmem : time := 3 ns;
              tcalc : time := 2 ns
            );
         
    port(   clk, rst : in bit;
            opcodein : in opcode;
            n, z, c, v : in bit;
            ctrlwordout : out controlword
         );
  end component;
  
  -- ### Intermediate test component, just to see how things work out ###
  -- ### Not physically implemented in the datapath, but    behaviour ###
  -- ###  is similar in the datapath itself                           ###
  
--  -- Register bank component
  
--  component banc_registre is
--    generic(  tw, tr : time := 3 ns;
--              fich : string := "bancreginit.txt"
--            );
--            
--    port(     clk, rw, rst : in bit;
--              datain : in word;
--              d_addr, a_addr, b_addr : in sysregaddress;
--              dataout_a, dataout_b : out word
--        );     
--  end component;
--  
--  -- Functional unit component
--  
--  component unit_fonc is
--    generic(  tuf : time := 4 ns;
--              tind : time := 1 ns
--            );
--            
--    port(     datain_a, datain_b : in word;
--              fs : in fscode;
--              n, z, v, c : out bit;
--              f_out : out word
--        );
--  end component;
--  
--  -- Register Address Logic component
--  
--  component reg_addr_logic is
--    port(     dr_in, sa_in, sb_in : in regaddress;
--              dx_in, ax_in, bx_in : in sysregaddress;
--              da_out, aa_out, ba_out : out sysregaddress
--        );
--  end component;
--  
--  -- Zero-fill component
--  
--  component zero_fill is
--    port(     sb_in : in regaddress;
--              sb_filled_out : out word
--        );
--  end component;
--  
--  -- Address extender component
--  
--  component addr_extender is
--    port(     dr_in, sb_in : in regaddress;
--              addr_extended_out : out address
--        );
--  end component;
--  
--  -- Program counter component
--  
--  component prog_counter is
--    generic(  tpc : time := 2 ns
--            );
--            
--    port(     clk : in bit;
--              sa_in, addr_extended_in : in address;
--              ps_in : in bit_vector(1 downto 0);
--              pc_out : out address
--        );
--  end component;
--  
--  -- Instruction register component
--  
--  component instr_reg is
--    generic(  tir : time := 2 ns
--            );
--            
--    port(     clk : in bit;
--              il_in : in bit;
--              datain : in word;
--              dr_out, sa_out, sb_out : out regaddress;
--              op_out : out opcode
--        );
--  end component;
  
end VNC_package;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------