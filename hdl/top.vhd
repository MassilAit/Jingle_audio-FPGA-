library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity top is
  port (clk_i             : in    std_logic;
        rst_n_i           : in    std_logic;
        codec_scl_io      : inout std_logic;
        codec_sda_io      : inout std_logic;
        codec_mclk_o      : out   std_logic;
        codec_adc_sdata_i : in    std_logic;
        codec_bclk_i      : in    std_logic;
        codec_dac_sdata_o : out   std_logic;
        codec_lrclk_i     : in    std_logic;
        btnd_i            : in    std_logic;
        btnu_i            : in    std_logic;
        oled_dc_n_o       : out   std_logic;
        oled_res_n_o      : out   std_logic;
        oled_sclk_o       : out   std_logic;
        oled_sdo_o        : out   std_logic;
        oled_vbat_n_o     : out   std_logic;
        oled_vdd_n_o      : out   std_logic);
end top;

architecture Behavioral of top is

  component controleur_OLED
    port (
      clk_50mhz_i   : in  std_logic;
      rst_i         : in  std_logic;
      pixel_i       : in  std_logic;
      row_o         : out std_logic_vector(4 downto 0);
      column_o      : out std_logic_vector(6 downto 0);
      oled_dc_n_o   : out std_logic;
      oled_res_n_o  : out std_logic;
      oled_sclk_o   : out std_logic;
      oled_sdo_o    : out std_logic;
      oled_vbat_n_o : out std_logic;
      oled_vdd_n_o  : out std_logic
      );
  end component;

  component controleur_CODEC
    port (clk_50mhz_i       : in    std_logic;
          clk_45mhz_i       : in    std_logic;
          rst_i             : in    std_logic;
          sample_in         : in    std_logic_vector(23 downto 0);
          ready_o           : out   std_logic;
          sample_out        : out   std_logic_vector(23 downto 0);
          valid_o           : out   std_logic;
          codec_scl_io      : inout std_logic;
          codec_sda_io      : inout std_logic;
          codec_mclk_o      : out   std_logic;
          codec_adc_sdata_i : in    std_logic;
          codec_bclk_i      : in    std_logic;
          codec_dac_sdata_o : out   std_logic;
          codec_lrclk_i     : in    std_logic);
  end component;

  component clk_wiz
    port (
      clk_out1 : out std_logic;
      clk_out2 : out std_logic;
      resetn   : in  std_logic;
      locked   : out std_logic;
      clk_in1  : in  std_logic
      );
  end component;

  component generateur_sample
    port (clk_i               : in  std_logic;
          rst_i               : in  std_logic;
          note_start_addr_i   : in  std_logic_vector(11 downto 0);
          note_sample_count_i : in  std_logic_vector(7 downto 0);
          enable_i            : in  std_logic;
          ROM_qsin_addr_o     : out std_logic_vector(11 downto 0);
          ROM_qsin_sample_i   : in  std_logic_vector(7 downto 0);
          sample_ready_i      : in  std_logic;
          sample_out          : out std_logic_vector(23 downto 0));
  end component;

  component MSA_jingle
    port (clk_i            : in  std_logic;
          rst_i            : in  std_logic;
          start_jingle_i   : in  std_logic;
          timing_start_o   : out std_logic;
          timing_ready_i   : in  std_logic;
          jingle_address_o : out std_logic_vector(7 downto 0);
          note_enable_o    : out std_logic);
  end component;

  component ROM_jingle
    port (
      clk_i                : in  std_logic;
      addr_i               : in  std_logic_vector(7 downto 0);
      note_duration_o      : out std_logic_vector(15 downto 0);
      note_start_address_o : out std_logic_vector(11 downto 0);
      note_sample_count_o  : out std_logic_vector(7 downto 0)
      );
  end component;

  component ROM_qsin
    port (
      clk_i    : in  std_logic;
      addr_i   : in  std_logic_vector(11 downto 0);
      sample_o : out std_logic_vector(7 downto 0)
      );
  end component;

  component MSA_timing
    port (clk_i   : in  std_logic;
          rst_i   : in  std_logic;
          start_i : in  std_logic;
          data_i  : in  std_logic_vector (15 downto 0);
          ready_o : out std_logic);
  end component;

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

  component antirebond
    port (
      rst_i : in  std_logic;
      clk_i : in  std_logic;
      btn_i : in  std_logic;
      btn_o : out std_logic
      );
  end component;

  signal locked, rst_sys                          : std_logic;
  signal clk_50mhz, clk_45mhz                     : std_logic;
  signal ROM_qsin_addr                            : std_logic_vector(11 downto 0);
  signal ROM_qsin_sample                          : std_logic_vector(7 downto 0);
  signal sine_sample                              : std_logic_vector(23 downto 0);
  signal vol_sample                               : std_logic_vector(23 downto 0);
  signal codec_sample_out                         : std_logic_vector(23 downto 0);
  signal jingle_addr                              : std_logic_vector(7 downto 0);
  signal note_duration                            : std_logic_vector(15 downto 0);
  signal note_start_address                       : std_logic_vector(11 downto 0);
  signal note_sample_count                        : std_logic_vector(7 downto 0);
  signal jingle_timing_start, jingle_timing_ready : std_logic;
  signal note_enable                              : std_logic;
  signal pixel                                    : std_logic;
  signal row                                      : std_logic_vector(4 downto 0);
  signal column                                   : std_logic_vector(6 downto 0);
  signal btnd_ar, btnu_ar                         : std_logic;
  signal start_jingle                             : std_logic;
  signal codec_ready, codec_valid                 : std_logic;

begin

  inst_modulateur_volume : modulateur_volume
    port map(
      rst_i          => rst_sys,
      clk_i          => clk_50mhz,
      btnd_i         => btnd_ar,
      btnu_i         => btnu_ar,
      sample_in      => sine_sample,
      sample_out     => vol_sample,
      column_i       => column,
      row_i          => row,
      pixel_o        => pixel,
      start_jingle_o => start_jingle);

  inst_ROM_qsin : ROM_qsin
    port map(
      clk_i    => clk_50mhz,
      addr_i   => ROM_qsin_addr,
      sample_o => ROM_qsin_sample
      );

  inst_ROM_jingle : ROM_jingle
    port map(
      clk_i                => clk_50mhz,
      addr_i               => jingle_addr,
      note_duration_o      => note_duration,
      note_start_address_o => note_start_address,
      note_sample_count_o  => note_sample_count
      );

  inst_MSA_jingle : MSA_jingle
    port map (
      clk_i          => clk_50mhz,
      rst_i          => rst_sys,
      start_jingle_i => start_jingle,
      timing_start_o => jingle_timing_start,
      timing_ready_i => jingle_timing_ready,
      jingle_address_o => jingle_addr,
      note_enable_o  => note_enable
      );

  inst_generateur_sample : generateur_sample
    port map (
      clk_i               => clk_50mhz,
      rst_i               => rst_sys,
      note_start_addr_i   => note_start_address,
      note_sample_count_i => note_sample_count,
      enable_i            => note_enable,
      ROM_qsin_addr_o     => ROM_qsin_addr,
      ROM_qsin_sample_i   => ROM_qsin_sample,
      sample_ready_i      => codec_ready,
      sample_out          => sine_sample
      );

  inst_msa_timing_jingle : msa_timing
    port map (
      clk_i   => clk_50mhz,
      rst_i   => rst_sys,
      start_i => jingle_timing_start,
      ready_o => jingle_timing_ready,
      data_i  => note_duration
      );

  inst_clk_wiz_50mhz : clk_wiz
    port map (
      clk_in1  => clk_i,
      resetn   => rst_n_i,
      locked   => locked,
      clk_out1 => clk_50mhz,
      clk_out2 => clk_45mhz);
  rst_sys <= not locked;

  inst_controleur_CODEC : controleur_CODEC
    port map (
      clk_50mhz_i       => clk_50mhz,
      clk_45mhz_i       => clk_45mhz,
      rst_i             => rst_sys,
      sample_in         => vol_sample,
      ready_o           => codec_ready,
      sample_out        => codec_sample_out,
      valid_o           => codec_valid,
      codec_scl_io      => codec_scl_io,
      codec_sda_io      => codec_sda_io,
      codec_mclk_o      => codec_mclk_o,
      codec_adc_sdata_i => codec_adc_sdata_i,
      codec_bclk_i      => codec_bclk_i,
      codec_dac_sdata_o => codec_dac_sdata_o,
      codec_lrclk_i     => codec_lrclk_i);

  inst_controleur_OLED : controleur_OLED
    port map (
      clk_50mhz_i   => clk_50mhz,
      rst_i         => rst_sys,
      pixel_i       => pixel,
      row_o         => row,
      column_o      => column,
      oled_dc_n_o   => oled_dc_n_o,
      oled_res_n_o  => oled_res_n_o,
      oled_sclk_o   => oled_sclk_o,
      oled_sdo_o    => oled_sdo_o,
      oled_vbat_n_o => oled_vbat_n_o,
      oled_vdd_n_o  => oled_vdd_n_o
      );

  inst_ar_btnu : antirebond
    port map (
      rst_i => rst_sys,
      clk_i => clk_50mhz,
      btn_i => btnu_i,
      btn_o => btnu_ar
      );
      
  inst_ar_btnd : antirebond
    port map (
      rst_i => rst_sys,
      clk_i => clk_50mhz,
      btn_i => btnd_i,
      btn_o => btnd_ar
      );
      
end Behavioral;
