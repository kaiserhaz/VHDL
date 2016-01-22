------------
-- Double-select register
------------

entity regdouble is
  generic(N : natural := 4);
  port(SEL : in bit;                      -- Input select
       H   : in bit;                      -- Clock
       A,B : in bit_vector(1 to N);       -- Inputs
       R   : out bit_vector(1 to N));     -- Output
end entity regdouble;

------------
-- Behavioural architecture
------------

architecture bhv of regdouble is
begin

  process(H)
    variable RES : bit_vector(1 to N); -- Internal register
  begin
        
    if (rising_edge(H)) then       -- Evaluate at rising edge of clock
     if (SEL = '0') then RES := A; -- If sel is low, then output A
     else RES := B;                -- Else, output B
     end if;
    end if;
        
    R <= RES;                      -- Write the internal register to the output register
  
  end process;
    
end architecture bhv;

------------
-- Structural architecture
------------

architecture struct of regdouble is

  component Mux is
    generic(N:natural := 2);
    port(SEL : in bit;
         A   : in bit_vector(1 to N);
         B   : in bit_vector(1 to N);
         V1  : out bit_vector(1 to N));
  end component;
  
  component Reg is
    generic(N:natural:=2);
    port(H  : in bit;
         V2 : in bit_vector(1 to N);
         R  : out bit_vector(1 to N));
  end component;
  
  signal V : bit_vector(1 to N);
  
  for C1 : Mux use entity work.mux(bhv);
  for C2 : Reg use entity work.reg(bhv);

begin

  C1 : Mux generic map (N) port map(Sel,A,B,V);
  C2 : Reg generic map (N) port map(H,V,R);

end architecture struct;
