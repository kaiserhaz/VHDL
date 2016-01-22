--------------
-- Controller testbench
--------------

library ieee;
use ieee.std_logic_1164.all;

entity test_controller is
end entity test_controller;

--------------
-- Testplan
--------------

architecture bench of test_controller is 
component controller is 
  port( SOC : in std_logic;                     -- Start convert
        CLK : in std_logic;                     -- Clock
        RST : in std_logic;                     -- Reset
        EOC : out std_logic;                    -- End of convert
        CTL : out std_logic_vector(10 downto 0) -- Control word
       );
 end component;
 
  for  UUT : controller use entity work.controller(bhv);

  signal SOC_t, CLK_t, RST_t, EOC_t : std_logic := '0';
  signal CTL_t : std_logic_vector(10 downto 0);

begin

  UUT:controller port map (SOC_t, CLK_t, RST_t, EOC_t, CTL_t);

  clock_p: process                             -- Clock process
  begin
    wait for 5 ns;
    CLK_t <= not CLK_t;
  end process;
    
    SOC_t <= '0', '1' after 5 ns, '0' after 9 ns, '1' after 160 ns;
    
    RST_t <= '0', '1' after 1 ns;
    
end bench;
