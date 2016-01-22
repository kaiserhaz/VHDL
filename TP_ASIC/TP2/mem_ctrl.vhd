------------
-- Memory controller, upgraded
------------

library ieee;
use ieee.std_logic_1164.all;

entity mem_ctrl is
  port (READY      : in std_logic;   -- Ready signal
        BURST      : in std_logic;   -- Burst signal
        RESET      : in std_logic;   -- Reset signal
        READ_WRITE : in std_logic;   -- Read/write signal
        H          : in std_logic;   -- Clock signal
        OE         : out std_logic;  -- Output enable signal
        WE         : out std_logic;  -- Write enable signal
        ADDR       : out std_logic_vector(1 downto 0)); -- Burst address
end entity mem_ctrl;

------------
-- State memorisation and calculation architecture
------------

architecture fsm_dataflow of mem_ctrl is
  type state is (idle,                         -- State type
                 decision,
                 read1,
                 read2,
                 read3,
                 read4,
                 write);
  signal ETAT, N_ETAT : state;                 -- State and next state register
begin

  mem:process(H, RESET)                        -- State memorisation
  begin

    if (RESET = '0') then                      -- On reset low
      ETAT <= idle;                            -- Set state to idle
    elsif (rising_edge(H)) then                -- On clock rising edge
      ETAT <= N_ETAT;                          -- Affect the next state to the state register
    end if;

  end process;
  
  comb:process(READY, READ_WRITE, ETAT)
  begin

    case ETAT is
      when idle => OE <= '0';                  -- Idle state
                   WE <= '0';
                   ADDR <= "--";
                   if READY = '1' then N_ETAT <= decision;
                   else N_ETAT <= idle;
                   end if;
      when decision => OE <= '0';              -- Decision state
                       WE <= '0';
                       ADDR <= "--";
                       if READ_WRITE = '1' then
                         N_ETAT <= read1;
                       else N_ETAT <= write;
                       end if;
      when read1 => OE <= '1';                  -- Read1 state
                    WE <= '0';
                    ADDR <= "00";
                    if READY = '1' then
                      if BURST = '1' then
                        N_ETAT <= read2;
                      else
                        N_ETAT <= idle;
                      end if;
                    else N_ETAT <= read1;
                    end if;
      when read2 => OE <= '1';                  -- Read2 state
                    WE <= '0';
                    ADDR <= "01";
                    if READY = '1' then
                      N_ETAT <= read3;
                    else N_ETAT <= read2;
                    end if;
      when read3 => OE <= '1';                  -- Read3 state
                    WE <= '0';
                    ADDR <= "10";
                    if READY = '1' then
                      N_ETAT <= read4;
                    else N_ETAT <= read3;
                    end if;
      when read4 => OE <= '1';                  -- Read4 state
                    WE <= '0';
                    ADDR <= "11";
                    if READY = '1' then
                      N_ETAT <= idle;
                    else N_ETAT <= read4;
                    end if;
      when write => OE <= '0';                 -- Write state
                    WE <= '1';
                    ADDR <= "00";
                    if READY = '1' then
                      N_ETAT <= idle;
                    else N_ETAT <= write;
                    end if;
    end case;
      
  end process; 
        
end architecture fsm_dataflow;

------------
-- Moore state coding architecture
------------

architecture fsm_moore of mem_ctrl is

  constant idle : std_logic_vector(4 downto 0) := "00000";     -- Idle state
  constant decision : std_logic_vector(4 downto 0) := "00001"; -- Decision state
  constant read1 : std_logic_vector(4 downto 0) := "10000";    -- Read1 state
  constant read2 : std_logic_vector(4 downto 0) := "10010";    -- Read2 state
  constant read3 : std_logic_vector(4 downto 0) := "10100";    -- Read3 state
  constant read4 : std_logic_vector(4 downto 0) := "10110";    -- Read4 state
  constant write : std_logic_vector(4 downto 0) := "01000";    -- Write state

  signal ETAT, N_ETAT : std_logic_vector(4 downto 0); -- State and next state register

begin

  mem:process(H, RESET)                        -- State memorisation
  begin

    if (RESET = '0') then                      -- On reset low
      ETAT <= idle;                            -- Set state to idle
    elsif (rising_edge(H)) then                -- On clock rising edge
      ETAT <= N_ETAT;                          -- Affect the next state to the state register
    end if;

  end process;
  
  comb:process(READY, READ_WRITE, ETAT)
  begin

    case ETAT is
      when idle => -- Idle state
                   if READY = '1' then
                     N_ETAT <= decision;
                   else N_ETAT <= idle;
                   end if;
      when decision => -- Decision state
                       if READ_WRITE = '1' then
                         N_ETAT <= read1;
                       else N_ETAT <= write;
                       end if;
      when read1 => -- Read1 state
                    if READY = '1' then
                      if BURST = '1' then
                        N_ETAT <= read2;
                      else
                        N_ETAT <= idle;
                      end if;
                    else N_ETAT <= read1;
                    end if;
      when read2 => -- Read2 state
                    if READY = '1' then
                      N_ETAT <= read3;
                    else N_ETAT <= read2;
                    end if;
      when read3 => -- Read3 state
                    if READY = '1' then
                      N_ETAT <= read4;
                    else N_ETAT <= read3;
                    end if;
      when read4 => -- Read4 state
                    if READY = '1' then
                      N_ETAT <= idle;
                    else N_ETAT <= read4;
                    end if;
      when write => -- Write state
                    if READY = '1' then
                      N_ETAT <= idle;
                    else N_ETAT <= write;
                    end if;
      when others => -- Other states: force idle
                     N_ETAT <= idle;
    end case;
      
  end process; 
  
  -- Concurrent affects: decompose state representation

  OE <= ETAT(4);
  WE <= ETAT(3);
  ADDR <= ETAT(2 downto 1);

end architecture fsm_moore;
