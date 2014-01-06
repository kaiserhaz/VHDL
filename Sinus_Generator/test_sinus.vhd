library ieee;
use ieee.std_logic_1164.all;

entity test is
end test;

architecture beh of test is

  component sinus is
  port(rst,h,amp:std_logic;
    freq : std_logic_vector (3 downto 0);
    mode :std_logic_vector(1 downto 0);
    Vs:out std_logic_vector(9 downto 0));
  end component;

  signal rst,h,amp : std_logic := '0';
  signal mode : std_logic_vector (1 downto 0);
  signal Vs : std_logic_vector(9 downto 0);
  signal freq :std_logic_vector (3 downto 0);

  begin
    
    UUT: sinus port map(rst,h,amp,freq,mode,Vs);

    process
      begin
        wait for  500 ns; -- horloge fixé à 1 us
        h<=not(h);
    end process;

    rst <= '1', '0' after 15 ns;
    --amp est fixée par multiple de 1250 us (1/800 bits/s)
    amp <= '1' after  1250 us, '0' after 2*1250 us,'1' after  3*1250 us, '0' after 4*1250 us;
    --C5 <= '1' after 40 ns, '0' after 60 ns,'1' after 80 ns, '0' after 120 ns;
    mode <="01" after 5 ns,"00" after 40 us, "10" after 800 us, "11" after 4*1250 us;
    freq<= "0000" after 1250 us, "0001" after 4*1250 us, "1010"  after 5*1250 us;
end beh;

--read me -- 
--03/01/2014 générateur ask fonctionne avec une période 1/600hz= 625 us après simulation--

