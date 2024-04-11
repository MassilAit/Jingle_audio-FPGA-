library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity module_echo is
  port
  (
    clk_i : in std_logic;
    rst_i : in std_logic;
    sample_ready_i : in std_logic;
    valid_i        : in std_logic;
    sample_i       : in std_logic_vector(23 downto 0);

    sample_o : out std_logic_vector(23 downto 0)
  );
end module_echo;

architecture Behavioral of module_echo is

  component FIFO is
    port
    (
      clk   : in std_logic;
      srst  : in std_logic;
      din   : in std_logic_vector(23 downto 0);
      wr_en : in std_logic;
      rd_en : in std_logic;
      dout  : out std_logic_vector(23 downto 0);
      full  : out std_logic;
      empty : out std_logic
    );
  end component;

  signal fifo_o : std_logic_vector(23 downto 0) := (others => '0');
  signal sample_valid : std_logic_vector(23 downto 0) := (others => '0');
  signal sample_valid_next : std_logic_vector(23 downto 0) := (others => '0');
  signal fifo_full : std_logic;
  signal wr_en:std_logic:='0';
  signal rd_en:std_logic;
  type state is(no_full,full);
  signal current_state, next_state:state;

begin


  inst_FIFO : FIFO port map
  (
    clk    => clk_i,
    srst   => rst_i,
    din    => sample_valid,
    wr_en  => wr_en,
    rd_en  => rd_en, 
    dout   => fifo_o,
    full   => fifo_full,
    empty  => open
  );

  process (clk_i, rst_i)
  begin
    if rst_i = '1' then
      sample_valid <= (others => '0');
    elsif rising_edge(clk_i) then
        sample_valid<=sample_valid_next;
        current_state<=next_state;    
    end if;
  end process;


  process (current_state,sample_ready_i, valid_i)
  begin
    case current_state is 
        when no_full=>
             sample_o <= sample_valid;
             
             if valid_i='1' then 
                sample_valid_next<=sample_i;
             else
                sample_valid_next<=sample_valid;
             end if;
             
             if fifo_full='1' then
                next_state<=full;
                
             else
                next_state<=no_full;
             end if;
        when full=>
               sample_o <= std_logic_vector(signed(sample_valid) + shift_right(signed(fifo_o), 1));
               
               if valid_i='1' then 
                    sample_valid_next<=sample_i;
               else
                sample_valid_next<=sample_valid;
               end if;
               
               if fifo_full='1' then
                next_state<=full;
                
               else
                next_state<=no_full;
               end if;
               
               
        when others =>
            next_state<=no_full;       
    end case;
  end process;
  
  process(clk_i, sample_ready_i)
  begin
    if rising_edge(clk_i) then 
        if sample_ready_i='1' then 
            wr_en<='1';
            rd_en<=fifo_full;
        
        else
            wr_en<='0';
            rd_en<='0';
        end if;
    end if;
  
  
  end process;
  
end Behavioral;
