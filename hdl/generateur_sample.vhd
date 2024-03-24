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
    type state is(enable_wait,rom_up, ready_wait,p1,p2,p3,p4);
    signal current_state, next_state:state;
    signal p_cnt:integer range 0 to 3:=0;
    signal addr_cnt : integer range 0 to 4095;
    signal invert_output :boolean :=false;
begin

  --changement d'etat et reset
  process(clk_i,rst_i)
  begin
    if rst_i='1' then
        current_state<=enable_wait;
    elsif rising_edge(clk_i) then
        current_state<=next_state;
     
    end if;
  
  end process;
  
  -- transitions
  process(current_state,enable_i,sample_ready_i)
  begin
    case current_state is
        when enable_wait =>
        
            if enable_i='1' then
                next_state<=rom_up;
            else
                next_state<=enable_wait;
            end if;
            
         when rom_up =>
            next_state<=ready_wait;
            
        when ready_wait =>
            if enable_i='0' then
                next_state <=enable_wait;
            elsif sample_ready_i='1' then 
                case p_cnt is
                    when 0 =>
                        next_state <=p1;
                    when 1=>
                        next_state <=p2;
                    when 2=>
                        next_state <=p3;
                    when 3=>
                        next_state <=p4;
                    when others =>
                        next_state <=p1;
                end case;
                   
            
            else
                next_state<=ready_wait;
            end if;
            
        
        when p1 =>
            if enable_i='0' then 
                next_state<=enable_wait;
            else 
                next_state<=ready_wait;
            end if;
        
        when p2 =>
            if enable_i='0' then 
                next_state<=enable_wait;
            else 
                next_state<=ready_wait;
            end if;
        
        when p3 =>
        
            if enable_i='0' then 
                next_state<=enable_wait;
            else 
                next_state<=ready_wait;
            end if;
        
        when p4 =>
            if enable_i='0' then 
                next_state<=enable_wait;
            else 
                next_state<=ready_wait;
            end if;
        
        when others =>
            next_state<=enable_wait;
    end case;
  
  
  end process;
  
  
  -- output
  process(current_state)
  begin
    case current_state is
        when enable_wait =>
            p_cnt<=0;
            invert_output<=false;
            addr_cnt<=to_integer(unsigned(note_start_addr_i));        
            ROM_qsin_addr_o<=std_logic_vector(to_unsigned(addr_cnt,12));
            sample_out<=(15 downto 0=>'0') & ROM_qsin_sample_i;
            
        when rom_up =>
            addr_cnt<=to_integer(unsigned(note_start_addr_i)); 
            ROM_qsin_addr_o<=std_logic_vector(to_unsigned(addr_cnt,12));
            sample_out<=(15 downto 0=>'0') & ROM_qsin_sample_i;
            
        when ready_wait =>
            ROM_qsin_addr_o<=std_logic_vector(to_unsigned(addr_cnt,12));
            
            if invert_output then 
                  sample_out<=std_logic_vector(not(unsigned((15 downto 0=>'0') & ROM_qsin_sample_i))+1);
            else        
                  sample_out<=(15 downto 0=>'0') & ROM_qsin_sample_i;        
           end if;
        
        when p1 =>
            invert_output<=false;
            if addr_cnt<unsigned(note_start_addr_i)+unsigned(note_sample_count_i)-1 then 
                addr_cnt<=addr_cnt+1;
                ROM_qsin_addr_o<=std_logic_vector(to_unsigned(addr_cnt,12));
            else
                p_cnt<=1;
            end if;
           
        
        when p2 =>
            invert_output<=false;
            if addr_cnt>unsigned(note_start_addr_i) then 
                addr_cnt<=addr_cnt-1;
                ROM_qsin_addr_o<=std_logic_vector(to_unsigned(addr_cnt,12));
            else
                p_cnt<=2;
            end if;
        
        when p3 =>
            invert_output<=true;
            if addr_cnt<unsigned(note_start_addr_i)+unsigned(note_sample_count_i)-1 then 
                addr_cnt<=addr_cnt+1;
                ROM_qsin_addr_o<=std_logic_vector(to_unsigned(addr_cnt,12));
            else
                p_cnt<=3;
            end if;
           
        
        when p4 =>
            invert_output<=true;
            if addr_cnt>unsigned(note_start_addr_i) then 
                addr_cnt<=addr_cnt-1;
                ROM_qsin_addr_o<=std_logic_vector(to_unsigned(addr_cnt,12));
            else
                p_cnt<=0;
            end if;
            
        
        when others =>
            
            
    end case;
  
  
  end process;

  

end Behavioral;
