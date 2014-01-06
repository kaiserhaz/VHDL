library ieee;
use ieee.std_logic_1164.all;

entity test_rs232_controller is
end test_rs232_controller;

architecture beh of test_rs232_controller is

  component rs232_controller is
   port( h : in std_logic;
        rst : in std_logic;
        dtr : in std_logic;
        rts : in std_logic;
        txd : in std_logic;
        m_a : in std_logic;
        no : in std_logic_vector(15 downto 0);
        tb : in std_logic_vector(1 downto 0);
        dsr : out std_logic;
        cts : out std_logic;
        cd : out std_logic;
       -- ri : out std_logic;
        rxd : out std_logic;
        amp : out std_logic;
        mode : out std_logic_vector(1 downto 0);
        freq : out std_logic_vector(3 downto 0) );
        
  end component;

  signal h, rst, dtr, rts, txd, m_a, dsr, cts, cd, rxd, amp : std_logic := '0';
  signal no : std_logic_vector(15 downto 0);
  signal tb, mode : std_logic_vector(1 downto 0);
  signal freq : std_logic_vector (3 downto 0);
  
  for UUT: rs232_controller use entity work.rs232_controller(behaviour);
  
  begin
    UUT: rs232_controller port map(h, rst, dtr, rts, txd, m_a, no, tb, dsr, cts, cd, rxd, amp, mode, freq);
  
    process
      begin
        wait for  500 ns;
        h <= not(h);
    end process;

    rst <= '1', '0' after 15 ns;
    dtr <= '1' after 1 us, '0' after 140375 us;
    rts <= '1' after 126000 us, '0' after 140375 us;
    no <= "0000011000100101";
    txd <= '0' after 126000 us,
           '1' after 127250 us,
           '0' after 128500 us,
           '1' after 129750 us,
           '0' after 131000 us,
           '1' after 132250 us,
           '1' after 133500 us,
           '0' after 134750 us,
           '1' after 136000 us,
           '1' after 137250 us,
           '1' after 138500 us,
           '1' after 139750 us;

end beh;

