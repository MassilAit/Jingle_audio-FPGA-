library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity modulateur_volume is
  port (
    rst_i          : in  std_logic;
    clk_i          : in  std_logic;
    btnd_i         : in  std_logic;
    btnu_i         : in  std_logic;
    sample_in      : in  std_logic_vector(23 downto 0);
    sample_out     : out std_logic_vector(23 downto 0);
    column_i       : in  std_logic_vector(6 downto 0);
    row_i          : in  std_logic_vector(4 downto 0);
    pixel_o        : out std_logic;
    start_jingle_o : out std_logic
    );
end modulateur_volume;

architecture Behavioral of modulateur_volume is

  -- A completer

begin

  -- A remplacer

  sample_out <= sample_in;
  pixel_o <= '0';
  start_jingle_o <= btnu_i;

end Behavioral;
