library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MSA_jingle is
  port (clk_i            : in  std_logic;
        rst_i            : in  std_logic;
        start_jingle_i   : in  std_logic;
        timing_start_o   : out std_logic;
        timing_ready_i   : in  std_logic;
        jingle_address_o : out std_logic_vector(7 downto 0);
        note_enable_o    : out std_logic);
end MSA_jingle;

architecture Behavioral of MSA_jingle is

  -- A completer

begin

  -- A remplacer
  
  timing_start_o <= '0';
  jingle_address_o <= X"00";
  note_enable_o <= '0';
  
end Behavioral;
