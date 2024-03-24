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

  signal addr_cnt: integer range 0 to 7 :=0;
  signal jingle_active: boolean:=false;

begin

  process(clk_i, rst_i)
  begin
  if rst_i='0' then 
  
    timing_start_o <= '0';
    addr_cnt <= 0;
    jingle_active<=false;
    note_enable_o<='0';

    
  elsif rising_edge(clk_i) then 
    if jingle_active and addr_cnt<2 then 
        if timing_ready_i='1' then 
            note_enable_o<='0';
            timing_start_o<='1';
            addr_cnt<=addr_cnt+1;
        else
            note_enable_o<='1';
            timing_start_o<='0';      
        end if;
        
        
    elsif not jingle_active and start_jingle_i='1' then 
        jingle_active<=true;
        
    else 
        timing_start_o <= '0';
        addr_cnt <= 0;
        jingle_active<=false;
        note_enable_o<='0';
        
    end if; 
  end if;
  
    
  
  end process;
  

  
end Behavioral;
