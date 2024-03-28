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
  type state is (jingle_wait, jingle_activate,ready_wait, incr);
  signal current_state, next_state : state;

begin

  --changement d'etat
  process(clk_i, rst_i)
  begin
  if rst_i='1' then 
  
    current_state<=jingle_wait;
    
  elsif rising_edge(clk_i) then 
     current_state<=next_state;
     
  end if;
  
  end process;
  
  process(current_state,start_jingle_i, timing_ready_i)
  begin
    case current_state is 
        when jingle_wait =>
            addr_cnt<=0;
            timing_start_o<='0';
            note_enable_o <='0';
            
            if start_jingle_i='1' then
                next_state<=jingle_activate;
            else
                next_state<=jingle_wait;
            end if;
            
        
        when jingle_activate =>
            addr_cnt<=0;
            timing_start_o<='1';
            note_enable_o <='1';
            
            next_state<=ready_wait;
        
        when ready_wait =>    
            addr_cnt<=addr_cnt;
            timing_start_o<='0';
            note_enable_o <='1';
            
            if timing_ready_i='1' then
                next_state<=incr;
            else
                next_state<=ready_wait;
            end if;
        
        when incr =>
            if addr_cnt+1<3 then 
                addr_cnt<=addr_cnt+1;
                timing_start_o<='1';
                note_enable_o <='1';
                 next_state<=ready_wait;
            else
                addr_cnt<=0;
                timing_start_o<='1';
                note_enable_o <='1';
                next_state<=jingle_wait;
            end if; 
        
        when others =>
            next_state<=jingle_wait;
        
    
    end case;
  
  end process;
  
  jingle_address_o<=std_logic_vector(to_unsigned(addr_cnt,8));

  
end Behavioral;
