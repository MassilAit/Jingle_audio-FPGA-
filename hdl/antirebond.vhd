library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity antirebond is
  port (
    rst_i : in  std_logic;
    clk_i : in  std_logic;
    btn_i : in  std_logic;
    btn_o : out std_logic
    );
end antirebond;

architecture arch_antirebond of antirebond is

  signal btn_shiftreg_r    : std_logic_vector (7 downto 0);
  signal btn_clean_r       : std_logic;
  signal slow_tick_counter : std_logic_vector (15 downto 0);
  -- signal slow_clk_counter : std_logic_vector;
  signal slow_tick         : std_logic;

begin

  btn_o <= btn_clean_r;

  en_reg : process(clk_i, rst_i)
  begin
    if rst_i = '1' then
      slow_tick_counter <= (others => '0');
    elsif rising_edge(clk_i) then
      slow_tick_counter <= std_logic_vector(unsigned(slow_tick_counter) + 1);
    end if;
  end process;

  slow_tick <= '1' when slow_tick_counter = X"FFFF" else '0';

  debouncing_process : process(clk_i, rst_i)
  begin
    if rst_i = '1' then
      btn_shiftreg_r <= (others => '0');
      btn_clean_r    <= '0';
    elsif rising_edge(clk_i) then
      if slow_tick = '1' then
        btn_shiftreg_r <= btn_shiftreg_r(6 downto 0) & btn_i;
        if btn_shiftreg_r = "11111111" then
          btn_clean_r <= '1';
        elsif btn_shiftreg_r = "00000000" then
          btn_clean_r <= '0';
        else
          btn_clean_r <= btn_clean_r;
        end if;
      end if;
    end if;
  end process;
end arch_antirebond;
