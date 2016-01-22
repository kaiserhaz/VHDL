------------
-- 7-segment displayer
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity affichage is
  port (RST  : in std_logic;                   -- Reset
        WR   : in std_logic;                   -- Write
        H    : in std_logic;                   -- Clock
        DATA : in unsigned(13 downto 0);       -- Data
        AFF3 : out unsigned(6 downto 0);       -- Output segment 4
        AFF2 : out unsigned(6 downto 0);       -- Output segment 3
        AFF1 : out unsigned(6 downto 0);       -- Output segment 2
        AFF0 : out unsigned(6 downto 0));      -- Output segment 1
end entity affichage;

------------
-- Displayer architecture
------------

architecture rtl_affichage of affichage is
  -- Declarations
  type state is (T0, T1, T2, T3, T4);
  
  -- Internal signals
  signal q, r, R1 : unsigned(13 downto 0);
  signal s : std_logic := '1';
  signal z, ldr, ld0, ld1, ld2, ld3 : std_logic := '0';
  signal E, N_E : state := T0;
  signal Maff : unsigned(6 downto 0);
  
  -- Converter functions
  function CONV_7_SEG (U : in unsigned(3 downto 0)) return unsigned is
   variable V : unsigned(6 downto 0) := "0000000";
  begin
    case U is
      when "0000" => V := "1111111"; -- 7F
      when "0001" => V := "1110110"; -- F6
      when "0010" => V := "1111001"; -- 79
      when "0011" => V := "1001111"; -- 4F
      when "0100" => V := "0011001"; -- 19
      when "0101" => V := "0010010"; -- 12
      when "0110" => V := "0000010"; -- 02
      when "0111" => V := "1111000"; -- 78
      when "1000" => V := "0000000"; -- 00
      when "1001" => V := "0011000"; -- 18
      when others => V := "1111111"; -- 7F
    end case;
    return V;
  end function CONV_7_SEG;
  -- Fin des declarations
begin
    
  q <= R1 / 10;                                -- Get digit value by division and modulo
  r <= R1 rem 10;
    
  datain:block(H='1' and not H'stable)         -- Quotient memory block, load on ldr
    signal Mmux : unsigned(13 downto 0);
  begin
    Mmux <= q when s = '0' else DATA;
    R1 <= guarded Mmux when ldr = '1';
  end block;

  z <= '1' when R1 = "00000000000000" else '0'; -- Detect zero display
    
  Maff <= CONV_7_SEG(r(3 downto 0)) when s = '0' else "1111111"; -- Calculate current display
    
  affichage:block(H='1' and not H'stable)      -- Display affect block
  begin
    AFF3 <= guarded Maff when ld3 = '1';
    AFF2 <= guarded Maff when ld2 = '1';
    AFF1 <= guarded Maff when ld1 = '1';
    AFF0 <= guarded Maff when ld0 = '1';
  end block;
    
  mem:process(RST,H)                           -- State memorisation process
  begin
    if RST ='1' then
      E <= T0;
    elsif H='1' and H'event then
      E <= N_E;
    end if;
  end process;
      
  comb:process(E,WR,Z)                         -- Sequencer state machine process
  begin

    ld0 <= '0';
    ld1 <= '0';
    ld2 <= '0';
    ld3 <= '0';
    ldr <= '0';
    s <= '0';
    case E is
      when T0 => s <= '1';                     -- Idle state
                 if WR = '0' then N_E <= T0;
                 else
                   ld0 <= '1';
                   ld1 <= '1'; 
                   ld2 <= '1'; 
                   ld3 <= '1'; 
                   ldr <= '1';
                   N_E <= T1;
                 end if;
      when T1 => ld0 <= '1';                   -- Display 1 state
                 ldr <= '1';
                 N_E <= T2;
      when T2 => if z = '1' then N_E <= T0;    -- Display 2 state
                 else
                  ld1 <= '1';
                  ldr <= '1';
                  N_E <= T3;
                 end if;
      when T3 => if z = '1' then N_E <= T0;    -- Display 3 state
                 else
                  ld2 <= '1';
                  ldr <= '1';
                  N_E <= T4;
                 end if; 
      when T4 => if z = '1' then N_E <= T0;    -- Display 4 state
                 else
                  ld3 <= '1';
                  ldr <= '1';
                  N_E <= T0;
                 end if;
      end case;

    end process;
    
end architecture rtl_affichage;
