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
-- File 1 : VNC Package
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

package vncPackage is

  constant Nbbits : natural := 16;          -- Word length
  constant Nbmemcase : natural := 65536;    -- Memory size
  constant Nbbancregcase : natural := 16;   -- Register file size
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
--  subtype lword is signed(Nbbits downto 0);              -- Subtype for overflow and carry evaluation
  
  type defbancreg is array (natural range Nbbancregcase-1 downto 0) of word;  -- Register file type
  type defmem is array (natural range (Nbmemcase/1)-1 downto 0) of word;      -- Memory type
  
  constant meminitfile : string := "boot.txt";           -- Stimulus file
  constant rfinitfile  : string := "preload.txt";
  
  constant startAdr : address := X"1FFF";                -- Start address

  -- Helper function
  
  impure function init_mem(fn:string) return defmem;     -- Init function for memory
  impure function initBancReg(fn:string) return defbancreg;

  -- Datapath component
  
  component datapath is
    generic(  sAdr      : address := startAdr
        );
    port(     clk       : in bit;
              rst       : in bit;
              ctrlword  : in controlword;
              datain    : in word;
              dataout   : out word;
              addrout   : out address;
              opcodeout : out opcode;
              n         : out bit;
              z         : out bit
--              c         : out bit;
--              v         : out bit
        );
  end component;
  
  -- Control unit component
  
  component controlUnit is
    port(   clk         : in bit;
            rst         : in bit;
            n           : in bit;
            z           : in bit;
--            c           : in bit;
--            v           : in bit;
            opcodein    : in opcode;
            ctrlwordout : out controlword
        );
  end component;
  
  -- CPU component
  
  component cpu is
    port(   clk     : in bit;
            rst     : in bit;
            datain  : in word;
            dataout : out word;
            mw      : out bit;
            addrout : out address
        );
  end component;
  
  -- Memory component
  
  component memory is
    port(   clk     : in bit;
            rst     : in bit;
            datain  : in word;
            dataout : out word;
            mw_n    : in bit;
            addrin  : in address
       );
  end component;
  
end vncPackage;

-- VNC package body

package body vncPackage is

  -- Register file init

  -- Init function for regfile
  impure function initBancReg(fn:string) return defbancreg is

    file fd : text;
    variable tBancReg : defbancreg;
    variable data : word;
    variable li : line;
    variable ii : natural;

  begin
    
    file_open(fd, fn, READ_MODE);
    ii := 16;
    
    while not endfile(fd) loop
      readline(fd,li);
      if li'length>0 and li(1)/='-' then
        read(li,data);
        tBancReg(ii-1) := signed(data);
        ii := ii - 1;
      end if;      
    
    end loop;

    file_close(fd);

    return tBancReg;

  end initBancReg;  

  -- Memory init via file

  impure function init_mem(fn:string) return defmem is

    file fd : text;
    variable mem2 : defmem := (others=>X"0000");
    variable data : word;
    variable li : line;
    variable ii : natural;

  begin
    
    file_open(fd, fn, READ_MODE);

    while not endfile(fd) loop
      readline(fd,li);
      if li'length>0 and li(1)/='-' then
        read(li,ii);
        read(li,data);
	mem2(ii) := signed(data);
        
      end if;

    end loop;

    file_close(fd);

    return mem2;
	
  end init_mem;
  
end package body;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------