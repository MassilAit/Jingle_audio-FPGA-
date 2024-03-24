library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity MSA_jingle_tb is
end MSA_jingle_tb;

architecture bench of MSA_jingle_tb is
    component MSA_jingle 
        port (clk_i            : in  std_logic;
        rst_i            : in  std_logic;
        start_jingle_i   : in  std_logic;
        timing_start_o   : out std_logic;
        timing_ready_i   : in  std_logic;
        jingle_address_o : out std_logic_vector(7 downto 0);
        note_enable_o    : out std_logic);
   end component;
   
   signal clk_tb : std_logic :='0';
   signal rst_i_tb : std_logic;
   signal start_jingle_i_tb : std_logic;
   signal timing_start_o_tb   : std_logic;
   signal timing_ready_i_tb   : std_logic;
   signal jingle_address_o_tb : std_logic_vector(7 downto 0);
   signal note_enable_o_tb    : std_logic;
   
begin


end bench;
