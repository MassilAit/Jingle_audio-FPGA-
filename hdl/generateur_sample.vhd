library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity generateur_sample is
  port (clk_i               : in  std_logic;
        rst_i               : in  std_logic;
        note_start_addr_i   : in  std_logic_vector(11 downto 0);
        note_sample_count_i : in  std_logic_vector(7 downto 0);
        enable_i            : in  std_logic;
        ROM_qsin_addr_o     : out std_logic_vector(11 downto 0);
        ROM_qsin_sample_i   : in  std_logic_vector(7 downto 0);
        sample_ready_i      : in  std_logic;
        sample_out          : out std_logic_vector(23 downto 0));
end generateur_sample;

architecture Behavioral of generateur_sample is

  -- A completer

begin

  -- A remplacer

  ROM_qsin_addr_o <= X"000";
  sample_out      <= X"000000";

end Behavioral;
