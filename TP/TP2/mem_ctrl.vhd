------------
-- Memory controller
------------

entity mem_ctrl is
  port (READY      : in bit;   -- Ready signal
        READ_WRITE : in bit;   -- Read/write signal
        H          : in bit;   -- Clock signal
        OE         : out bit;  -- Output enable signal
        WE         : out bit); -- Write enable signal
end entity mem_ctrl;

------------
-- Dataflow architecture
------------

architecture fsm_dataflow of mem_ctrl is
begin

  state_m: process(H)                          -- Process synchronous to clock
    type state is (idle,decision,read,write);  -- State type
    variable E : state;                        -- State variable
  begin
    
    if (rising_edge(H)) then                   -- On clock rising edge
      
      case E is
        when idle =>                           -- Idle state
          if READY = '1' then E := decision;
          end if;
        when decision =>                       -- Decision state
          if READ_WRITE = '1' then E := read;
          else E := write;
          end if;
        when read =>                           -- Read state
          if READY = '1' then E := idle;
          end if;
        when write =>                          -- Write state
          if READY = '1' then E := idle;
          end if;
      end case;
    
    end if;
    
    OE <= '1' when E = read else '0';
    WE <= '1' when E = write else '0';

  end process;

end architecture fsm_dataflow;

------------
-- State memorisation and calculation architecture
------------

architecture fsm_dataflow2 of mem_ctrl is
  type state is (idle,decision,read,write);
  signal ETAT, N_ETAT : state;                 -- State and next state register
begin

  mem:process(H)                               -- State memorisation
  begin

    if (rising_edge(H)) then                   -- On clock rising edge
      ETAT <= N_ETAT;                          -- Affect the next state to the state register
    end if;

  end process;
  
  comb:process(READY, READ_WRITE, ETAT)
  begin

    case ETAT is
      when idle => OE <= '0';                  -- Idle state
                   WE <= '0';
                   if READY = '1' then N_ETAT <= decision;
                   else N_ETAT <= idle;
                   end if;
      when decision => OE <= '0';              -- Decision state
                       WE <= '0';
                       if READ_WRITE = '1' then N_ETAT <= read;
                       else N_ETAT <= write;
                       end if;
      when read => OE <= '1';                  -- Read state
                   WE <= '0';
                   if READY = '1' then N_ETAT <= idle;
                   else N_ETAT <= read;
                   end if;
      when write => OE <= '0';                 -- Write state
                    WE <= '1';
                    if READY = '1' then N_ETAT <= idle;
                    else N_ETAT <= write;
                    end if;
    end case;
      
  end process; 
        
end architecture fsm_dataflow2;
