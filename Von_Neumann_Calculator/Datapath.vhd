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
-- File 20 : Datapath
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

entity datapath is
  generic(  tw, tr : time := 3 ns;                -- Temps lecture/écriture
            tpc, tir : time := 2 ns;              -- Délai d'opération sur PC ou IR
            tmux, tind : time := 1 ns;            -- Délai mux et indicateur d'état
            tuf : time := 4 ns;                   -- Délai de l'unité fonctionnelle
            fich : string := "datapathinit.txt"   -- Fichier d'initialisation
          );
       
  port(     clk, rst : in bit;
            ctrlword : in controlword;
            datain : in word;
            dataout : out word;
            addrout : out address;
            opcodeout : out opcode;
            n, z, c, v : out bit
       );
end entity datapath;

-- Architecture

architecture behaviour_datapath of datapath is 
  
  signal bancregs : defbancreg;
  signal zf_out : word;
  signal aext_out : address;
  signal uf_out : word;
  signal pc_out : address;
  signal ir_out : address;
  signal rald_out, rala_out, ralb_out : sysregaddress;
  signal datab_out : word;
  signal bus_a : address;
  signal bus_b, bus_d : word;
  
  --  subtype lword is signed(Nbbits downto 0); -- Type for overflow and carry evaluation
  
  alias il_in : bit is ctrlword(23);
  alias ps_in : unsigned is ctrlword(22 downto 21);
  alias dx_in : sysregaddress is ctrlword(20 downto 17);
  alias ax_in : sysregaddress is ctrlword(16 downto 13);
  alias bx_in : sysregaddress is ctrlword(12 downto 9);
  alias mb_in : bit is ctrlword(8);
  alias fs_in : fscode is ctrlword(7 downto 4);
  alias md_in : bit is ctrlword(3);
  alias rw_in : bit is ctrlword(2);
  alias mm_in : bit is ctrlword(1);
  alias mw_in : bit is ctrlword(0);
  alias op_out : opcode is ir_out(15 downto 9);
  alias dr_in : regaddress is ir_out(8 downto 6);
  alias sa_in : regaddress is ir_out(5 downto 3);
  alias sb_in : regaddress is ir_out(2 downto 0);  
  
  begin
  
-- Synchronous process
  
  process(rst, clk)
    variable pc_count : address := (others=>'0');
    begin
  
    if rst='1' then
      bancregs <= init_banc_reg(fich); -- Initialisation ou reset
      bus_a <= (others=>'0');
      datab_out <= (others=>'0');
     
    elsif (clk='1' and clk'event and rw_in='1') then --  Ecriture en memoire
      bancregs(to_integer(rald_out)) <= bus_d after tw;
      
    elsif (clk='1' and clk'event and rw_in='0') then --  Lecture en memoire
      if rala_out'last_event < ralb_out'last_event then
        bus_a <= unsigned(bancregs(to_integer(rala_out))) after tr;
      else
        datab_out <= bancregs(to_integer(ralb_out)) after tr;
      end if;
      
    end if;
    
    if clk = '1' and il_in = '1' then
      op_out <= unsigned(datain(datain'left downto datain'left-Nbopcode+1)) after tir;
      dr_in <= unsigned(datain(datain'left-Nbopcode downto datain'left-Nbopcode-2)) after tir;
      sa_in <= unsigned(datain(datain'left-Nbopcode-3 downto datain'left-Nbopcode-5)) after tir;
      sb_in <= unsigned(datain(datain'right+Nbregaddr-1 downto 0)) after tir;
    end if;
    
    if clk = '1' then
      case ps_in is
        when "00" => null;
        when "01" => pc_count := pc_count + 1;
        when "10" => pc_count := pc_count + aext_out;
        when "11" => pc_count := bus_a;
      end case;
    end if;
    
    pc_out <= pc_count after tpc;
    
  end process;
    
-- Functional unit process
    
  process(fs_in)
    variable interm_f : word;
    begin
      case fs_in is
        when "0000" => interm_f := signed(bus_a);
        when "0001" => interm_f := signed(bus_a) + 1;
        when "0010" => interm_f := signed(bus_a) + bus_b;
        when "0101" => interm_f := signed(bus_a) + not bus_b + 1;
        when "0110" => interm_f := signed(bus_a) - 1;
        when "1000" => interm_f := signed(bus_a) and bus_b;
        when "1001" => interm_f := signed(bus_a) or bus_b;
        when "1010" => interm_f := signed(bus_a) xor bus_b;
        when "1011" => interm_f := not signed(bus_a);
        when "1100" => interm_f := bus_b;
        when "1101" => interm_f := bus_b srl 1;
        when "1110" => interm_f := bus_b sll 1;
        when others => null;
      end case;
      
      if interm_f(interm_f'left - 1) = '1' then
        n <= '1' after tind;
      else
        n <= '0' after tind;
      end if;
        
      if interm_f = 0 then
        z <= '1' after tind;
      else
        z <= '0' after tind;
      end if;
      
--        if interm_f > -- Carry and Overflow cases
      
      uf_out <= interm_f after tuf;
      
  end process;

-- Zero-fill process

  process(sb_in)
    variable interm_addr : address := (others=>'0');
    begin
      interm_addr(sb_in'range) := sb_in;
      zf_out <= signed(interm_addr);
  end process;
  
-- Address extender process
  
  process(dr_in, sb_in)
    variable interm_addr : address;
    begin
      if dr_in(dr_in'left) = '1' then
        interm_addr := (others=>'1');
      else
        interm_addr := (others=>'0');
      end if;
      
      interm_addr(dr_in'left + sb_in'left + 1 downto 0) := dr_in & sb_in;
      
      aext_out <= interm_addr;
  end process;
    
-- Register Address Logic process

  process(dx_in, ax_in, bx_in, dr_in, sa_in, sb_in)
    variable interm_out : sysregaddress := (others=>'0');
    begin
      if dx_in(dx_in'left) = '1' then
        rald_out <= dx_in;
      else
        interm_out(dr_in'range) := dr_in;
        rald_out <= interm_out;
      end if;
      
      if ax_in(ax_in'left) = '1' then
        rala_out <= ax_in;
      else
        interm_out(sa_in'range) := sa_in;
        rala_out <= interm_out;
      end if;
      
      if bx_in(bx_in'left) = '1' then
        ralb_out <= bx_in;
      else
        interm_out(sb_in'range) := sb_in;
        ralb_out <= interm_out;
      end if;
  end process;

-- Muxes

  with mb_in select
    bus_b <= datab_out after tmux when '0',
             zf_out after tmux when '1',
             (others=>'0') when others;
    
  with mm_in select
    addrout <= pc_out after tmux when '0',
               bus_a after tmux when '1',
               (others=>'0') when others;
    
  with md_in select
    bus_d <= uf_out after tmux when '0',
             datain after tmux when '1',
             (others=>'0') when others;
    
end behaviour_datapath;

----------------------------------------
----------------------------------------
------------- Written by ---------------
------------ Moustapha LO --------------
----------------- & --------------------
------------- KaiserHaz ----------------
----------------------------------------
----------------------------------------