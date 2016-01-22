--------------
-- Correlator testbench
--------------

library ieee;
use ieee.std_logic_1164.all;
use work.cdma_corr_package.all;

entity test_correlator is 
end  entity test_correlator;

--------------
-- Testplan
--------------

architecture bench of test_correlator is
 
  for UUT : cdma_correlator use entity work.cdma_correlator(hierarch);
  
  signal CLK_t, RST_t, EOC_t : std_logic := '0';
  signal SOC_t : std_logic := '1';
  signal SAMP_t : std_logic_vector(4 downto 0);
  signal CORR_t : std_logic_vector(9 downto 0);
  
  signal end_sim : boolean := false;

  constant cycle : time := 10 ns;

  type sample_a is array(1 to 30) of std_logic_vector(4 downto 0);
  constant samp_rom : sample_a := ("10001", "10111", "10101", "01100", "11000",
                                   "11001", "10110", "11110", "11010", "01111",
                                   "00010", "00011", "10011", "01011", "01110",
                                   "01011", "01010", "10011", "00001", "01001",
                                   "10001", "00111", "01000", "10110", "11010",
                                   "01111", "11110", "01101", "00000", "10101");

begin
    
  UUT:cdma_correlator port map (CLK_t, RST_t, SOC_t, SAMP_t, EOC_t, CORR_t);

  clock: process                               -- Clock process
  begin
    wait for cycle/2;
    CLK_t <= not CLK_t;
  end process;

  soc_p: process                               -- Start of conversion process
  begin

    while not end_sim loop
      SOC_t <= '0';
      wait for cycle;
      SOC_t <= '1';
      wait for 14*cycle;
    end loop;

    wait;

  end process;
      
  RST_t <= '0', '1' after 1 ns, '0' after 4501 ns;
  
  samp_p: process                              -- Sample process
    variable ii : natural;
  begin
    
    for ii in samp_rom'range loop
      SAMP_t <= samp_rom(ii);
      wait for 15*cycle;
    end loop;
    
    end_sim <= true;

    wait;

  end process;
      
end bench;
