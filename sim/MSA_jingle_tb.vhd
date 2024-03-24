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
   signal start_jingle_i_tb : std_logic:='0';
   signal timing_start_o_tb   : std_logic;
   signal timing_ready_i_tb   : std_logic;
   signal jingle_address_o_tb : std_logic_vector(7 downto 0);
   signal note_enable_o_tb    : std_logic;
   
   
   component ROM_jingle
        port (
        clk_i                : in  std_logic;
        addr_i               : in  std_logic_vector(7 downto 0);
        note_duration_o      : out std_logic_vector(15 downto 0);
        note_start_address_o : out std_logic_vector(11 downto 0);
        note_sample_count_o  : out std_logic_vector(7 downto 0)
        );
  end component; 
  
  signal addr_i_tb               : std_logic_vector(7 downto 0);
  signal note_duration_o_tb      : std_logic_vector(15 downto 0);
  signal note_start_address_o_tb : std_logic_vector(11 downto 0);
  signal note_sample_count_o_tb  : std_logic_vector(7 downto 0);
  
  component MSA_timing 
        port (clk_i   : in  std_logic;
        rst_i   : in  std_logic;
        start_i : in  std_logic;
        data_i  : in  std_logic_vector (15 downto 0);
        ready_o : out std_logic);
  end component;
  
  
  signal rst_i_2_tb   : std_logic;
  signal start_i_tb   : std_logic;
  signal data_i_tb    : std_logic_vector (15 downto 0);
  signal ready_o_tb   : std_logic;
    
  constant clk_period : time    := 5 ns;  
begin 
    uut1:MSA_jingle
        port map(
        clk_i  => clk_tb,
        rst_i  => rst_i_tb,
        start_jingle_i  => start_jingle_i_tb,
        timing_start_o  => timing_start_o_tb,
        timing_ready_i  => timing_ready_i_tb,
        jingle_address_o => jingle_address_o_tb,
        note_enable_o   => note_enable_o_tb
        );
    
    uut2: ROM_jingle
        port map(
        clk_i  => clk_tb,
        addr_i   => addr_i_tb,
        note_duration_o    =>note_duration_o_tb,
        note_start_address_o => note_start_address_o_tb,
        note_sample_count_o  => note_sample_count_o_tb
        );
        
        
    uut3: MSA_timing 
        port map(
        clk_i  => clk_tb,
        rst_i  => rst_i_2_tb,
        start_i => start_i_tb,
        data_i  => data_i_tb,
        ready_o => ready_o_tb
        );
    
    addr_i_tb<=jingle_address_o_tb;
    timing_ready_i_tb<=ready_o_tb;
    start_i_tb<=timing_start_o_tb;
    data_i_tb<=note_duration_o_tb;
    
    clk_tb <= not clk_tb after clk_period/2 ;
    rst_i_tb <= '1', '0' after 5*clk_period;
    rst_i_2_tb <= '1', '0' after 5*clk_period;
    
    process
    begin
    wait for 10*clk_period;
    start_jingle_i_tb<='1';
    wait for 1*clk_period;
    start_jingle_i_tb<='0';
    wait;
    end process;
    
    
        


end bench;
