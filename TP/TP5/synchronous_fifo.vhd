------------
-- Synchronous FIFO
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.component_synchronous_fifo.all;

entity synchronous_fifo is
  generic( wide, deep : natural );
  port( RST     : in std_logic;                -- Reset
        RW      : in std_logic;                -- Read/write
        ENABLE  : in std_logic;                -- Enable
        H       : in std_logic;                -- Clock
        DATAIN  : in std_logic_vector(wide-1 downto 0); -- Datain
        FULL    : out std_logic := '0';        -- Full status
        EMPTY   : out std_logic := '0';        -- Empty status
        DATAOUT : out std_logic_vector(wide-1 downto 0) := (others => 'Z') ); -- Dataout
end entity synchronous_fifo;

------------
-- FIFO architecture
------------

architecture hierarchic of synchronous_fifo is
  
  type register_out is array (2**deep-1 downto 0) of std_logic_vector(wide-1 downto 0); -- FIFO register type
  
  signal REG_OUT : register_out;
  signal SEL_MUX : unsigned(deep-1 downto 0);
  signal SEL : std_logic;
  signal MUX_OUT : std_logic_vector(wide-1 downto 0) := (others => '-');
  signal REG_LD : std_logic;
  signal COUNT_UD : std_logic;
  
  for counter1 : counter use entity work.counter(algorithmic);
  
  -- AND reduce
  function all_and(V : std_logic_vector) return std_logic is
    variable res: std_logic := '1';
    begin
      for i in V'range loop
        res := res and V(i);
      end loop;
    return(res);
  end function all_and;
  
begin
  
  -- FIFO register generate loop
  reg1 : for I in 0 to 2**deep - 1 generate
    
    -- First generate
    REG0 : if I = 0 generate
      reg0 : entity work.reg generic map(wide) port map(REG_LD, RST, H, DATAIN, REG_OUT(0));
    end generate REG0;
    
    -- Subsequent generates
    REGI : if I > 0 generate
      regI : entity work.reg generic map(wide) port map(REG_LD, RST, H, REG_OUT(I-1), REG_OUT(I));
    end generate REGI;
    
  end generate reg1;
  
  counter1 : counter generic map(deep) port map(RST, COUNT_UD, ENABLE, H, SEL, SEL_MUX);
  
  -- Load signal block
  b_reg_ld : block
  begin
    REG_LD <= ENABLE and RW;
  end block;
  
  -- Up/down count block
  b_count_UD : block
  begin
    COUNT_UD <= ENABLE and not RW;
  end block;
  
  -- Empty/full block
  b_empty_full : block
  begin
    FULL <= not SEL and all_and(std_logic_vector(SEL_MUX));
    EMPTY <= SEL and all_and(std_logic_vector(SEL_MUX));
  end block;
  
  -- Multiplexer block
  b_mux : block
  begin
    MUX_OUT <= REG_OUT(to_integer(SEL_MUX));
    with RW select DATAOUT <= MUX_OUT when '0', (others => 'Z') when others;
  end block;
      
end architecture hierarchic;
