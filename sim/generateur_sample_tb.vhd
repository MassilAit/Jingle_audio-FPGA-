library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity generateur_sample_tb is
end generateur_sample_tb;

architecture bench of generateur_sample_tb is

    component generateur_sample
        port (clk_i               : in  std_logic;
        rst_i               : in  std_logic;
        note_start_addr_i   : in  std_logic_vector(11 downto 0);
        note_sample_count_i : in  std_logic_vector(7 downto 0);
        enable_i            : in  std_logic;
        ROM_qsin_addr_o     : out std_logic_vector(11 downto 0);
        ROM_qsin_sample_i   : in  std_logic_vector(7 downto 0);
        sample_ready_i      : in  std_logic;
        sample_out          : out std_logic_vector(23 downto 0));
    end component;
    
    
    component ROM_qsin 
        port (
        clk_i    : in  std_logic;
        addr_i   : in  std_logic_vector(11 downto 0);
        sample_o : out std_logic_vector(7 downto 0)
        );
    end component;
    
    signal clk_tb                  : std_logic:='0';
    signal rst_i_tb                : std_logic;
    signal note_start_addr_i_tb    : std_logic_vector(11 downto 0):=(11 downto 0 =>'0');
    signal note_sample_count_i_tb  : std_logic_vector(7 downto 0):=(7 downto 0 =>'0');
    signal enable_i_tb             : std_logic:='0';
    signal ROM_qsin_addr_o_tb      : std_logic_vector(11 downto 0);
    signal ROM_qsin_sample_i_tb    : std_logic_vector(7 downto 0):=(7 downto 0 =>'0');
    signal sample_ready_i_tb       : std_logic:='0';
    signal sample_out_tb           : std_logic_vector(23 downto 0);
    
    signal addr_i_tb   : std_logic_vector(11 downto 0);
    signal sample_o_tb : std_logic_vector(7 downto 0);
    
    constant clk_period : time    := 5 ns;


begin
    uut1:generateur_sample
        port map(
            clk_i               => clk_tb,
            rst_i               => rst_i_tb,
            note_start_addr_i   => note_start_addr_i_tb,
            note_sample_count_i => note_sample_count_i_tb,
            enable_i            => enable_i_tb,
            ROM_qsin_addr_o     => ROM_qsin_addr_o_tb,
            ROM_qsin_sample_i   => ROM_qsin_sample_i_tb,
            sample_ready_i      => sample_ready_i_tb,
            sample_out          => sample_out_tb
            );
            
    uut2:ROM_qsin 
      port map(
        clk_i    =>clk_tb,
        addr_i   =>addr_i_tb,
        sample_o =>sample_o_tb
        );

    clk_tb <= not clk_tb after clk_period/2 ;
    rst_i_tb <= '1', '0' after 5*clk_period;
    
    addr_i_tb<=ROM_qsin_addr_o_tb;
    ROM_qsin_sample_i_tb<=sample_o_tb;
    process
    begin
        note_start_addr_i_tb <= (10 downto 0=>'0')&'1';
        note_sample_count_i_tb <=std_logic_vector(to_unsigned(3,8));
        wait for 5*clk_period;
        enable_i_tb<='1';
        wait for 5*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 30*clk_period;
        
        
        
        enable_i_tb<='0';
        note_start_addr_i_tb <= (8 downto 0=>'0')&"111";
        note_sample_count_i_tb <=std_logic_vector(to_unsigned(4,8));
        
        wait for 2*clk_period;
        enable_i_tb<='1';
        wait for 5*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        
        
        sample_ready_i_tb<='1';
        wait for 2*clk_period;
        sample_ready_i_tb<='0';
        wait for 10*clk_period;
        wait;
    end process;


end bench;
