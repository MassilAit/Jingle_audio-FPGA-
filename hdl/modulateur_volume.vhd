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

  signal v_cnt:integer range 0 to 15:=7;
  signal v_cnt_next:integer range 0 to 15:=7;
  signal sample_in_integer:integer range -8388608 to 8388607;
  signal column_integer:integer range 0 to 127;
  type state is(btn_wait,btnu_on,btnd_on,btnu_wait, btnd_wait);
  signal current_state, next_state:state;
  

begin

   process(clk_i,rst_i)
        begin
            if rising_edge(clk_i) then
                v_cnt<=v_cnt_next;
                current_state<=next_state;
                
     
    end if;
  
  end process;
  
  
  process(current_state,v_cnt,btnu_i,btnd_i)
  begin
  case current_state is
        when btn_wait =>
            start_jingle_o<='0';
            v_cnt_next<=v_cnt;
            if btnu_i='1' then 
                next_state<=btnu_on;
            elsif btnd_i='1' then 
                next_state<=btnd_on;
            else
                next_state<=btn_wait;
            end if;    
        when btnu_on =>
            start_jingle_o<='1';
            if v_cnt<15 then 
                v_cnt_next<=v_cnt+1;
            else
                v_cnt_next<=v_cnt;
            end if;
            next_state<=btnu_wait;
        
        when btnd_on =>
            start_jingle_o<='1';
            if v_cnt>0 then 
                v_cnt_next<=v_cnt-1;
            else
                v_cnt_next<=v_cnt;
            end if;
            next_state<=btnd_wait;
        when btnu_wait =>
            start_jingle_o<='0';
            v_cnt_next<=v_cnt;
            if btnu_i='1' then 
                next_state<=btnu_wait;
            else
                next_state<=btn_wait;
            end if;
        when btnd_wait =>
            start_jingle_o<='0';
            v_cnt_next<=v_cnt;
            if btnd_i='1' then 
                next_state<=btnd_wait;
            else
                next_state<=btnu_wait;
            end if;
        when others =>
            start_jingle_o<='0';
            v_cnt_next<=v_cnt;
            next_state<=btn_wait;
    end case;
  
  end process;


    process(clk_i)
    begin
      
      if rising_edge(clk_i) then
        if (column_integer/8 >= v_cnt) then 
            pixel_o<='0';
        else 
            pixel_o<='1';
       end if;
     end if;
    
    end process;

  
  column_integer<=to_integer(unsigned(column_i));
  sample_in_integer<=to_integer(signed(sample_in));
  sample_out <= std_logic_vector(to_signed(sample_in_integer*v_cnt*2056,24));
  
  

end Behavioral;
