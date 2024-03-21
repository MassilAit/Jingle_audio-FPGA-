library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ROM_jingle is
  port (
    clk_i                : in  std_logic;
    addr_i               : in  std_logic_vector(7 downto 0);
    note_duration_o      : out std_logic_vector(15 downto 0);
    note_start_address_o : out std_logic_vector(11 downto 0);
    note_sample_count_o  : out std_logic_vector(7 downto 0)
    );
end ROM_jingle;

architecture Behavioral of ROM_jingle is

  -- A completer
  
  type ROM_T is array (0 to 1) of std_logic_vector (35 downto 0);
  constant ROM_cst : ROM_T := (
    -- bits 35-20 : durée de note en ms
    -- bits 19-8  : adresse de départ de la note
    -- bits 7-0   : nombre d'echantillons pour la note
    X"0000"&X"000"&X"00",
    X"0000"&X"000"&X"00"
    );
  signal data : std_logic_vector(35 downto 0);

begin

  p_sync : process (clk_i)
  begin
    if rising_edge(clk_i) then
      data <= ROM_cst (to_integer (unsigned (addr_i)));
    end if;
  end process;

  note_duration_o      <= data(35 downto 20);
  note_start_address_o <= data(19 downto 8);
  note_sample_count_o  <= data(7 downto 0);

end Behavioral;
