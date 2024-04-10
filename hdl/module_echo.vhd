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

  signal full : std_logic;

begin


  inst_FIFO : FIFO port map
  (
    clk    => sample_ready_i,
    srst   => rst_i,
    din    => sample_valid,
    wr_en  => '1',
    rd_en  => full, 
    dout   => fifo_o,
    full   => full,
    empty  => open
  );

  process (clk_i, rst_i)
  begin
    if rst_i = '1' then
      sample_valid <= (others => '0');
    elsif rising_edge(clk_i) then
      if sample_ready_i = '1' then
        -- If we press the left button, remove the echo.
        if full = '0' then
          sample_o <= sample_valid;
        else
          sample_o <= std_logic_vector(signed(sample_valid) + shift_right(signed(fifo_o), 1));
        end if;
      end if;

      if valid_i = '1' then
        sample_valid <= sample_i;
      end if;
    end if;
  end process;

end Behavioral;
