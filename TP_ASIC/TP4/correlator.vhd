------------
-- CDMA/WCDMA Correlator
------------

library ieee;
use ieee.std_logic_1164.all;
use work.cdma_corr_package.all;

entity cdma_correlator is
  port ( CLK  : in std_logic;                     -- Clock
         RST  : in std_logic;                     -- Reset
         SOC  : in std_logic;                     -- Start of conversion
         SAMP : in std_logic_vector(4 downto 0);  -- Sample
         EOC  : out std_logic;                    -- End of conversion
         CORR : out std_logic_vector(9 downto 0)  -- Correlator output
        );
end entity cdma_correlator;

------------
-- Hierarchical architecture
------------

architecture hierarch of cdma_correlator is
  
  for datapath_comp:datapath use entity work.datapath(rtl);
  for controller_comp:controller use entity work.controller(bhv);
  
  signal ctrl_word_t : std_logic_vector(10 downto 0);
  
  begin
  
    datapath_comp:datapath port map(CLK, RST, ctrl_word_t, SAMP, CORR);
                                    
    controller_comp:controller port map(SOC, CLK, RST, EOC, ctrl_word_t);
    
end architecture hierarch;
