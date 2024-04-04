library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity modulateur_volume_tb is
end modulateur_volume_tb;

architecture bench of modulateur_volume_tb is
    component modulateur_volume
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
    end component;
    
    
     signal rst_tb            : std_logic;
     signal clk_tb            : std_logic:='0';
     signal btnd_i_tb         : std_logic:='0';
     signal btnu_i_tb         : std_logic:='0';
     signal sample_in_tb      : std_logic_vector(23 downto 0);
     signal sample_out_tb     : std_logic_vector(23 downto 0);
     signal column_i_tb       : std_logic_vector(6 downto 0);
     signal row_i_tb          : std_logic_vector(4 downto 0);
     signal pixel_o_tb        : std_logic;
     signal start_jingle_o_tb : std_logic;
    
    
    constant clk_period : time    := 5 ns;
            
begin
    uut1:modulateur_volume
        port map(
        rst_i          => rst_tb,
        clk_i          => clk_tb,
        btnd_i         => btnd_i_tb,
        btnu_i         => btnu_i_tb,
        sample_in      => sample_in_tb,
        sample_out     => sample_out_tb,
        column_i       => column_i_tb,
        row_i          => row_i_tb,
        pixel_o        => pixel_o_tb,
        start_jingle_o => start_jingle_o_tb
        );
    
    
    clk_tb <= not clk_tb after clk_period/2 ;
    
    process
    begin
        sample_in_tb<=std_logic_vector(to_signed(-200,24));
        row_i_tb<="00000";
        column_i_tb<="1000100";
        wait for 5*clk_period;
        
        btnd_i_tb<='1';
        wait for 5*clk_period;
        btnd_i_tb<='0';
        
        
        wait for 10*clk_period;
        
        btnu_i_tb<='1';
        wait for 5*clk_period;
        btnu_i_tb<='0';
        wait for 10*clk_period;
        
        btnu_i_tb<='1';
        wait for 5*clk_period;
        btnu_i_tb<='0';
        wait for 10*clk_period;
    
    
    wait;
    end process;
end bench;
