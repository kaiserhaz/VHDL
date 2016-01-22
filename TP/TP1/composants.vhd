------------
-- Two-to-one multiplexer
------------

entity Mux is
  generic(N:natural := 2);
  port(Sel : in bit;
       A   : in bit_vector(1 to N);
       B   : in bit_vector(1 to N);
       V1  : out bit_vector(1 to N));
end entity Mux;

------------
-- Multiplexer architecture
------------

architecture bhv of Mux is 
begin 
   
  process(Sel, A, B)
   variable RES : bit_vector (1 to N); -- Internal register
  begin
     
    if(sel='0') then RES := A; -- Select A if sel is low
    else RES := B;             -- Else select B
    end if;
     
     V1 <= RES;                -- Transfer value from internal reg to output reg

  end process;

end architecture bhv;

------------
-- Register
------------

entity Reg is
  generic(N:natural :=2);
  port(H  : in bit;
       V2 : in bit_vector(1 to N);
       R  : out bit_vector(1 to N));
end entity Reg;

------------
-- Register architecture
------------

architecture bhv of Reg is 
begin 

  process(H)
    variable RES : bit_vector (1 to N); -- Internal register
  begin

    if (rising_edge(H)) then RES := V2; -- Affect to internal register during rising edge
    end if;

    R <= RES;                  -- Write to output register

  end process;

end architecture bhv;
