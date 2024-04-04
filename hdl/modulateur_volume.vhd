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
  signal sample_in_integer:integer range -8388608 to 8388607;
  signal column_integer:integer range 0 to 127;

begin

    process(clk_i, btnd_i, btnu_i)
    begin
        if rising_edge(btnd_i) then 
            start_jingle_o<='1';
            if v_cnt>0 then 
                v_cnt<=v_cnt-1;
            end if;
         
        elsif rising_edge(btnu_i) then 
            start_jingle_o<='1';
            if v_cnt<15 then 
                v_cnt<=v_cnt+1;
            end if;
    
        else
            start_jingle_o<='0';
    
        end if;
    
    end process;


    process(clk_i)
    begin
        if (column_integer/8>=v_cnt) then 
            pixel_o<='1';
        else 
            pixel_o<='0';
       end if;
    
    end process;

  
  column_integer<=to_integer(unsigned(column_i));
  sample_in_integer<=to_integer(signed(sample_in));
  sample_out <= std_logic_vector(to_signed(sample_in_integer*v_cnt*2056,24));
  
  

end Behavioral;
