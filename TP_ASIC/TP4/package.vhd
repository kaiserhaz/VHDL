------------
-- Correlator package
------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

package cdma_corr_package is
  
  component controller is 
    port( SOC : in std_logic;                     -- Start convert
          CLK : in std_logic;                     -- Clock
          RST : in std_logic;                     -- Reset
          EOC : out std_logic;                    -- End of convert
          CTL : out std_logic_vector(10 downto 0) -- Control word
         );
 end component;
 
 component datapath is
   port ( CLK  : in std_logic;                     -- Clock
          RST  : in std_logic;                     -- Reset
          CTL  : in std_logic_vector(10 downto 0); -- Control word
          SAMP : in std_logic_vector(4 downto 0);  -- Sample
          CORR : out std_logic_vector(9 downto 0)  -- Correlator output
         );
 end component;
 
 component cdma_correlator is
   port ( CLK  : in std_logic;                     -- Clock
          RST  : in std_logic;                     -- Reset
          SOC  : in std_logic;                     -- Start of conversion
          SAMP : in std_logic_vector(4 downto 0);  -- Sample
          EOC  : out std_logic;                    -- End of conversion
          CORR : out std_logic_vector(9 downto 0)  -- Correlator output
        );
 end component;

end package cdma_corr_package;
