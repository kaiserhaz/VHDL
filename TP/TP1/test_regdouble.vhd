------------
-- Register testbench
------------

entity test is
end entity test;

------------
-- Testbench architecture
------------

architecture bench of test is

  component regdouble
    generic(N : natural := 4);
    port( SEL,H : in bit;
          A,B : in bit_vector(1 to N);
          R : out bit_vector(1 to N));
  end component;
  
  for UUT1 : regdouble use entity work.regdouble(bhv);
  for UUT2 : regdouble use entity work.regdouble(struct);
  
  constant M : natural := 4;
  signal sel,h : bit;
  signal a,b,r1,r2 : bit_vector(1 to M);
  
  begin

    UUT1 : regdouble generic map (M) port map (sel,h,a,b,r1);
    UUT2 : regdouble generic map (M) port map (sel,h,a,b,r2);
    
    sel <= '0', '1' after 11 ns, '0' after 16 ns, '1' after 19 ns;
    a <= "1001", "1011" after 16 ns;
    b <= "0001", "1111" after 13 ns;
    
    clk : process
      begin
        wait for 5 ns;
        h <= not h;
    end process;
    
end architecture bench;