------------
-- Memory controller testbench
------------

library ieee;
use ieee.std_logic_1164.all;

entity test is
end entity test;

------------
-- Testbench architecture
------------

architecture bench of test is
  component mem_ctrl is
    port (READY      : in std_logic;   -- Ready signal
          BURST      : in std_logic;   -- Burst signal
          RESET      : in std_logic;   -- Reset signal
          READ_WRITE : in std_logic;   -- Read/write signal
          H          : in std_logic;   -- Clock signal
          OE         : out std_logic;  -- Output enable signal
          WE         : out std_logic;  -- Write enable signal
          ADDR       : out std_logic_vector(1 downto 0)); -- Burst address
  end component;
  
  for UUT : mem_ctrl use entity work.mem_ctrl(fsm_moore);

  signal ready, burst, reset, read_write, oe, we : std_logic;
  signal h : std_logic := '0';
  signal addr : std_logic_vector(1 downto 0);

  begin
    
    UUT : mem_ctrl port map (ready, burst, reset, read_write, h, oe, we, addr);

    reset <= '0', '1' after 20 ns,
             '0' after 80 ns, '1' after 100 ns,
             '0' after 160 ns, '1' after 180 ns,
             '0' after 350 ns;

    read_write <= '1', '0' after 100 ns, '1' after 180 ns;

    burst <= '0', '1' after 180 ns, '0' after 350 ns;

    ready <= '0',
             '1' after 20 ns,
             '0' after 270 ns,
             '1' after 300 ns,
             '0' after 350 ns;
    
    clock:process                              -- Clock process
    begin
      wait for 10 ns;
      h <= not h;
    end process;

end architecture bench;
