------------
-- Datapath
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity datapath is
  port ( CLK  : in std_logic;                     -- Clock
         RST  : in std_logic;                     -- Reset
         CTL  : in std_logic_vector(10 downto 0); -- Control word
         SAMP : in std_logic_vector(4 downto 0);  -- Sample
         CORR : out std_logic_vector(9 downto 0)  -- Correlator output
        );
end entity datapath;

------------
-- Datapath architecture
------------

architecture rtl of datapath is
  
  type ram_t is array(0 to 7) of std_logic_vector(4 downto 0); -- RAM type
  type rom_t is array(0 to 5) of std_logic_vector(4 downto 0); -- ROM type
  
  constant rom : rom_t := ("00001", "11111", "00001", "11111", "11111", "00001"); -- Coefficients in ROM
  
  signal ram : ram_t;                          -- RAM
  
  signal di, do : std_logic_vector(4 downto 0) := (others => '-');
  signal rom_out : std_logic_vector(4 downto 0) := (others => '-');
  signal m_mul, mac : std_logic_vector(9 downto 0) := (others => '0');
  
begin
  
  -- Tri-state
  with CTL(0) select CORR <=             mac when '1',
                             (others => 'Z') when others;

  -- Mux
  with CTL(3) select di <= do when '0',
                         SAMP when others;
  
  -- ROM process
  rom_p: process(CTL)
  begin
    rom_out <= rom(conv_integer('0' & CTL(7 downto 5))); -- Read according to SA
  end process;

  -- RAM write process
  ram_w_p: process(CLK, RST)
  begin
  
    if (RST = '0') then                        -- On reset low
      
      for ii in ram'range loop                 -- Reinitalise RAM
        ram(ii) <= "00000";
      end loop;

    elsif (RISING_EDGE(CLK)) then              -- On clock rising edge

      if (CTL(4) = '1') then                   -- If WE signal in bundle is activated, then write using DA as address
        ram(conv_integer('0' & CTL(10 downto 8))) <= di;
      end if;

    end if;
		
  end process;

  -- RAM read process, asynchronous
  do <= ram(conv_integer('0' & CTL(7 downto 5)));

  -- Continuous multiply (overflow possibility?)
  m_mul <= conv_std_logic_vector(conv_integer(do) * conv_integer(rom_out), 10);
	
  -- MAC
  mac_p: process(CLK)
    variable curr_res : std_logic_vector(9 downto 0) := (others => '0'); -- Current result
  begin
    
    if CTL(2) = '1' then                       -- If MAC reset in signal bundle is high
      curr_res := (others => '0');             -- Initialize variable registers
    elsif (RISING_EDGE(CLK)) then              -- On clock rising edge
      if (CTL(1) = '1') then                   -- If MAC enable in signal bundle is high
        curr_res := curr_res + m_mul;          -- Do accumulate
      end if;
    end if;
  
    mac <= curr_res;                           -- Affect to MAC output register

  end process;

end architecture rtl;
