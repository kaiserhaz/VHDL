------------
-- Sequencer for distance measurer
------------

entity sequencer is
  port (RST        : in bit;   -- Reset signal
        H          : in bit;   -- Clock signal
        S          : in bit;   -- Signal detect input
        B          : in bit;   -- Timing start signal
        Z          : in bit;   -- State indicator (zero)
        L          : out bit;  -- Laser activate signal
        HL         : out bit;  -- Out of bound range signal
        SHIFT_T    : out bit;  -- Time register shift signal
        INC_T      : out bit;  -- Time increment signal
        RAZ_T      : out bit;  -- Time reset signal
        RAZ_D      : out bit); -- Output reset signal
end entity sequencer;

------------
-- State memorisation and calculation architecture
------------

architecture fsm_dataflow of sequencer is
  type state is (T0, T1, T2, T3, T4);          -- States
  signal ETAT, N_ETAT : state;                 -- State and next state register
begin

  mem:process(H)                               -- State memorisation
  begin

    if (rising_edge(H)) then                   -- On clock rising edge
      ETAT <= N_ETAT;                          -- Affect the next state to the state register
    end if;

  end process;
  
  comb:process(RST, S, B, Z, ETAT)             -- Next-state combinatorial
  begin
    
    if (RST = '1') then                        -- Reset
      N_ETAT <= T0;
    else

      case ETAT is
        when T0 => RAZ_D   <= '1';             -- Initial state
                   L       <= '0';
                   HL      <= '0';
                   SHIFT_T <= '0';
                   INC_T   <= '0';
                   RAZ_T   <= '0';
                   N_ETAT  <= T1;
        when T1 => RAZ_D   <= '0';             -- Idle state
                   L       <= '0';
                   HL      <= '0';
                   SHIFT_T <= '0';
                   INC_T   <= '0';
                   RAZ_T   <= '1';
                   if B = '1' then N_ETAT <= T2;
                   else N_ETAT <= T1;
                   end if;
        when T2 => RAZ_D   <= '0';             -- Start measure state
                 L       <= '1';
                 HL      <= '0';
                 SHIFT_T <= '0';
                 INC_T   <= '0';
                   RAZ_T   <= '0';
                   N_ETAT  <= T3;
        when T3 => RAZ_D   <= '0';             -- Measure state
                   L       <= '0';
                   SHIFT_T <= '0';
                   INC_T   <= '1';
                   RAZ_T   <= '0';
                   if S = '0' then 
                     if Z = '0' then
                       N_ETAT <= T3;
                       HL     <= '0';
                     else
                       N_ETAT <= T1;
                       HL     <= '1';
                     end if;
                   else N_ETAT <= T4;
                   end if;
        when T4 => RAZ_D   <= '0';             -- Output state
                   L       <= '0';
                   HL      <= '0';
                   SHIFT_T <= '1';
                   INC_T   <= '0';
                   RAZ_T   <= '0';
                   N_ETAT  <= T1;
      end case;

    end if;
      
  end process; 
        
end architecture fsm_dataflow;
