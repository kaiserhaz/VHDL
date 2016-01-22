------------
-- Accumulator
------------

entity accumulator is
  generic (N : natural := 1);              -- Range parameter
  port (RST : in bit;                      -- Reset
        LD  : in bit;                      -- Load
        B   : in natural range 0 to N-1;   -- Input
        A   : out natural range 0 to N-1); -- Output
end entity accumulator;

------------
-- Accumulator, behavioural model
------------

architecture behavioural of accumulator is
begin
  
  process(RST, LD)
    variable result : natural range 0 to N-1; -- Intermediate result variable
  begin

    if(RST = '1') then
      result := 0;                         -- Zero interm variable during reset
    elsif(LD'event and LD = '1') then
      result := result + B;                -- If load, then accumulate
    end if;

    A <= result;                           -- Affect the value of result to output

  end process;
    
end architecture behavioural;

------------
-- Accumulator, structural model
------------

architecture structural of accumulator is

component adder
  generic (N : natural := 1);
  port (E1 : in natural range 0 to N-1;
        E2 : in natural range 0 to N-1;
        S : out natural range 0 to N-1);
end component;

component reg
  generic (N : natural := 1);
  port (RST : bit;
        LD : bit;
        E : in natural range 0 to N-1;
        S : out natural range 0 to N-1);
end component;

signal V, Aint : natural range 0 to N-1;

begin

  c1 : adder generic map (N) port map (B, Aint, V);
  c2 : reg generic map (N) port map (RST, LD, V, Aint);
  A <= Aint;

end architecture structural;
