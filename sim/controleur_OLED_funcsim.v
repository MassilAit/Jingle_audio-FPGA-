// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Mar 13 10:41:06 2024
// Host        : t480s running 64-bit Manjaro Linux
// Command     : write_verilog -mode funcsim -force controleur_OLED_funcsim.v
// Design      : controleur_OLED
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MSA_Affichage
   (\FSM_sequential_state_r_reg[2]_0 ,
    Q,
    row_o_OBUF,
    \SPI_data_sr_reg[7]_0 ,
    \FSM_onehot_state_r_reg[2] ,
    SPI_ready,
    oled_dc_n_o_OBUF,
    CLK,
    AR,
    D);
  output \FSM_sequential_state_r_reg[2]_0 ;
  output [6:0]Q;
  output [4:0]row_o_OBUF;
  output [7:0]\SPI_data_sr_reg[7]_0 ;
  input \FSM_onehot_state_r_reg[2] ;
  input SPI_ready;
  input oled_dc_n_o_OBUF;
  input CLK;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire \FSM_onehot_state_r_reg[2] ;
  wire \FSM_sequential_state_r[0]_i_1_n_0 ;
  wire \FSM_sequential_state_r[1]_i_1_n_0 ;
  wire \FSM_sequential_state_r[2]_i_1_n_0 ;
  wire \FSM_sequential_state_r[2]_i_2_n_0 ;
  wire \FSM_sequential_state_r[2]_i_3_n_0 ;
  wire \FSM_sequential_state_r[2]_i_4_n_0 ;
  wire \FSM_sequential_state_r[2]_i_5_n_0 ;
  wire \FSM_sequential_state_r_reg[2]_0 ;
  wire [6:0]Q;
  wire SPI_data_sr_en;
  wire [7:0]\SPI_data_sr_reg[7]_0 ;
  wire SPI_ready;
  wire col_idx_f;
  wire \col_idx_r[0]_i_1_n_0 ;
  wire \col_idx_r[1]_i_1_n_0 ;
  wire \col_idx_r[2]_i_1_n_0 ;
  wire \col_idx_r[3]_i_1_n_0 ;
  wire \col_idx_r[4]_i_1_n_0 ;
  wire \col_idx_r[5]_i_1_n_0 ;
  wire \col_idx_r[6]_i_2_n_0 ;
  wire \col_idx_r[6]_i_3_n_0 ;
  wire oled_dc_n_o_OBUF;
  wire \page_idx_r[0]_i_1_n_0 ;
  wire \page_idx_r[1]_i_1_n_0 ;
  wire \row_idx_r[0]_i_1_n_0 ;
  wire \row_idx_r[1]_i_1_n_0 ;
  wire \row_idx_r[2]_i_1_n_0 ;
  wire [4:0]row_o_OBUF;
  wire [2:0]state_r;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \FSM_onehot_state_r[2]_i_2 
       (.I0(\FSM_onehot_state_r_reg[2] ),
        .I1(state_r[2]),
        .I2(state_r[1]),
        .I3(SPI_ready),
        .I4(state_r[0]),
        .O(\FSM_sequential_state_r_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF8FFF0000)) 
    \FSM_sequential_state_r[0]_i_1 
       (.I0(row_o_OBUF[3]),
        .I1(row_o_OBUF[4]),
        .I2(state_r[2]),
        .I3(state_r[1]),
        .I4(\FSM_sequential_state_r[2]_i_4_n_0 ),
        .I5(state_r[0]),
        .O(\FSM_sequential_state_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h070FFFFFF0F00000)) 
    \FSM_sequential_state_r[1]_i_1 
       (.I0(row_o_OBUF[4]),
        .I1(row_o_OBUF[3]),
        .I2(state_r[0]),
        .I3(state_r[2]),
        .I4(\FSM_sequential_state_r[2]_i_4_n_0 ),
        .I5(state_r[1]),
        .O(\FSM_sequential_state_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1F11FFFF8F880000)) 
    \FSM_sequential_state_r[2]_i_1 
       (.I0(state_r[1]),
        .I1(state_r[0]),
        .I2(\FSM_sequential_state_r[2]_i_2_n_0 ),
        .I3(\FSM_sequential_state_r[2]_i_3_n_0 ),
        .I4(\FSM_sequential_state_r[2]_i_4_n_0 ),
        .I5(state_r[2]),
        .O(\FSM_sequential_state_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state_r[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\FSM_sequential_state_r[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \FSM_sequential_state_r[2]_i_3 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(state_r[1]),
        .I5(state_r[2]),
        .O(\FSM_sequential_state_r[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE3F3E2F2)) 
    \FSM_sequential_state_r[2]_i_4 
       (.I0(state_r[0]),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(SPI_ready),
        .I4(oled_dc_n_o_OBUF),
        .I5(\FSM_sequential_state_r[2]_i_5_n_0 ),
        .O(\FSM_sequential_state_r[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAC0000000)) 
    \FSM_sequential_state_r[2]_i_5 
       (.I0(SPI_ready),
        .I1(row_o_OBUF[1]),
        .I2(row_o_OBUF[0]),
        .I3(row_o_OBUF[2]),
        .I4(state_r[1]),
        .I5(state_r[0]),
        .O(\FSM_sequential_state_r[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "wait_init:000,wait_spi_ready:011,start_spi:100,incr_col:101,incr_page:110,incr_row:010,new_frame:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_r[0]_i_1_n_0 ),
        .Q(state_r[0]));
  (* FSM_ENCODED_STATES = "wait_init:000,wait_spi_ready:011,start_spi:100,incr_col:101,incr_page:110,incr_row:010,new_frame:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_r[1]_i_1_n_0 ),
        .Q(state_r[1]));
  (* FSM_ENCODED_STATES = "wait_init:000,wait_spi_ready:011,start_spi:100,incr_col:101,incr_page:110,incr_row:010,new_frame:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_r[2]_i_1_n_0 ),
        .Q(state_r[2]));
  LUT3 #(
    .INIT(8'h04)) 
    \SPI_data_sr[7]_i_1 
       (.I0(state_r[2]),
        .I1(state_r[1]),
        .I2(state_r[0]),
        .O(SPI_data_sr_en));
  FDCE #(
    .INIT(1'b0)) 
    \SPI_data_sr_reg[0] 
       (.C(CLK),
        .CE(SPI_data_sr_en),
        .CLR(AR),
        .D(\SPI_data_sr_reg[7]_0 [1]),
        .Q(\SPI_data_sr_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \SPI_data_sr_reg[1] 
       (.C(CLK),
        .CE(SPI_data_sr_en),
        .CLR(AR),
        .D(\SPI_data_sr_reg[7]_0 [2]),
        .Q(\SPI_data_sr_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \SPI_data_sr_reg[2] 
       (.C(CLK),
        .CE(SPI_data_sr_en),
        .CLR(AR),
        .D(\SPI_data_sr_reg[7]_0 [3]),
        .Q(\SPI_data_sr_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \SPI_data_sr_reg[3] 
       (.C(CLK),
        .CE(SPI_data_sr_en),
        .CLR(AR),
        .D(\SPI_data_sr_reg[7]_0 [4]),
        .Q(\SPI_data_sr_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \SPI_data_sr_reg[4] 
       (.C(CLK),
        .CE(SPI_data_sr_en),
        .CLR(AR),
        .D(\SPI_data_sr_reg[7]_0 [5]),
        .Q(\SPI_data_sr_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \SPI_data_sr_reg[5] 
       (.C(CLK),
        .CE(SPI_data_sr_en),
        .CLR(AR),
        .D(\SPI_data_sr_reg[7]_0 [6]),
        .Q(\SPI_data_sr_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \SPI_data_sr_reg[6] 
       (.C(CLK),
        .CE(SPI_data_sr_en),
        .CLR(AR),
        .D(\SPI_data_sr_reg[7]_0 [7]),
        .Q(\SPI_data_sr_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \SPI_data_sr_reg[7] 
       (.C(CLK),
        .CE(SPI_data_sr_en),
        .CLR(AR),
        .D(D),
        .Q(\SPI_data_sr_reg[7]_0 [7]));
  LUT2 #(
    .INIT(4'h2)) 
    \col_idx_r[0]_i_1 
       (.I0(state_r[2]),
        .I1(Q[0]),
        .O(\col_idx_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \col_idx_r[1]_i_1 
       (.I0(state_r[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\col_idx_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \col_idx_r[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(state_r[2]),
        .I3(Q[2]),
        .O(\col_idx_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \col_idx_r[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(state_r[2]),
        .I4(Q[3]),
        .O(\col_idx_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \col_idx_r[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\col_idx_r[6]_i_3_n_0 ),
        .I5(Q[4]),
        .O(\col_idx_r[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDF002000)) 
    \col_idx_r[5]_i_1 
       (.I0(Q[4]),
        .I1(\FSM_sequential_state_r[2]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(state_r[2]),
        .I4(Q[5]),
        .O(\col_idx_r[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \col_idx_r[6]_i_1 
       (.I0(state_r[0]),
        .I1(state_r[1]),
        .O(col_idx_f));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \col_idx_r[6]_i_2 
       (.I0(Q[3]),
        .I1(\FSM_sequential_state_r[2]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(\col_idx_r[6]_i_3_n_0 ),
        .I5(Q[6]),
        .O(\col_idx_r[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \col_idx_r[6]_i_3 
       (.I0(state_r[2]),
        .I1(state_r[1]),
        .O(\col_idx_r[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \col_idx_r_reg[0] 
       (.C(CLK),
        .CE(col_idx_f),
        .CLR(AR),
        .D(\col_idx_r[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \col_idx_r_reg[1] 
       (.C(CLK),
        .CE(col_idx_f),
        .CLR(AR),
        .D(\col_idx_r[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \col_idx_r_reg[2] 
       (.C(CLK),
        .CE(col_idx_f),
        .CLR(AR),
        .D(\col_idx_r[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \col_idx_r_reg[3] 
       (.C(CLK),
        .CE(col_idx_f),
        .CLR(AR),
        .D(\col_idx_r[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \col_idx_r_reg[4] 
       (.C(CLK),
        .CE(col_idx_f),
        .CLR(AR),
        .D(\col_idx_r[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \col_idx_r_reg[5] 
       (.C(CLK),
        .CE(col_idx_f),
        .CLR(AR),
        .D(\col_idx_r[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \col_idx_r_reg[6] 
       (.C(CLK),
        .CE(col_idx_f),
        .CLR(AR),
        .D(\col_idx_r[6]_i_2_n_0 ),
        .Q(Q[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDB20)) 
    \page_idx_r[0]_i_1 
       (.I0(state_r[2]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(row_o_OBUF[3]),
        .O(\page_idx_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF7CF0800)) 
    \page_idx_r[1]_i_1 
       (.I0(row_o_OBUF[3]),
        .I1(state_r[2]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .I4(row_o_OBUF[4]),
        .O(\page_idx_r[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \page_idx_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\page_idx_r[0]_i_1_n_0 ),
        .Q(row_o_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \page_idx_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\page_idx_r[1]_i_1_n_0 ),
        .Q(row_o_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEB10)) 
    \row_idx_r[0]_i_1 
       (.I0(state_r[2]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(row_o_OBUF[0]),
        .O(\row_idx_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFDCF0200)) 
    \row_idx_r[1]_i_1 
       (.I0(row_o_OBUF[0]),
        .I1(state_r[2]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .I4(row_o_OBUF[1]),
        .O(\row_idx_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7F0FF00080000)) 
    \row_idx_r[2]_i_1 
       (.I0(row_o_OBUF[1]),
        .I1(row_o_OBUF[0]),
        .I2(state_r[2]),
        .I3(state_r[0]),
        .I4(state_r[1]),
        .I5(row_o_OBUF[2]),
        .O(\row_idx_r[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \row_idx_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\row_idx_r[0]_i_1_n_0 ),
        .Q(row_o_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \row_idx_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\row_idx_r[1]_i_1_n_0 ),
        .Q(row_o_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \row_idx_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\row_idx_r[2]_i_1_n_0 ),
        .Q(row_o_OBUF[2]));
endmodule

module MSA_SPI
   (\FSM_onehot_state_r_reg[0]_0 ,
    SPI_ready,
    oled_sdo_o_OBUF,
    oled_sclk_o_OBUF,
    CLK,
    AR,
    Q,
    \FSM_onehot_state_r[2]_i_2 ,
    \data_sr_reg[1]_0 ,
    \data_sr_reg[1]_1 ,
    \data_sr_reg[7]_0 ,
    \data_sr_reg[2]_0 ,
    \data_sr_reg[3]_0 ,
    \data_sr_reg[4]_0 ,
    \data_sr_reg[5]_0 ,
    \data_sr_reg[6]_0 ,
    \data_sr_reg[7]_1 ,
    \FSM_onehot_state_r_reg[2]_0 ,
    D);
  output \FSM_onehot_state_r_reg[0]_0 ;
  output SPI_ready;
  output oled_sdo_o_OBUF;
  output oled_sclk_o_OBUF;
  input CLK;
  input [0:0]AR;
  input [0:0]Q;
  input [0:0]\FSM_onehot_state_r[2]_i_2 ;
  input \data_sr_reg[1]_0 ;
  input \data_sr_reg[1]_1 ;
  input [6:0]\data_sr_reg[7]_0 ;
  input \data_sr_reg[2]_0 ;
  input \data_sr_reg[3]_0 ;
  input \data_sr_reg[4]_0 ;
  input \data_sr_reg[5]_0 ;
  input \data_sr_reg[6]_0 ;
  input \data_sr_reg[7]_1 ;
  input \FSM_onehot_state_r_reg[2]_0 ;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire \FSM_onehot_state_r[0]_i_1_n_0 ;
  wire \FSM_onehot_state_r[1]_i_1_n_0 ;
  wire \FSM_onehot_state_r[1]_i_2_n_0 ;
  wire \FSM_onehot_state_r[2]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_state_r[2]_i_2 ;
  wire \FSM_onehot_state_r_reg[0]_0 ;
  wire \FSM_onehot_state_r_reg[2]_0 ;
  wire \FSM_onehot_state_r_reg_n_0_[1] ;
  wire \FSM_onehot_state_r_reg_n_0_[2] ;
  wire [0:0]Q;
  wire SPI_ready;
  wire \data_sr[1]_i_1_n_0 ;
  wire \data_sr[2]_i_1_n_0 ;
  wire \data_sr[3]_i_1_n_0 ;
  wire \data_sr[4]_i_1_n_0 ;
  wire \data_sr[5]_i_1_n_0 ;
  wire \data_sr[6]_i_1_n_0 ;
  wire \data_sr[7]_i_1_n_0 ;
  wire \data_sr[7]_i_2_n_0 ;
  wire [2:0]data_sr_count_f;
  wire [2:0]data_sr_count_r;
  wire \data_sr_reg[1]_0 ;
  wire \data_sr_reg[1]_1 ;
  wire \data_sr_reg[2]_0 ;
  wire \data_sr_reg[3]_0 ;
  wire \data_sr_reg[4]_0 ;
  wire \data_sr_reg[5]_0 ;
  wire \data_sr_reg[6]_0 ;
  wire [6:0]\data_sr_reg[7]_0 ;
  wire \data_sr_reg[7]_1 ;
  wire [7:1]in8;
  wire oled_sclk_o_OBUF;
  wire oled_sdo_o_OBUF;
  wire p_0_in;
  wire \sclk_event_tick_counter_r[0]_i_1_n_0 ;
  wire \sclk_event_tick_counter_r[1]_i_1_n_0 ;
  wire \sclk_event_tick_counter_r[2]_i_1_n_0 ;
  wire \sclk_event_tick_counter_r[3]_i_1_n_0 ;
  wire \sclk_event_tick_counter_r_reg_n_0_[0] ;
  wire \sclk_event_tick_counter_r_reg_n_0_[1] ;
  wire \sclk_event_tick_counter_r_reg_n_0_[2] ;
  wire \sclk_event_tick_counter_r_reg_n_0_[3] ;
  wire sclk_event_tick_r;
  wire sclk_event_tick_r_reg_n_0;

  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \FSM_onehot_state_r[0]_i_1 
       (.I0(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I1(data_sr_count_r[2]),
        .I2(data_sr_count_r[1]),
        .I3(data_sr_count_r[0]),
        .I4(\FSM_onehot_state_r_reg[2]_0 ),
        .I5(SPI_ready),
        .O(\FSM_onehot_state_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF8AFFFFFF8A0000)) 
    \FSM_onehot_state_r[1]_i_1 
       (.I0(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_r[1]_i_2_n_0 ),
        .I2(data_sr_count_r[2]),
        .I3(SPI_ready),
        .I4(\FSM_onehot_state_r_reg[2]_0 ),
        .I5(\FSM_onehot_state_r_reg_n_0_[1] ),
        .O(\FSM_onehot_state_r[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state_r[1]_i_2 
       (.I0(data_sr_count_r[1]),
        .I1(data_sr_count_r[0]),
        .O(\FSM_onehot_state_r[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state_r[2]_i_1 
       (.I0(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_r_reg[2]_0 ),
        .I2(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(\FSM_onehot_state_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF08FF080808)) 
    \FSM_onehot_state_r[2]_i_3 
       (.I0(SPI_ready),
        .I1(Q),
        .I2(\FSM_onehot_state_r[2]_i_2 ),
        .I3(sclk_event_tick_r_reg_n_0),
        .I4(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(\FSM_onehot_state_r_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "sclk_high:100,sclk_low:010,ready:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_r[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(SPI_ready));
  (* FSM_ENCODED_STATES = "sclk_high:100,sclk_low:010,ready:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_state_r[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_r_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "sclk_high:100,sclk_low:010,ready:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_state_r[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_r_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \data_sr[1]_i_1 
       (.I0(\data_sr_reg[1]_0 ),
        .I1(\data_sr_reg[1]_1 ),
        .I2(\data_sr_reg[7]_0 [0]),
        .I3(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I4(in8[1]),
        .I5(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(\data_sr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \data_sr[2]_i_1 
       (.I0(\data_sr_reg[2]_0 ),
        .I1(\data_sr_reg[1]_1 ),
        .I2(\data_sr_reg[7]_0 [1]),
        .I3(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I4(in8[2]),
        .I5(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(\data_sr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \data_sr[3]_i_1 
       (.I0(\data_sr_reg[3]_0 ),
        .I1(\data_sr_reg[1]_1 ),
        .I2(\data_sr_reg[7]_0 [2]),
        .I3(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I4(in8[3]),
        .I5(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(\data_sr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \data_sr[4]_i_1 
       (.I0(\data_sr_reg[4]_0 ),
        .I1(\data_sr_reg[1]_1 ),
        .I2(\data_sr_reg[7]_0 [3]),
        .I3(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I4(in8[4]),
        .I5(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(\data_sr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \data_sr[5]_i_1 
       (.I0(\data_sr_reg[5]_0 ),
        .I1(\data_sr_reg[1]_1 ),
        .I2(\data_sr_reg[7]_0 [4]),
        .I3(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I4(in8[5]),
        .I5(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(\data_sr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \data_sr[6]_i_1 
       (.I0(\data_sr_reg[6]_0 ),
        .I1(\data_sr_reg[1]_1 ),
        .I2(\data_sr_reg[7]_0 [5]),
        .I3(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I4(in8[6]),
        .I5(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(\data_sr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \data_sr[7]_i_1 
       (.I0(sclk_event_tick_r_reg_n_0),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I2(SPI_ready),
        .O(\data_sr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \data_sr[7]_i_2 
       (.I0(\data_sr_reg[7]_1 ),
        .I1(\data_sr_reg[1]_1 ),
        .I2(\data_sr_reg[7]_0 [6]),
        .I3(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I4(in8[7]),
        .I5(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(\data_sr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_sr_count_r[0]_i_1 
       (.I0(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I1(data_sr_count_r[0]),
        .O(data_sr_count_f[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \data_sr_count_r[1]_i_1 
       (.I0(data_sr_count_r[0]),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I2(data_sr_count_r[1]),
        .O(data_sr_count_f[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \data_sr_count_r[2]_i_1 
       (.I0(data_sr_count_r[1]),
        .I1(data_sr_count_r[0]),
        .I2(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I3(data_sr_count_r[2]),
        .O(data_sr_count_f[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_count_r_reg[0] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_sr_count_f[0]),
        .Q(data_sr_count_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_count_r_reg[1] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_sr_count_f[1]),
        .Q(data_sr_count_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_count_r_reg[2] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(data_sr_count_f[2]),
        .Q(data_sr_count_r[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_reg[0] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D),
        .Q(in8[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_reg[1] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_sr[1]_i_1_n_0 ),
        .Q(in8[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_reg[2] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_sr[2]_i_1_n_0 ),
        .Q(in8[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_reg[3] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_sr[3]_i_1_n_0 ),
        .Q(in8[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_reg[4] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_sr[4]_i_1_n_0 ),
        .Q(in8[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_reg[5] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_sr[5]_i_1_n_0 ),
        .Q(in8[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_reg[6] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_sr[6]_i_1_n_0 ),
        .Q(in8[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_sr_reg[7] 
       (.C(CLK),
        .CE(\data_sr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\data_sr[7]_i_2_n_0 ),
        .Q(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    oled_sclk_o_OBUF_inst_i_1
       (.I0(SPI_ready),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(oled_sclk_o_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    oled_sdo_o_OBUF_inst_i_1
       (.I0(p_0_in),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[1] ),
        .O(oled_sdo_o_OBUF));
  LUT6 #(
    .INIT(64'h000000001F1F1F00)) 
    \sclk_event_tick_counter_r[0]_i_1 
       (.I0(\sclk_event_tick_counter_r_reg_n_0_[2] ),
        .I1(\sclk_event_tick_counter_r_reg_n_0_[1] ),
        .I2(\sclk_event_tick_counter_r_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I5(\sclk_event_tick_counter_r_reg_n_0_[0] ),
        .O(\sclk_event_tick_counter_r[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000E0E00)) 
    \sclk_event_tick_counter_r[1]_i_1 
       (.I0(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I2(\sclk_event_tick_counter_r_reg_n_0_[3] ),
        .I3(\sclk_event_tick_counter_r_reg_n_0_[1] ),
        .I4(\sclk_event_tick_counter_r_reg_n_0_[0] ),
        .O(\sclk_event_tick_counter_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000E0E000E0E0000)) 
    \sclk_event_tick_counter_r[2]_i_1 
       (.I0(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I2(\sclk_event_tick_counter_r_reg_n_0_[3] ),
        .I3(\sclk_event_tick_counter_r_reg_n_0_[1] ),
        .I4(\sclk_event_tick_counter_r_reg_n_0_[2] ),
        .I5(\sclk_event_tick_counter_r_reg_n_0_[0] ),
        .O(\sclk_event_tick_counter_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E000000000000E0)) 
    \sclk_event_tick_counter_r[3]_i_1 
       (.I0(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I2(\sclk_event_tick_counter_r_reg_n_0_[3] ),
        .I3(\sclk_event_tick_counter_r_reg_n_0_[1] ),
        .I4(\sclk_event_tick_counter_r_reg_n_0_[2] ),
        .I5(\sclk_event_tick_counter_r_reg_n_0_[0] ),
        .O(\sclk_event_tick_counter_r[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_event_tick_counter_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\sclk_event_tick_counter_r[0]_i_1_n_0 ),
        .Q(\sclk_event_tick_counter_r_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_event_tick_counter_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\sclk_event_tick_counter_r[1]_i_1_n_0 ),
        .Q(\sclk_event_tick_counter_r_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_event_tick_counter_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\sclk_event_tick_counter_r[2]_i_1_n_0 ),
        .Q(\sclk_event_tick_counter_r_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_event_tick_counter_r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\sclk_event_tick_counter_r[3]_i_1_n_0 ),
        .Q(\sclk_event_tick_counter_r_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0E0E000)) 
    sclk_event_tick_r_i_1
       (.I0(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[1] ),
        .I2(\sclk_event_tick_counter_r_reg_n_0_[3] ),
        .I3(\sclk_event_tick_counter_r_reg_n_0_[1] ),
        .I4(\sclk_event_tick_counter_r_reg_n_0_[2] ),
        .I5(\sclk_event_tick_counter_r_reg_n_0_[0] ),
        .O(sclk_event_tick_r));
  FDCE #(
    .INIT(1'b0)) 
    sclk_event_tick_r_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(sclk_event_tick_r),
        .Q(sclk_event_tick_r_reg_n_0));
endmodule

module MSA_init
   (Q,
    D,
    \FSM_onehot_state_r_reg[2]_0 ,
    \FSM_onehot_state_r_reg[1]_0 ,
    \FSM_onehot_state_r_reg[1]_1 ,
    \FSM_onehot_state_r_reg[1]_2 ,
    \FSM_onehot_state_r_reg[1]_3 ,
    \FSM_onehot_state_r_reg[1]_4 ,
    \FSM_onehot_state_r_reg[1]_5 ,
    \FSM_onehot_state_r_reg[1]_6 ,
    oled_dc_n_o_OBUF,
    out,
    \FSM_onehot_state_r_reg[0]_0 ,
    \data_sr_reg[0] ,
    \data_sr_reg[7] ,
    SPI_ready,
    CLK,
    AR);
  output [0:0]Q;
  output [0:0]D;
  output \FSM_onehot_state_r_reg[2]_0 ;
  output \FSM_onehot_state_r_reg[1]_0 ;
  output \FSM_onehot_state_r_reg[1]_1 ;
  output \FSM_onehot_state_r_reg[1]_2 ;
  output \FSM_onehot_state_r_reg[1]_3 ;
  output \FSM_onehot_state_r_reg[1]_4 ;
  output \FSM_onehot_state_r_reg[1]_5 ;
  output \FSM_onehot_state_r_reg[1]_6 ;
  output oled_dc_n_o_OBUF;
  output [11:0]out;
  input \FSM_onehot_state_r_reg[0]_0 ;
  input [0:0]\data_sr_reg[0] ;
  input [7:0]\data_sr_reg[7] ;
  input SPI_ready;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire \FSM_onehot_state_r[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state_r[0]_i_2_n_0 ;
  wire \FSM_onehot_state_r[2]_i_1__0_n_0 ;
  wire \FSM_onehot_state_r[3]_i_1_n_0 ;
  wire \FSM_onehot_state_r[3]_i_2_n_0 ;
  wire \FSM_onehot_state_r_reg[0]_0 ;
  wire \FSM_onehot_state_r_reg[1]_0 ;
  wire \FSM_onehot_state_r_reg[1]_1 ;
  wire \FSM_onehot_state_r_reg[1]_2 ;
  wire \FSM_onehot_state_r_reg[1]_3 ;
  wire \FSM_onehot_state_r_reg[1]_4 ;
  wire \FSM_onehot_state_r_reg[1]_5 ;
  wire \FSM_onehot_state_r_reg[1]_6 ;
  wire \FSM_onehot_state_r_reg[2]_0 ;
  wire \FSM_onehot_state_r_reg_n_0_[0] ;
  wire \FSM_onehot_state_r_reg_n_0_[2] ;
  wire \FSM_onehot_state_r_reg_n_0_[3] ;
  wire [0:0]Q;
  wire [5:0]ROM_oled_cmd_addr_f0_in;
  wire [4:0]ROM_oled_cmd_addr_r_reg;
  wire [5:5]ROM_oled_cmd_addr_r_reg__0;
  wire SPI_ready;
  wire \data_sr[0]_i_2_n_0 ;
  wire [0:0]\data_sr_reg[0] ;
  wire [7:0]\data_sr_reg[7] ;
  wire oled_dc_n_o_OBUF;
  wire [11:0]out;

  LUT6 #(
    .INIT(64'h0002000200020000)) 
    \FSM_onehot_state_r[0]_i_1__0 
       (.I0(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I3(Q),
        .I4(ROM_oled_cmd_addr_r_reg[3]),
        .I5(\FSM_onehot_state_r[0]_i_2_n_0 ),
        .O(\FSM_onehot_state_r[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_state_r[0]_i_2 
       (.I0(ROM_oled_cmd_addr_r_reg[4]),
        .I1(ROM_oled_cmd_addr_r_reg[0]),
        .I2(ROM_oled_cmd_addr_r_reg[1]),
        .I3(ROM_oled_cmd_addr_r_reg[2]),
        .I4(ROM_oled_cmd_addr_r_reg__0),
        .O(\FSM_onehot_state_r[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state_r[2]_i_1__0 
       (.I0(Q),
        .I1(\FSM_onehot_state_r_reg_n_0_[0] ),
        .O(\FSM_onehot_state_r[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFD8)) 
    \FSM_onehot_state_r[3]_i_1 
       (.I0(\FSM_onehot_state_r_reg[0]_0 ),
        .I1(Q),
        .I2(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_r_reg_n_0_[3] ),
        .O(\FSM_onehot_state_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state_r[3]_i_2 
       (.I0(Q),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[0] ),
        .O(\FSM_onehot_state_r[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "send_cmd:00010,wait_ready:00100,increment_addr:01000,init:00001,iSTATE:10000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_r_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state_r[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_r[0]_i_1__0_n_0 ),
        .PRE(AR),
        .Q(\FSM_onehot_state_r_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "send_cmd:00010,wait_ready:00100,increment_addr:01000,init:00001,iSTATE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state_r[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_r_reg_n_0_[0] ),
        .Q(Q));
  (* FSM_ENCODED_STATES = "send_cmd:00010,wait_ready:00100,increment_addr:01000,init:00001,iSTATE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state_r[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_r[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_r_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "send_cmd:00010,wait_ready:00100,increment_addr:01000,init:00001,iSTATE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_r_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state_r[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_onehot_state_r[3]_i_2_n_0 ),
        .Q(\FSM_onehot_state_r_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ROM_oled_cmd_addr_r[0]_i_1 
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .O(ROM_oled_cmd_addr_f0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ROM_oled_cmd_addr_r[1]_i_1 
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .O(ROM_oled_cmd_addr_f0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ROM_oled_cmd_addr_r[2]_i_1 
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .O(ROM_oled_cmd_addr_f0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ROM_oled_cmd_addr_r[3]_i_1 
       (.I0(ROM_oled_cmd_addr_r_reg[2]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[0]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .O(ROM_oled_cmd_addr_f0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ROM_oled_cmd_addr_r[4]_i_1 
       (.I0(ROM_oled_cmd_addr_r_reg[3]),
        .I1(ROM_oled_cmd_addr_r_reg[0]),
        .I2(ROM_oled_cmd_addr_r_reg[1]),
        .I3(ROM_oled_cmd_addr_r_reg[2]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(ROM_oled_cmd_addr_f0_in[4]));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCCC)) 
    \ROM_oled_cmd_addr_r[5]_i_1 
       (.I0(ROM_oled_cmd_addr_r_reg[3]),
        .I1(ROM_oled_cmd_addr_r_reg__0),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[1]),
        .I4(ROM_oled_cmd_addr_r_reg[0]),
        .I5(ROM_oled_cmd_addr_r_reg[4]),
        .O(ROM_oled_cmd_addr_f0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_oled_cmd_addr_r_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state_r_reg_n_0_[3] ),
        .CLR(AR),
        .D(ROM_oled_cmd_addr_f0_in[0]),
        .Q(ROM_oled_cmd_addr_r_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_oled_cmd_addr_r_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state_r_reg_n_0_[3] ),
        .CLR(AR),
        .D(ROM_oled_cmd_addr_f0_in[1]),
        .Q(ROM_oled_cmd_addr_r_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_oled_cmd_addr_r_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state_r_reg_n_0_[3] ),
        .CLR(AR),
        .D(ROM_oled_cmd_addr_f0_in[2]),
        .Q(ROM_oled_cmd_addr_r_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_oled_cmd_addr_r_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state_r_reg_n_0_[3] ),
        .CLR(AR),
        .D(ROM_oled_cmd_addr_f0_in[3]),
        .Q(ROM_oled_cmd_addr_r_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_oled_cmd_addr_r_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_state_r_reg_n_0_[3] ),
        .CLR(AR),
        .D(ROM_oled_cmd_addr_f0_in[4]),
        .Q(ROM_oled_cmd_addr_r_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_oled_cmd_addr_r_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_state_r_reg_n_0_[3] ),
        .CLR(AR),
        .D(ROM_oled_cmd_addr_f0_in[5]),
        .Q(ROM_oled_cmd_addr_r_reg__0));
  LUT4 #(
    .INIT(16'hF888)) 
    \data_sr[0]_i_1 
       (.I0(\data_sr_reg[0] ),
        .I1(\FSM_onehot_state_r_reg[2]_0 ),
        .I2(\data_sr_reg[7] [0]),
        .I3(\data_sr[0]_i_2_n_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \data_sr[0]_i_2 
       (.I0(SPI_ready),
        .I1(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I4(Q),
        .O(\data_sr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \data_sr[1]_i_2 
       (.I0(Q),
        .I1(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I4(SPI_ready),
        .I5(\data_sr_reg[7] [1]),
        .O(\FSM_onehot_state_r_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \data_sr[2]_i_2 
       (.I0(Q),
        .I1(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I4(SPI_ready),
        .I5(\data_sr_reg[7] [2]),
        .O(\FSM_onehot_state_r_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \data_sr[3]_i_2 
       (.I0(Q),
        .I1(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I4(SPI_ready),
        .I5(\data_sr_reg[7] [3]),
        .O(\FSM_onehot_state_r_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \data_sr[4]_i_2 
       (.I0(Q),
        .I1(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I4(SPI_ready),
        .I5(\data_sr_reg[7] [4]),
        .O(\FSM_onehot_state_r_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \data_sr[5]_i_2 
       (.I0(Q),
        .I1(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I4(SPI_ready),
        .I5(\data_sr_reg[7] [5]),
        .O(\FSM_onehot_state_r_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \data_sr[6]_i_2 
       (.I0(Q),
        .I1(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I4(SPI_ready),
        .I5(\data_sr_reg[7] [6]),
        .O(\FSM_onehot_state_r_reg[1]_5 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \data_sr[7]_i_3 
       (.I0(Q),
        .I1(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I4(SPI_ready),
        .I5(\data_sr_reg[7] [7]),
        .O(\FSM_onehot_state_r_reg[1]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \data_sr[7]_i_4 
       (.I0(\FSM_onehot_state_r_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I3(Q),
        .I4(SPI_ready),
        .O(\FSM_onehot_state_r_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h019486DD)) 
    g0_b0
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00B0A402)) 
    g0_b1
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    g0_b10
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFE00010D)) 
    g0_b11
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h01108532)) 
    g0_b2
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0010A452)) 
    g0_b3
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h001020E0)) 
    g0_b4
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h01358982)) 
    g0_b5
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h001031C0)) 
    g0_b6
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0100BAD2)) 
    g0_b7
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    g0_b8
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFE0000FF)) 
    g0_b9
       (.I0(ROM_oled_cmd_addr_r_reg[0]),
        .I1(ROM_oled_cmd_addr_r_reg[1]),
        .I2(ROM_oled_cmd_addr_r_reg[2]),
        .I3(ROM_oled_cmd_addr_r_reg[3]),
        .I4(ROM_oled_cmd_addr_r_reg[4]),
        .O(out[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    oled_dc_n_o_OBUF_inst_i_1
       (.I0(Q),
        .I1(\FSM_onehot_state_r_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_r_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_r_reg_n_0_[2] ),
        .O(oled_dc_n_o_OBUF));
endmodule

module MSA_timing
   (\FSM_sequential_state_r_reg[0]_0 ,
    CLK,
    AR,
    Q,
    SPI_ready,
    \FSM_sequential_state_r[0]_i_2_0 );
  output \FSM_sequential_state_r_reg[0]_0 ;
  input CLK;
  input [0:0]AR;
  input [8:0]Q;
  input SPI_ready;
  input [0:0]\FSM_sequential_state_r[0]_i_2_0 ;

  wire [0:0]AR;
  wire CLK;
  wire \FSM_sequential_state_r[0]_i_1__0_n_0 ;
  wire [0:0]\FSM_sequential_state_r[0]_i_2_0 ;
  wire \FSM_sequential_state_r[0]_i_2_n_0 ;
  wire \FSM_sequential_state_r[0]_i_3_n_0 ;
  wire \FSM_sequential_state_r[0]_i_4_n_0 ;
  wire \FSM_sequential_state_r[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_r[1]_i_2_n_0 ;
  wire \FSM_sequential_state_r[1]_i_3_n_0 ;
  wire \FSM_sequential_state_r_reg[0]_0 ;
  wire [8:0]Q;
  wire SPI_ready;
  wire [15:1]in7;
  wire ms_counter_f0_carry__0_n_0;
  wire ms_counter_f0_carry__0_n_1;
  wire ms_counter_f0_carry__0_n_2;
  wire ms_counter_f0_carry__0_n_3;
  wire ms_counter_f0_carry__1_n_0;
  wire ms_counter_f0_carry__1_n_1;
  wire ms_counter_f0_carry__1_n_2;
  wire ms_counter_f0_carry__1_n_3;
  wire ms_counter_f0_carry__2_n_2;
  wire ms_counter_f0_carry__2_n_3;
  wire ms_counter_f0_carry_n_0;
  wire ms_counter_f0_carry_n_1;
  wire ms_counter_f0_carry_n_2;
  wire ms_counter_f0_carry_n_3;
  wire [15:0]ms_counter_r;
  wire \ms_counter_r[0]_i_1_n_0 ;
  wire \ms_counter_r[10]_i_1_n_0 ;
  wire \ms_counter_r[11]_i_1_n_0 ;
  wire \ms_counter_r[12]_i_1_n_0 ;
  wire \ms_counter_r[13]_i_1_n_0 ;
  wire \ms_counter_r[14]_i_1_n_0 ;
  wire \ms_counter_r[15]_i_1_n_0 ;
  wire \ms_counter_r[1]_i_1_n_0 ;
  wire \ms_counter_r[2]_i_1_n_0 ;
  wire \ms_counter_r[3]_i_1_n_0 ;
  wire \ms_counter_r[4]_i_1_n_0 ;
  wire \ms_counter_r[5]_i_1_n_0 ;
  wire \ms_counter_r[6]_i_1_n_0 ;
  wire \ms_counter_r[7]_i_1_n_0 ;
  wire \ms_counter_r[8]_i_1_n_0 ;
  wire \ms_counter_r[9]_i_1_n_0 ;
  wire [7:0]ms_threshold_r;
  wire ms_threshold_r0;
  wire [15:0]ms_tick_counter_r;
  wire [15:1]ms_tick_counter_r0;
  wire ms_tick_counter_r0_carry__0_n_0;
  wire ms_tick_counter_r0_carry__0_n_1;
  wire ms_tick_counter_r0_carry__0_n_2;
  wire ms_tick_counter_r0_carry__0_n_3;
  wire ms_tick_counter_r0_carry__1_n_0;
  wire ms_tick_counter_r0_carry__1_n_1;
  wire ms_tick_counter_r0_carry__1_n_2;
  wire ms_tick_counter_r0_carry__1_n_3;
  wire ms_tick_counter_r0_carry__2_n_2;
  wire ms_tick_counter_r0_carry__2_n_3;
  wire ms_tick_counter_r0_carry_n_0;
  wire ms_tick_counter_r0_carry_n_1;
  wire ms_tick_counter_r0_carry_n_2;
  wire ms_tick_counter_r0_carry_n_3;
  wire \ms_tick_counter_r[15]_i_2_n_0 ;
  wire \ms_tick_counter_r[15]_i_3_n_0 ;
  wire \ms_tick_counter_r[15]_i_4_n_0 ;
  wire \ms_tick_counter_r[15]_i_5_n_0 ;
  wire \ms_tick_counter_r[15]_i_6_n_0 ;
  wire ms_tick_r;
  wire ms_tick_r_0;
  wire [15:0]p_0_in;
  wire state_f1;
  wire state_f1_carry__0_i_1_n_0;
  wire state_f1_carry__0_i_2_n_0;
  wire state_f1_carry__0_i_3_n_0;
  wire state_f1_carry__0_i_4_n_0;
  wire state_f1_carry__0_i_5_n_0;
  wire state_f1_carry__0_i_6_n_0;
  wire state_f1_carry__0_i_7_n_0;
  wire state_f1_carry__0_i_8_n_0;
  wire state_f1_carry__0_n_0;
  wire state_f1_carry__0_n_1;
  wire state_f1_carry__0_n_2;
  wire state_f1_carry__0_n_3;
  wire state_f1_carry__1_i_1_n_0;
  wire state_f1_carry__1_n_6;
  wire state_f1_carry_i_1_n_0;
  wire state_f1_carry_i_2_n_0;
  wire state_f1_carry_i_3_n_0;
  wire state_f1_carry_i_4_n_0;
  wire state_f1_carry_i_5_n_0;
  wire state_f1_carry_i_6_n_0;
  wire state_f1_carry_i_7_n_0;
  wire state_f1_carry_i_8_n_0;
  wire state_f1_carry_n_0;
  wire state_f1_carry_n_1;
  wire state_f1_carry_n_2;
  wire state_f1_carry_n_3;
  wire [16:1]state_f2;
  wire state_f2_carry__0_i_1_n_0;
  wire state_f2_carry__0_i_2_n_0;
  wire state_f2_carry__0_i_3_n_0;
  wire state_f2_carry__0_i_4_n_0;
  wire state_f2_carry__0_n_0;
  wire state_f2_carry__0_n_1;
  wire state_f2_carry__0_n_2;
  wire state_f2_carry__0_n_3;
  wire state_f2_carry__1_i_1_n_0;
  wire state_f2_carry__1_i_2_n_0;
  wire state_f2_carry__1_i_3_n_0;
  wire state_f2_carry__1_i_4_n_0;
  wire state_f2_carry__1_n_0;
  wire state_f2_carry__1_n_1;
  wire state_f2_carry__1_n_2;
  wire state_f2_carry__1_n_3;
  wire state_f2_carry__2_i_1_n_0;
  wire state_f2_carry__2_i_2_n_0;
  wire state_f2_carry__2_i_3_n_0;
  wire state_f2_carry__2_n_2;
  wire state_f2_carry__2_n_3;
  wire state_f2_carry_i_1_n_0;
  wire state_f2_carry_i_2_n_0;
  wire state_f2_carry_i_3_n_0;
  wire state_f2_carry_i_4_n_0;
  wire state_f2_carry_n_0;
  wire state_f2_carry_n_1;
  wire state_f2_carry_n_2;
  wire state_f2_carry_n_3;
  wire [1:0]state_r;
  wire [3:2]NLW_ms_counter_f0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_ms_counter_f0_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_ms_tick_counter_r0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_ms_tick_counter_r0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_state_f1_carry_O_UNCONNECTED;
  wire [3:0]NLW_state_f1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_state_f1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_state_f1_carry__1_O_UNCONNECTED;
  wire [2:2]NLW_state_f2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_state_f2_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hE0EF)) 
    \FSM_onehot_state_r[3]_i_3 
       (.I0(state_r[0]),
        .I1(state_r[1]),
        .I2(Q[8]),
        .I3(SPI_ready),
        .O(\FSM_sequential_state_r_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h8FB0)) 
    \FSM_sequential_state_r[0]_i_1__0 
       (.I0(state_f1_carry__1_n_6),
        .I1(state_r[1]),
        .I2(\FSM_sequential_state_r[0]_i_2_n_0 ),
        .I3(state_r[0]),
        .O(\FSM_sequential_state_r[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \FSM_sequential_state_r[0]_i_2 
       (.I0(\FSM_sequential_state_r[0]_i_3_n_0 ),
        .I1(\FSM_sequential_state_r[0]_i_4_n_0 ),
        .I2(ms_threshold_r[6]),
        .I3(ms_threshold_r[7]),
        .I4(\FSM_sequential_state_r[1]_i_3_n_0 ),
        .I5(state_r[0]),
        .O(\FSM_sequential_state_r[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAEAEA)) 
    \FSM_sequential_state_r[0]_i_3 
       (.I0(state_r[1]),
        .I1(ms_tick_r),
        .I2(state_r[0]),
        .I3(\FSM_sequential_state_r[0]_i_2_0 ),
        .I4(Q[8]),
        .O(\FSM_sequential_state_r[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state_r[0]_i_4 
       (.I0(ms_threshold_r[4]),
        .I1(ms_threshold_r[5]),
        .O(\FSM_sequential_state_r[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_sequential_state_r[1]_i_1__0 
       (.I0(ms_tick_r),
        .I1(state_r[1]),
        .I2(\FSM_sequential_state_r[1]_i_2_n_0 ),
        .I3(state_r[0]),
        .O(\FSM_sequential_state_r[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state_r[1]_i_2 
       (.I0(ms_threshold_r[4]),
        .I1(ms_threshold_r[5]),
        .I2(ms_threshold_r[6]),
        .I3(ms_threshold_r[7]),
        .I4(\FSM_sequential_state_r[1]_i_3_n_0 ),
        .O(\FSM_sequential_state_r[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_r[1]_i_3 
       (.I0(ms_threshold_r[3]),
        .I1(ms_threshold_r[2]),
        .I2(ms_threshold_r[1]),
        .I3(ms_threshold_r[0]),
        .O(\FSM_sequential_state_r[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:10,ready:00,counting:01" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_r[0]_i_1__0_n_0 ),
        .Q(state_r[0]));
  (* FSM_ENCODED_STATES = "iSTATE:10,ready:00,counting:01" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_r[1]_i_1__0_n_0 ),
        .Q(state_r[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ms_counter_f0_carry
       (.CI(1'b0),
        .CO({ms_counter_f0_carry_n_0,ms_counter_f0_carry_n_1,ms_counter_f0_carry_n_2,ms_counter_f0_carry_n_3}),
        .CYINIT(ms_counter_r[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[4:1]),
        .S(ms_counter_r[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ms_counter_f0_carry__0
       (.CI(ms_counter_f0_carry_n_0),
        .CO({ms_counter_f0_carry__0_n_0,ms_counter_f0_carry__0_n_1,ms_counter_f0_carry__0_n_2,ms_counter_f0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[8:5]),
        .S(ms_counter_r[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ms_counter_f0_carry__1
       (.CI(ms_counter_f0_carry__0_n_0),
        .CO({ms_counter_f0_carry__1_n_0,ms_counter_f0_carry__1_n_1,ms_counter_f0_carry__1_n_2,ms_counter_f0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[12:9]),
        .S(ms_counter_r[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ms_counter_f0_carry__2
       (.CI(ms_counter_f0_carry__1_n_0),
        .CO({NLW_ms_counter_f0_carry__2_CO_UNCONNECTED[3:2],ms_counter_f0_carry__2_n_2,ms_counter_f0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ms_counter_f0_carry__2_O_UNCONNECTED[3],in7[15:13]}),
        .S({1'b0,ms_counter_r[15:13]}));
  LUT3 #(
    .INIT(8'h38)) 
    \ms_counter_r[0]_i_1 
       (.I0(state_r[0]),
        .I1(ms_counter_r[0]),
        .I2(state_r[1]),
        .O(\ms_counter_r[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[10]_i_1 
       (.I0(in7[10]),
        .I1(ms_counter_r[10]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[11]_i_1 
       (.I0(in7[11]),
        .I1(ms_counter_r[11]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[12]_i_1 
       (.I0(in7[12]),
        .I1(ms_counter_r[12]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[13]_i_1 
       (.I0(in7[13]),
        .I1(ms_counter_r[13]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[14]_i_1 
       (.I0(in7[14]),
        .I1(ms_counter_r[14]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[15]_i_1 
       (.I0(in7[15]),
        .I1(ms_counter_r[15]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[1]_i_1 
       (.I0(in7[1]),
        .I1(ms_counter_r[1]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[2]_i_1 
       (.I0(in7[2]),
        .I1(ms_counter_r[2]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[3]_i_1 
       (.I0(in7[3]),
        .I1(ms_counter_r[3]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[4]_i_1 
       (.I0(in7[4]),
        .I1(ms_counter_r[4]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[5]_i_1 
       (.I0(in7[5]),
        .I1(ms_counter_r[5]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[6]_i_1 
       (.I0(in7[6]),
        .I1(ms_counter_r[6]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[7]_i_1 
       (.I0(in7[7]),
        .I1(ms_counter_r[7]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[8]_i_1 
       (.I0(in7[8]),
        .I1(ms_counter_r[8]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \ms_counter_r[9]_i_1 
       (.I0(in7[9]),
        .I1(ms_counter_r[9]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(\ms_counter_r[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[0]_i_1_n_0 ),
        .Q(ms_counter_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[10]_i_1_n_0 ),
        .Q(ms_counter_r[10]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[11]_i_1_n_0 ),
        .Q(ms_counter_r[11]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[12]_i_1_n_0 ),
        .Q(ms_counter_r[12]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[13]_i_1_n_0 ),
        .Q(ms_counter_r[13]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[14]_i_1_n_0 ),
        .Q(ms_counter_r[14]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[15]_i_1_n_0 ),
        .Q(ms_counter_r[15]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[1]_i_1_n_0 ),
        .Q(ms_counter_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[2]_i_1_n_0 ),
        .Q(ms_counter_r[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[3]_i_1_n_0 ),
        .Q(ms_counter_r[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[4]_i_1_n_0 ),
        .Q(ms_counter_r[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[5]_i_1_n_0 ),
        .Q(ms_counter_r[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[6]_i_1_n_0 ),
        .Q(ms_counter_r[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[7]_i_1_n_0 ),
        .Q(ms_counter_r[7]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[8]_i_1_n_0 ),
        .Q(ms_counter_r[8]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_counter_r_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\ms_counter_r[9]_i_1_n_0 ),
        .Q(ms_counter_r[9]));
  LUT3 #(
    .INIT(8'h01)) 
    \ms_threshold_r[7]_i_1 
       (.I0(AR),
        .I1(state_r[1]),
        .I2(state_r[0]),
        .O(ms_threshold_r0));
  FDRE #(
    .INIT(1'b0)) 
    \ms_threshold_r_reg[0] 
       (.C(CLK),
        .CE(ms_threshold_r0),
        .D(Q[0]),
        .Q(ms_threshold_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ms_threshold_r_reg[1] 
       (.C(CLK),
        .CE(ms_threshold_r0),
        .D(Q[1]),
        .Q(ms_threshold_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ms_threshold_r_reg[2] 
       (.C(CLK),
        .CE(ms_threshold_r0),
        .D(Q[2]),
        .Q(ms_threshold_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ms_threshold_r_reg[3] 
       (.C(CLK),
        .CE(ms_threshold_r0),
        .D(Q[3]),
        .Q(ms_threshold_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ms_threshold_r_reg[4] 
       (.C(CLK),
        .CE(ms_threshold_r0),
        .D(Q[4]),
        .Q(ms_threshold_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ms_threshold_r_reg[5] 
       (.C(CLK),
        .CE(ms_threshold_r0),
        .D(Q[5]),
        .Q(ms_threshold_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ms_threshold_r_reg[6] 
       (.C(CLK),
        .CE(ms_threshold_r0),
        .D(Q[6]),
        .Q(ms_threshold_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ms_threshold_r_reg[7] 
       (.C(CLK),
        .CE(ms_threshold_r0),
        .D(Q[7]),
        .Q(ms_threshold_r[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ms_tick_counter_r0_carry
       (.CI(1'b0),
        .CO({ms_tick_counter_r0_carry_n_0,ms_tick_counter_r0_carry_n_1,ms_tick_counter_r0_carry_n_2,ms_tick_counter_r0_carry_n_3}),
        .CYINIT(ms_tick_counter_r[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ms_tick_counter_r0[4:1]),
        .S(ms_tick_counter_r[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ms_tick_counter_r0_carry__0
       (.CI(ms_tick_counter_r0_carry_n_0),
        .CO({ms_tick_counter_r0_carry__0_n_0,ms_tick_counter_r0_carry__0_n_1,ms_tick_counter_r0_carry__0_n_2,ms_tick_counter_r0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ms_tick_counter_r0[8:5]),
        .S(ms_tick_counter_r[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ms_tick_counter_r0_carry__1
       (.CI(ms_tick_counter_r0_carry__0_n_0),
        .CO({ms_tick_counter_r0_carry__1_n_0,ms_tick_counter_r0_carry__1_n_1,ms_tick_counter_r0_carry__1_n_2,ms_tick_counter_r0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ms_tick_counter_r0[12:9]),
        .S(ms_tick_counter_r[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ms_tick_counter_r0_carry__2
       (.CI(ms_tick_counter_r0_carry__1_n_0),
        .CO({NLW_ms_tick_counter_r0_carry__2_CO_UNCONNECTED[3:2],ms_tick_counter_r0_carry__2_n_2,ms_tick_counter_r0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ms_tick_counter_r0_carry__2_O_UNCONNECTED[3],ms_tick_counter_r0[15:13]}),
        .S({1'b0,ms_tick_counter_r[15:13]}));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0054)) 
    \ms_tick_counter_r[0]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[10]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[11]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[12]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[12]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[13]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[13]),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[14]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[14]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[15]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[15]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA888)) 
    \ms_tick_counter_r[15]_i_2 
       (.I0(\ms_tick_counter_r[15]_i_3_n_0 ),
        .I1(ms_tick_counter_r[7]),
        .I2(\ms_tick_counter_r[15]_i_4_n_0 ),
        .I3(ms_tick_counter_r[6]),
        .I4(\ms_tick_counter_r[15]_i_5_n_0 ),
        .I5(\ms_tick_counter_r[15]_i_6_n_0 ),
        .O(\ms_tick_counter_r[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ms_tick_counter_r[15]_i_3 
       (.I0(ms_tick_counter_r[9]),
        .I1(ms_tick_counter_r[8]),
        .I2(ms_tick_counter_r[15]),
        .I3(ms_tick_counter_r[14]),
        .O(\ms_tick_counter_r[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    \ms_tick_counter_r[15]_i_4 
       (.I0(ms_tick_counter_r[2]),
        .I1(ms_tick_counter_r[3]),
        .I2(ms_tick_counter_r[0]),
        .I3(ms_tick_counter_r[1]),
        .I4(ms_tick_counter_r[5]),
        .I5(ms_tick_counter_r[4]),
        .O(\ms_tick_counter_r[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \ms_tick_counter_r[15]_i_5 
       (.I0(ms_tick_counter_r[11]),
        .I1(ms_tick_counter_r[12]),
        .I2(ms_tick_counter_r[14]),
        .I3(ms_tick_counter_r[15]),
        .O(\ms_tick_counter_r[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \ms_tick_counter_r[15]_i_6 
       (.I0(ms_tick_counter_r[10]),
        .I1(ms_tick_counter_r[13]),
        .I2(ms_tick_counter_r[14]),
        .I3(ms_tick_counter_r[15]),
        .O(\ms_tick_counter_r[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[1]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[2]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[3]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[4]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[5]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[6]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[7]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[8]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ms_tick_counter_r[9]_i_1 
       (.I0(\ms_tick_counter_r[15]_i_2_n_0 ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(ms_tick_counter_r0[9]),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(ms_tick_counter_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[10]),
        .Q(ms_tick_counter_r[10]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[11]),
        .Q(ms_tick_counter_r[11]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[12]),
        .Q(ms_tick_counter_r[12]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[13]),
        .Q(ms_tick_counter_r[13]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[14]),
        .Q(ms_tick_counter_r[14]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[15]),
        .Q(ms_tick_counter_r[15]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(ms_tick_counter_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(ms_tick_counter_r[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(ms_tick_counter_r[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(ms_tick_counter_r[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(ms_tick_counter_r[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(ms_tick_counter_r[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(ms_tick_counter_r[7]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(ms_tick_counter_r[8]));
  FDCE #(
    .INIT(1'b0)) 
    \ms_tick_counter_r_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[9]),
        .Q(ms_tick_counter_r[9]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    ms_tick_r_i_1
       (.I0(state_r[1]),
        .I1(state_r[0]),
        .I2(\ms_tick_counter_r[15]_i_2_n_0 ),
        .O(ms_tick_r_0));
  FDCE #(
    .INIT(1'b0)) 
    ms_tick_r_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(ms_tick_r_0),
        .Q(ms_tick_r));
  CARRY4 state_f1_carry
       (.CI(1'b0),
        .CO({state_f1_carry_n_0,state_f1_carry_n_1,state_f1_carry_n_2,state_f1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({state_f1_carry_i_1_n_0,state_f1_carry_i_2_n_0,state_f1_carry_i_3_n_0,state_f1_carry_i_4_n_0}),
        .O(NLW_state_f1_carry_O_UNCONNECTED[3:0]),
        .S({state_f1_carry_i_5_n_0,state_f1_carry_i_6_n_0,state_f1_carry_i_7_n_0,state_f1_carry_i_8_n_0}));
  CARRY4 state_f1_carry__0
       (.CI(state_f1_carry_n_0),
        .CO({state_f1_carry__0_n_0,state_f1_carry__0_n_1,state_f1_carry__0_n_2,state_f1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({state_f1_carry__0_i_1_n_0,state_f1_carry__0_i_2_n_0,state_f1_carry__0_i_3_n_0,state_f1_carry__0_i_4_n_0}),
        .O(NLW_state_f1_carry__0_O_UNCONNECTED[3:0]),
        .S({state_f1_carry__0_i_5_n_0,state_f1_carry__0_i_6_n_0,state_f1_carry__0_i_7_n_0,state_f1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    state_f1_carry__0_i_1
       (.I0(state_f2[14]),
        .I1(state_f2[15]),
        .O(state_f1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state_f1_carry__0_i_2
       (.I0(state_f2[12]),
        .I1(state_f2[13]),
        .O(state_f1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state_f1_carry__0_i_3
       (.I0(state_f2[10]),
        .I1(state_f2[11]),
        .O(state_f1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state_f1_carry__0_i_4
       (.I0(state_f2[8]),
        .I1(state_f2[9]),
        .O(state_f1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_f1_carry__0_i_5
       (.I0(state_f2[15]),
        .I1(state_f2[14]),
        .O(state_f1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_f1_carry__0_i_6
       (.I0(state_f2[13]),
        .I1(state_f2[12]),
        .O(state_f1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_f1_carry__0_i_7
       (.I0(state_f2[11]),
        .I1(state_f2[10]),
        .O(state_f1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state_f1_carry__0_i_8
       (.I0(state_f2[9]),
        .I1(state_f2[8]),
        .O(state_f1_carry__0_i_8_n_0));
  CARRY4 state_f1_carry__1
       (.CI(state_f1_carry__0_n_0),
        .CO({NLW_state_f1_carry__1_CO_UNCONNECTED[3:1],state_f1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,state_f2[16]}),
        .O({NLW_state_f1_carry__1_O_UNCONNECTED[3:2],state_f1_carry__1_n_6,NLW_state_f1_carry__1_O_UNCONNECTED[0]}),
        .S({1'b0,1'b0,1'b1,state_f1_carry__1_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state_f1_carry__1_i_1
       (.I0(state_f2[16]),
        .O(state_f1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    state_f1_carry_i_1
       (.I0(ms_threshold_r[7]),
        .I1(state_f2[6]),
        .I2(state_f2[7]),
        .I3(ms_threshold_r[6]),
        .O(state_f1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    state_f1_carry_i_2
       (.I0(ms_threshold_r[5]),
        .I1(state_f2[4]),
        .I2(state_f2[5]),
        .I3(ms_threshold_r[4]),
        .O(state_f1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    state_f1_carry_i_3
       (.I0(ms_threshold_r[3]),
        .I1(state_f2[2]),
        .I2(state_f2[3]),
        .I3(ms_threshold_r[2]),
        .O(state_f1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h55550000F57F5015)) 
    state_f1_carry_i_4
       (.I0(ms_threshold_r[1]),
        .I1(state_r[0]),
        .I2(ms_counter_r[0]),
        .I3(state_r[1]),
        .I4(state_f2[1]),
        .I5(ms_threshold_r[0]),
        .O(state_f1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state_f1_carry_i_5
       (.I0(ms_threshold_r[7]),
        .I1(state_f2[7]),
        .I2(state_f2[6]),
        .I3(ms_threshold_r[6]),
        .O(state_f1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state_f1_carry_i_6
       (.I0(ms_threshold_r[5]),
        .I1(state_f2[5]),
        .I2(state_f2[4]),
        .I3(ms_threshold_r[4]),
        .O(state_f1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state_f1_carry_i_7
       (.I0(ms_threshold_r[3]),
        .I1(state_f2[3]),
        .I2(state_f2[2]),
        .I3(ms_threshold_r[2]),
        .O(state_f1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h96A60000000096A6)) 
    state_f1_carry_i_8
       (.I0(ms_threshold_r[0]),
        .I1(state_r[1]),
        .I2(ms_counter_r[0]),
        .I3(state_r[0]),
        .I4(state_f2[1]),
        .I5(ms_threshold_r[1]),
        .O(state_f1_carry_i_8_n_0));
  CARRY4 state_f2_carry
       (.CI(1'b0),
        .CO({state_f2_carry_n_0,state_f2_carry_n_1,state_f2_carry_n_2,state_f2_carry_n_3}),
        .CYINIT(\ms_counter_r[0]_i_1_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(state_f2[4:1]),
        .S({state_f2_carry_i_1_n_0,state_f2_carry_i_2_n_0,state_f2_carry_i_3_n_0,state_f2_carry_i_4_n_0}));
  CARRY4 state_f2_carry__0
       (.CI(state_f2_carry_n_0),
        .CO({state_f2_carry__0_n_0,state_f2_carry__0_n_1,state_f2_carry__0_n_2,state_f2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(state_f2[8:5]),
        .S({state_f2_carry__0_i_1_n_0,state_f2_carry__0_i_2_n_0,state_f2_carry__0_i_3_n_0,state_f2_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__0_i_1
       (.I0(in7[8]),
        .I1(ms_counter_r[8]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__0_i_2
       (.I0(in7[7]),
        .I1(ms_counter_r[7]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__0_i_3
       (.I0(in7[6]),
        .I1(ms_counter_r[6]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__0_i_4
       (.I0(in7[5]),
        .I1(ms_counter_r[5]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__0_i_4_n_0));
  CARRY4 state_f2_carry__1
       (.CI(state_f2_carry__0_n_0),
        .CO({state_f2_carry__1_n_0,state_f2_carry__1_n_1,state_f2_carry__1_n_2,state_f2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(state_f2[12:9]),
        .S({state_f2_carry__1_i_1_n_0,state_f2_carry__1_i_2_n_0,state_f2_carry__1_i_3_n_0,state_f2_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__1_i_1
       (.I0(in7[12]),
        .I1(ms_counter_r[12]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__1_i_2
       (.I0(in7[11]),
        .I1(ms_counter_r[11]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__1_i_3
       (.I0(in7[10]),
        .I1(ms_counter_r[10]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__1_i_4
       (.I0(in7[9]),
        .I1(ms_counter_r[9]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__1_i_4_n_0));
  CARRY4 state_f2_carry__2
       (.CI(state_f2_carry__1_n_0),
        .CO({state_f2[16],NLW_state_f2_carry__2_CO_UNCONNECTED[2],state_f2_carry__2_n_2,state_f2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_state_f2_carry__2_O_UNCONNECTED[3],state_f2[15:13]}),
        .S({1'b1,state_f2_carry__2_i_1_n_0,state_f2_carry__2_i_2_n_0,state_f2_carry__2_i_3_n_0}));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__2_i_1
       (.I0(in7[15]),
        .I1(ms_counter_r[15]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__2_i_2
       (.I0(in7[14]),
        .I1(ms_counter_r[14]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry__2_i_3
       (.I0(in7[13]),
        .I1(ms_counter_r[13]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry_i_1
       (.I0(in7[4]),
        .I1(ms_counter_r[4]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry_i_2
       (.I0(in7[3]),
        .I1(ms_counter_r[3]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry_i_3
       (.I0(in7[2]),
        .I1(ms_counter_r[2]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hAAC0)) 
    state_f2_carry_i_4
       (.I0(in7[1]),
        .I1(ms_counter_r[1]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(state_f2_carry_i_4_n_0));
endmodule

(* PIXEL_LATENCY = "0" *) 
(* NotValidForBitStream *)
module controleur_OLED
   (clk_50mhz_i,
    rst_i,
    pixel_i,
    row_o,
    column_o,
    oled_dc_n_o,
    oled_res_n_o,
    oled_sclk_o,
    oled_sdo_o,
    oled_vbat_n_o,
    oled_vdd_n_o);
  input clk_50mhz_i;
  input rst_i;
  input pixel_i;
  output [4:0]row_o;
  output [6:0]column_o;
  output oled_dc_n_o;
  output oled_res_n_o;
  output oled_sclk_o;
  output oled_sdo_o;
  output oled_vbat_n_o;
  output oled_vdd_n_o;

  wire [7:0]SPI_data_sr;
  wire SPI_ready;
  wire clk_50mhz_i;
  wire clk_50mhz_i_IBUF;
  wire clk_50mhz_i_IBUF_BUFG;
  wire [6:0]column_o;
  wire [6:0]column_o_OBUF;
  wire delay_i;
  wire inst_MSA_SPI_n_0;
  wire inst_MSA_affichage_n_0;
  wire inst_MSA_init_n_1;
  wire inst_MSA_init_n_11;
  wire inst_MSA_init_n_12;
  wire inst_MSA_init_n_13;
  wire inst_MSA_init_n_14;
  wire inst_MSA_init_n_15;
  wire inst_MSA_init_n_16;
  wire inst_MSA_init_n_17;
  wire inst_MSA_init_n_18;
  wire inst_MSA_init_n_19;
  wire inst_MSA_init_n_2;
  wire inst_MSA_init_n_20;
  wire inst_MSA_init_n_21;
  wire inst_MSA_init_n_22;
  wire inst_MSA_init_n_3;
  wire inst_MSA_init_n_4;
  wire inst_MSA_init_n_5;
  wire inst_MSA_init_n_6;
  wire inst_MSA_init_n_7;
  wire inst_MSA_init_n_8;
  wire inst_MSA_init_n_9;
  wire inst_MSA_timing_init_n_0;
  wire inst_oled_cmd_ROM_n_10;
  wire inst_oled_cmd_ROM_n_11;
  wire inst_oled_cmd_ROM_n_4;
  wire inst_oled_cmd_ROM_n_5;
  wire inst_oled_cmd_ROM_n_6;
  wire inst_oled_cmd_ROM_n_7;
  wire inst_oled_cmd_ROM_n_8;
  wire inst_oled_cmd_ROM_n_9;
  wire oled_dc_n_o;
  wire oled_dc_n_o_OBUF;
  wire oled_res_n_o;
  wire oled_res_n_o_OBUF;
  wire oled_sclk_o;
  wire oled_sclk_o_OBUF;
  wire oled_sdo_o;
  wire oled_sdo_o_OBUF;
  wire oled_vbat_n_o;
  wire oled_vbat_n_o_OBUF;
  wire oled_vdd_n_o;
  wire oled_vdd_n_o_OBUF;
  wire pixel_i;
  wire pixel_i_IBUF;
  wire [4:0]row_o;
  wire [4:0]row_o_OBUF;
  wire rst_i;
  wire rst_i_IBUF;
  wire start;

  BUFG clk_50mhz_i_IBUF_BUFG_inst
       (.I(clk_50mhz_i_IBUF),
        .O(clk_50mhz_i_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_50mhz_i_IBUF_inst
       (.I(clk_50mhz_i),
        .O(clk_50mhz_i_IBUF));
  OBUF \column_o_OBUF[0]_inst 
       (.I(column_o_OBUF[0]),
        .O(column_o[0]));
  OBUF \column_o_OBUF[1]_inst 
       (.I(column_o_OBUF[1]),
        .O(column_o[1]));
  OBUF \column_o_OBUF[2]_inst 
       (.I(column_o_OBUF[2]),
        .O(column_o[2]));
  OBUF \column_o_OBUF[3]_inst 
       (.I(column_o_OBUF[3]),
        .O(column_o[3]));
  OBUF \column_o_OBUF[4]_inst 
       (.I(column_o_OBUF[4]),
        .O(column_o[4]));
  OBUF \column_o_OBUF[5]_inst 
       (.I(column_o_OBUF[5]),
        .O(column_o[5]));
  OBUF \column_o_OBUF[6]_inst 
       (.I(column_o_OBUF[6]),
        .O(column_o[6]));
  MSA_SPI inst_MSA_SPI
       (.AR(rst_i_IBUF),
        .CLK(clk_50mhz_i_IBUF_BUFG),
        .D(inst_MSA_init_n_1),
        .\FSM_onehot_state_r[2]_i_2 (delay_i),
        .\FSM_onehot_state_r_reg[0]_0 (inst_MSA_SPI_n_0),
        .\FSM_onehot_state_r_reg[2]_0 (inst_MSA_affichage_n_0),
        .Q(start),
        .SPI_ready(SPI_ready),
        .\data_sr_reg[1]_0 (inst_MSA_init_n_3),
        .\data_sr_reg[1]_1 (inst_MSA_init_n_2),
        .\data_sr_reg[2]_0 (inst_MSA_init_n_4),
        .\data_sr_reg[3]_0 (inst_MSA_init_n_5),
        .\data_sr_reg[4]_0 (inst_MSA_init_n_6),
        .\data_sr_reg[5]_0 (inst_MSA_init_n_7),
        .\data_sr_reg[6]_0 (inst_MSA_init_n_8),
        .\data_sr_reg[7]_0 (SPI_data_sr[7:1]),
        .\data_sr_reg[7]_1 (inst_MSA_init_n_9),
        .oled_sclk_o_OBUF(oled_sclk_o_OBUF),
        .oled_sdo_o_OBUF(oled_sdo_o_OBUF));
  MSA_Affichage inst_MSA_affichage
       (.AR(rst_i_IBUF),
        .CLK(clk_50mhz_i_IBUF_BUFG),
        .D(pixel_i_IBUF),
        .\FSM_onehot_state_r_reg[2] (inst_MSA_SPI_n_0),
        .\FSM_sequential_state_r_reg[2]_0 (inst_MSA_affichage_n_0),
        .Q(column_o_OBUF),
        .\SPI_data_sr_reg[7]_0 (SPI_data_sr),
        .SPI_ready(SPI_ready),
        .oled_dc_n_o_OBUF(oled_dc_n_o_OBUF),
        .row_o_OBUF(row_o_OBUF));
  MSA_init inst_MSA_init
       (.AR(rst_i_IBUF),
        .CLK(clk_50mhz_i_IBUF_BUFG),
        .D(inst_MSA_init_n_1),
        .\FSM_onehot_state_r_reg[0]_0 (inst_MSA_timing_init_n_0),
        .\FSM_onehot_state_r_reg[1]_0 (inst_MSA_init_n_3),
        .\FSM_onehot_state_r_reg[1]_1 (inst_MSA_init_n_4),
        .\FSM_onehot_state_r_reg[1]_2 (inst_MSA_init_n_5),
        .\FSM_onehot_state_r_reg[1]_3 (inst_MSA_init_n_6),
        .\FSM_onehot_state_r_reg[1]_4 (inst_MSA_init_n_7),
        .\FSM_onehot_state_r_reg[1]_5 (inst_MSA_init_n_8),
        .\FSM_onehot_state_r_reg[1]_6 (inst_MSA_init_n_9),
        .\FSM_onehot_state_r_reg[2]_0 (inst_MSA_init_n_2),
        .Q(start),
        .SPI_ready(SPI_ready),
        .\data_sr_reg[0] (SPI_data_sr[0]),
        .\data_sr_reg[7] ({inst_oled_cmd_ROM_n_4,inst_oled_cmd_ROM_n_5,inst_oled_cmd_ROM_n_6,inst_oled_cmd_ROM_n_7,inst_oled_cmd_ROM_n_8,inst_oled_cmd_ROM_n_9,inst_oled_cmd_ROM_n_10,inst_oled_cmd_ROM_n_11}),
        .oled_dc_n_o_OBUF(oled_dc_n_o_OBUF),
        .out({inst_MSA_init_n_11,inst_MSA_init_n_12,inst_MSA_init_n_13,inst_MSA_init_n_14,inst_MSA_init_n_15,inst_MSA_init_n_16,inst_MSA_init_n_17,inst_MSA_init_n_18,inst_MSA_init_n_19,inst_MSA_init_n_20,inst_MSA_init_n_21,inst_MSA_init_n_22}));
  MSA_timing inst_MSA_timing_init
       (.AR(rst_i_IBUF),
        .CLK(clk_50mhz_i_IBUF_BUFG),
        .\FSM_sequential_state_r[0]_i_2_0 (start),
        .\FSM_sequential_state_r_reg[0]_0 (inst_MSA_timing_init_n_0),
        .Q({delay_i,inst_oled_cmd_ROM_n_4,inst_oled_cmd_ROM_n_5,inst_oled_cmd_ROM_n_6,inst_oled_cmd_ROM_n_7,inst_oled_cmd_ROM_n_8,inst_oled_cmd_ROM_n_9,inst_oled_cmd_ROM_n_10,inst_oled_cmd_ROM_n_11}),
        .SPI_ready(SPI_ready));
  oled_cmd_ROM inst_oled_cmd_ROM
       (.AR(rst_i_IBUF),
        .CLK(clk_50mhz_i_IBUF_BUFG),
        .D({inst_MSA_init_n_11,inst_MSA_init_n_12,inst_MSA_init_n_13,inst_MSA_init_n_14,inst_MSA_init_n_15,inst_MSA_init_n_16,inst_MSA_init_n_17,inst_MSA_init_n_18,inst_MSA_init_n_19,inst_MSA_init_n_20,inst_MSA_init_n_21,inst_MSA_init_n_22}),
        .Q({delay_i,oled_vdd_n_o_OBUF,oled_vbat_n_o_OBUF,oled_res_n_o_OBUF,inst_oled_cmd_ROM_n_4,inst_oled_cmd_ROM_n_5,inst_oled_cmd_ROM_n_6,inst_oled_cmd_ROM_n_7,inst_oled_cmd_ROM_n_8,inst_oled_cmd_ROM_n_9,inst_oled_cmd_ROM_n_10,inst_oled_cmd_ROM_n_11}));
  OBUF oled_dc_n_o_OBUF_inst
       (.I(oled_dc_n_o_OBUF),
        .O(oled_dc_n_o));
  OBUF oled_res_n_o_OBUF_inst
       (.I(oled_res_n_o_OBUF),
        .O(oled_res_n_o));
  OBUF oled_sclk_o_OBUF_inst
       (.I(oled_sclk_o_OBUF),
        .O(oled_sclk_o));
  OBUF oled_sdo_o_OBUF_inst
       (.I(oled_sdo_o_OBUF),
        .O(oled_sdo_o));
  OBUF oled_vbat_n_o_OBUF_inst
       (.I(oled_vbat_n_o_OBUF),
        .O(oled_vbat_n_o));
  OBUF oled_vdd_n_o_OBUF_inst
       (.I(oled_vdd_n_o_OBUF),
        .O(oled_vdd_n_o));
  IBUF #(
    .CCIO_EN("TRUE")) 
    pixel_i_IBUF_inst
       (.I(pixel_i),
        .O(pixel_i_IBUF));
  OBUF \row_o_OBUF[0]_inst 
       (.I(row_o_OBUF[0]),
        .O(row_o[0]));
  OBUF \row_o_OBUF[1]_inst 
       (.I(row_o_OBUF[1]),
        .O(row_o[1]));
  OBUF \row_o_OBUF[2]_inst 
       (.I(row_o_OBUF[2]),
        .O(row_o[2]));
  OBUF \row_o_OBUF[3]_inst 
       (.I(row_o_OBUF[3]),
        .O(row_o[3]));
  OBUF \row_o_OBUF[4]_inst 
       (.I(row_o_OBUF[4]),
        .O(row_o[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
endmodule

module oled_cmd_ROM
   (Q,
    D,
    CLK,
    AR);
  output [11:0]Q;
  input [11:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [11:0]D;
  wire [11:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \data_o_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .PRE(AR),
        .Q(Q[10]));
  FDPE #(
    .INIT(1'b1)) 
    \data_o_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[11]),
        .PRE(AR),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDPE #(
    .INIT(1'b1)) 
    \data_o_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .PRE(AR),
        .Q(Q[8]));
  FDPE #(
    .INIT(1'b1)) 
    \data_o_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .PRE(AR),
        .Q(Q[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
