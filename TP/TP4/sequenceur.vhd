------------
-- Sequencer
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.composants.all;

entity sequenceur is
  generic( I : natural );
  port( M            : std_logic;
        B            : std_logic;
        A            : std_logic;
        GND          : std_logic;
        RST          : std_logic;
        D            : unsigned(0 to I-1);
        MARCHE       : out std_logic;
        SENS         : out std_logic);
end entity sequenceur;

------------
-- Sequencer architecture
------------

architecture hierarchique of sequenceur is

  signal DATA : unsigned(0 to 5) := "000000";
  signal MUX_OUT : std_logic;
  signal OU1, OU2 : std_logic;
  signal ADDR : unsigned(2 downto 0);

  for mux1 : mux use entity work.mux(dataflow);
  for cpt1 : compteur use entity work.compteur(algorithmic);
  for rom1 : rom use entity work.rom(dataflow);
  
begin
    
  mux1 : mux port map(M,B,A,GND,DATA(2 to 3),MUX_OUT);
  cpt1 : compteur generic map(N => I) port map(OU2,OU1,GND,D,ADDR);
  rom1 : rom port map(ADDR,DATA);
      
  b_ou1:block                                  -- OR block for reset
  begin
    OU1 <= (DATA(0) or RST);
  end block;
    
  b_ou2:block                                  -- OR block for mux out
  begin
    OU2 <= (DATA(1) or MUX_OUT);
  end block;
    
  MARCHE <= DATA(4);
  SENS <= DATA(5);
      
end architecture hierarchique;

------------
-- Sequencer architecture 2
------------

architecture hierarchique2 of sequenceur is

  signal DATA : unsigned(0 to 5) := "000000";
  signal MUX_OUT : std_logic;
  signal OU1, OU2 : std_logic;
  signal ADDR : unsigned(2 downto 0);

  for mux1 : mux use entity work.mux(dataflow);
  for cpt1 : compteur use entity work.compteur(algorithmic2);
  for rom1 : rom use entity work.rom(dataflow);
  
begin
    
  mux1 : mux port map(M,B,A,GND,DATA(2 to 3),MUX_OUT);
  cpt1 : compteur generic map(N => I) port map(OU2,OU1,GND,D,ADDR);
  rom1 : rom port map(ADDR,DATA);
      
  b_ou1:block                                  -- OR block for reset
  begin
    OU1 <= (DATA(0) or RST);
  end block;
    
  b_ou2:block                                  -- OR block for mux out
  begin
    OU2 <= (DATA(1) or MUX_OUT);
  end block;
    
  MARCHE <= DATA(4);
  SENS <= DATA(5);
      
end architecture hierarchique2;
