------------
-- Components for structural model
------------

------------
-- Adder
------------

entity adder is
  generic (N : natural := 1);              -- Range parameter
  port (E1 : in natural range 0 to N-1;    -- Input 1
        E2 : in natural range 0 to N-1;    -- Input 2
        S  : out natural range 0 to N-1);  -- Output
end entity adder;

architecture bhv of adder is
begin
  
  process(E1, E2)
  begin
    S <= E1 + E2;
  end process;

end architecture bhv;

------------
-- Register
------------

entity reg is
  generic (N : natural := 1);              -- Range parameter
  port (RST : in bit;                      -- Reset
        LD  : in bit;                      -- Load
        E   : in natural range 0 to N-1;   -- Input
	S   : out natural range 0 to N-1); -- Output
end entity reg;

architecture bhv of reg is
begin

  process(RST, LD)
    variable tmp : natural range 0 to N-1;
  begin

    if (RST = '1') then
      tmp := 0;
    elsif (LD = '1') then
      tmp := E;
    else tmp := tmp;
    end if;

    S <= tmp;
    
  end process;

end architecture bhv;
