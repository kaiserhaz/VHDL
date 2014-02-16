library ieee;
use ieee.std_logic_1164.all;

entity test_modem_controller is
end test_modem_controller;

architecture behaviour of test_modem_controller is

  component modem_controller is
   port( h : in std_logic;
        rst : in std_logic;
        dtr : in std_logic;
        rts : in std_logic;
        txd : in std_logic;
        m_a : in std_logic;
        no : in std_logic_vector(15 downto 0);
        tb : in std_logic_vector(1 downto 0);
       -- dsr : out std_logic;
       -- cts : out std_logic;
       -- cd : out std_logic;
       -- ri : out std_logic;
       -- rxd : out std_logic;
        vs : out std_logic_vector(9 downto 0) );
        
  end component;

  signal h, rst, dtr, rts, txd, m_a, dsr, cts, cd, rxd : std_logic := '0';
  signal no : std_logic_vector(15 downto 0);
  signal tb : std_logic_vector(1 downto 0);
  signal vs : std_logic_vector (9 downto 0);
  
  for UUT: modem_controller use entity work.modem_controller(Structure);
  
  begin
    UUT: modem_controller port map(h, rst, dtr, rts, txd, m_a, no, tb, vs);
  
    process
      begin
        wait for 5 ns;
        h <= not(h);
    end process;

    rst <= '1', '0' after 15 ns;
    
    no <= "0111100101000101", "0111000001000101" after 141000 us;
    
    -- Transmission @ 800 bps

--    tb <= "11";
--
--    dtr <= '1' after 1 us, '0' after 141000 us, '1' after 142000 us;
--    rts <= '1' after 126000 us, '0' after 141000 us;
--    m_a <= '1' after 1 us, '0' after 141000 us;
--    
--    txd <= '1',
--           '0' after 126000 us,
--           '1' after 127250 us,
--           '0' after 128500 us,
--           '1' after 129750 us,
--           '0' after 131000 us,
--           '1' after 132250 us,
--           '1' after 133500 us,
--           '0' after 134750 us,
--           '1' after 136000 us,
--           '1' after 137250 us,
--           '1' after 138500 us,
--           '1' after 139750 us;
    
    -- Transmission @ 400 bps
    
--    tb <= "10";
--    
--    dtr <= '1' after 1 us, '0' after 156000 us, '1' after 157000 us;
--    rts <= '1' after 126000 us, '0' after 156000 us;
--    m_a <= '1' after 1 us, '0' after 156000 us;
--    
--    txd <= '1',
--           '0' after 126000 us,
--           '1' after 128500 us,
--           '0' after 131000 us,
--           '1' after 133500 us,
--           '0' after 136000 us,
--           '1' after 138500 us,
--           '1' after 141000 us,
--           '0' after 143500 us,
--           '1' after 146000 us,
--           '1' after 148500 us,
--           '1' after 151000 us,
--           '1' after 153500 us;
    
    -- Transmission @ 200 bps
    
--    tb <= "01";
--    
--    dtr <= '1' after 1 us, '0' after 186000 us, '1' after 187000 us;
--    rts <= '1' after 126000 us, '0' after 186000 us;
--    m_a <= '1' after 1 us, '0' after 186000 us;
--    
--    txd <= '1',
--           '0' after 126000 us,
--           '1' after 131000 us,
--           '0' after 136000 us,
--           '1' after 141000 us,
--           '0' after 146000 us,
--           '1' after 151000 us,
--           '1' after 156000 us,
--           '0' after 161000 us,
--           '1' after 166000 us,
--           '1' after 171000 us,
--           '1' after 176000 us,
--           '1' after 181000 us;
    
    -- Transmission @ 100 bps
    
--    tb <= "00";
--    
--    dtr <= '1' after 1 us, '0' after 246000 us, '1' after 247000 us;
--    rts <= '1' after 126000 us, '0' after 246000 us;
--    m_a <= '1' after 1 us, '0' after 246000 us;
--    
--    txd <= '1',
--           '0' after 126000 us,
--           '1' after 136000 us,
--           '0' after 146000 us,
--           '1' after 156000 us,
--           '0' after 166000 us,
--           '1' after 176000 us,
--           '1' after 186000 us,
--           '0' after 196000 us,
--           '1' after 206000 us,
--           '1' after 216000 us,
--           '1' after 226000 us,
--           '1' after 236000 us;

    -- Transmission @ 800 & 100 bps

    tb <= "11", "00" after 141000 us;

    dtr <= '1' after 1 us, '0' after 141000 us, '1' after 142000 us, '0' after 365000 us;
    rts <= '1' after 126000 us, '0' after 141000 us, '1' after 245000 us, '0' after 365000 us;
    m_a <= '1' after 1 us, '0' after 141000 us, '1' after 142000 us, '0' after 365000 us;
    
    txd <= '1', '0' after 126000 us, '1' after 127250 us, '0' after 128500 us, '1' after 129750 us,
                '0' after 131000 us, '1' after 132250 us, '1' after 133500 us, '0' after 134750 us,
                '1' after 136000 us, '1' after 137250 us, '1' after 138500 us, '1' after 139750 us,
                '0' after 245000 us, '1' after 255000 us, '0' after 265000 us, '1' after 275000 us,
                '0' after 285000 us, '1' after 295000 us, '1' after 305000 us, '0' after 315000 us,
                '1' after 325000 us, '1' after 335000 us, '1' after 345000 us, '1' after 355000 us;

    -- Continuous transmission @ 800 bps

--    tb <= "11";
--
--    dtr <= '1' after 1 us;
--    rts <= '1' after 126000 us;
--    m_a <= '1' after 1 us;
--    
--    txd <= '1', '0' after 126000 us, '1' after 127250 us, '0' after 128500 us, '1' after 129750 us,
--                '0' after 131000 us, '1' after 132250 us, '1' after 133500 us, '0' after 134750 us,
--                '1' after 136000 us, '1' after 137250 us, '1' after 138500 us, '1' after 139750 us,
--                '0' after 245000 us, '1' after 255000 us, '0' after 265000 us, '1' after 275000 us,
--                '0' after 285000 us, '1' after 295000 us, '1' after 305000 us, '0' after 315000 us,
--                '1' after 325000 us, '1' after 335000 us, '1' after 345000 us, '1' after 355000 us;

end behaviour;

