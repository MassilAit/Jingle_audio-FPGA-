// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Mar 13 15:35:54 2024
// Host        : t480s running 64-bit Manjaro Linux
// Command     : write_verilog -mode funcsim -force controleur_CODED_funcsim.v
// Design      : controleur_CODEC
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adau1761_cmd_ROM
   (D,
    \bit_cnt_reg[2] ,
    Q,
    state_r,
    bit_cnt,
    CLK,
    rst_i_IBUF);
  output [7:0]D;
  output \bit_cnt_reg[2] ;
  input [4:0]Q;
  input [2:0]state_r;
  input [2:0]bit_cnt;
  input CLK;
  input rst_i_IBUF;

  wire CLK;
  wire [7:0]D;
  wire [4:0]Q;
  wire [22:0]\ROM_cst[0]_0 ;
  wire [2:0]bit_cnt;
  wire \bit_cnt_reg[2] ;
  wire [22:0]data_o;
  wire \data_o[14]_i_1_n_0 ;
  wire rst_i_IBUF;
  wire sda_int_i_16_n_0;
  wire sda_int_i_17_n_0;
  wire sda_int_i_18_n_0;
  wire sda_int_i_19_n_0;
  wire sda_int_i_20_n_0;
  wire sda_int_i_21_n_0;
  wire sda_int_i_22_n_0;
  wire sda_int_i_23_n_0;
  wire sda_int_i_6_n_0;
  wire sda_int_i_7_n_0;
  wire [2:0]state_r;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0507FF0F)) 
    \data_o[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\ROM_cst[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000ECE)) 
    \data_o[10]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\ROM_cst[0]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0C1F009C)) 
    \data_o[11]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\ROM_cst[0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h12520320)) 
    \data_o[12]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\ROM_cst[0]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h001FDF00)) 
    \data_o[13]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\ROM_cst[0]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00560000)) 
    \data_o[14]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\data_o[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0019FD01)) 
    \data_o[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\ROM_cst[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5757575F)) 
    \data_o[22]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\ROM_cst[0]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h05340405)) 
    \data_o[2]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\ROM_cst[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00200200)) 
    \data_o[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\ROM_cst[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \data_o[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\ROM_cst[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000F4020)) 
    \data_o[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\ROM_cst[0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h14042404)) 
    \data_o[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\ROM_cst[0]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[7]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .O(\ROM_cst[0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h44143614)) 
    \data_o[8]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\ROM_cst[0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0047412A)) 
    \data_o[9]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(\ROM_cst[0]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [0]),
        .Q(data_o[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [10]),
        .Q(data_o[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [11]),
        .Q(data_o[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [12]),
        .Q(data_o[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [13]),
        .Q(data_o[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\data_o[14]_i_1_n_0 ),
        .Q(data_o[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [1]),
        .Q(data_o[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [22]),
        .Q(data_o[22]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [2]),
        .Q(data_o[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [3]),
        .Q(data_o[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [4]),
        .Q(data_o[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [5]),
        .Q(data_o[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [6]),
        .Q(data_o[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [7]),
        .Q(data_o[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [8]),
        .Q(data_o[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_o_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(\ROM_cst[0]_0 [9]),
        .Q(data_o[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000B080)) 
    \data_tx[0]_i_1 
       (.I0(data_o[0]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(data_o[8]),
        .I4(state_r[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000B080)) 
    \data_tx[1]_i_1 
       (.I0(data_o[1]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(data_o[9]),
        .I4(state_r[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000B080)) 
    \data_tx[2]_i_1 
       (.I0(data_o[2]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(data_o[10]),
        .I4(state_r[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000B080)) 
    \data_tx[3]_i_1 
       (.I0(data_o[3]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(data_o[11]),
        .I4(state_r[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000B080)) 
    \data_tx[4]_i_1 
       (.I0(data_o[4]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(data_o[12]),
        .I4(state_r[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000B080)) 
    \data_tx[5]_i_1 
       (.I0(data_o[5]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(data_o[13]),
        .I4(state_r[2]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00000000AFC0A0C0)) 
    \data_tx[6]_i_1 
       (.I0(data_o[6]),
        .I1(data_o[22]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .I4(data_o[14]),
        .I5(state_r[2]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00B00080)) 
    \data_tx[7]_i_2 
       (.I0(data_o[7]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(state_r[2]),
        .I4(data_o[14]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAFBFFFBF)) 
    sda_int_i_16
       (.I0(state_r[2]),
        .I1(data_o[11]),
        .I2(state_r[1]),
        .I3(state_r[0]),
        .I4(data_o[3]),
        .O(sda_int_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAFBFFFBF)) 
    sda_int_i_17
       (.I0(state_r[2]),
        .I1(data_o[10]),
        .I2(state_r[1]),
        .I3(state_r[0]),
        .I4(data_o[2]),
        .O(sda_int_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAFBFFFBF)) 
    sda_int_i_18
       (.I0(state_r[2]),
        .I1(data_o[9]),
        .I2(state_r[1]),
        .I3(state_r[0]),
        .I4(data_o[1]),
        .O(sda_int_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAFBFFFBF)) 
    sda_int_i_19
       (.I0(state_r[2]),
        .I1(data_o[8]),
        .I2(state_r[1]),
        .I3(state_r[0]),
        .I4(data_o[0]),
        .O(sda_int_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hCFDFFFDF)) 
    sda_int_i_20
       (.I0(data_o[14]),
        .I1(state_r[2]),
        .I2(state_r[1]),
        .I3(state_r[0]),
        .I4(data_o[7]),
        .O(sda_int_i_20_n_0));
  LUT6 #(
    .INIT(64'hAABFAFBFFABFFFBF)) 
    sda_int_i_21
       (.I0(state_r[2]),
        .I1(data_o[14]),
        .I2(state_r[1]),
        .I3(state_r[0]),
        .I4(data_o[22]),
        .I5(data_o[6]),
        .O(sda_int_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAFBFFFBF)) 
    sda_int_i_22
       (.I0(state_r[2]),
        .I1(data_o[13]),
        .I2(state_r[1]),
        .I3(state_r[0]),
        .I4(data_o[5]),
        .O(sda_int_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAFBFFFBF)) 
    sda_int_i_23
       (.I0(state_r[2]),
        .I1(data_o[12]),
        .I2(state_r[1]),
        .I3(state_r[0]),
        .I4(data_o[4]),
        .O(sda_int_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_6
       (.I0(sda_int_i_16_n_0),
        .I1(sda_int_i_17_n_0),
        .I2(bit_cnt[1]),
        .I3(sda_int_i_18_n_0),
        .I4(bit_cnt[0]),
        .I5(sda_int_i_19_n_0),
        .O(sda_int_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_7
       (.I0(sda_int_i_20_n_0),
        .I1(sda_int_i_21_n_0),
        .I2(bit_cnt[1]),
        .I3(sda_int_i_22_n_0),
        .I4(bit_cnt[0]),
        .I5(sda_int_i_23_n_0),
        .O(sda_int_i_7_n_0));
  MUXF7 sda_int_reg_i_2
       (.I0(sda_int_i_6_n_0),
        .I1(sda_int_i_7_n_0),
        .O(\bit_cnt_reg[2] ),
        .S(bit_cnt[2]));
endmodule

module adau1761_config
   (codec_sda_io_OBUF,
    codec_scl_io_TRI,
    codec_sda_io_TRI,
    codec_scl_io_IBUF,
    CLK,
    rst_i_IBUF);
  output codec_sda_io_OBUF;
  output codec_scl_io_TRI;
  output codec_sda_io_TRI;
  input codec_scl_io_IBUF;
  input CLK;
  input rst_i_IBUF;

  wire CLK;
  wire \FSM_sequential_state_r[2]_i_2_n_0 ;
  wire \ROM_cmd_addr_r[0]_i_1_n_0 ;
  wire \ROM_cmd_addr_r[4]_i_1_n_0 ;
  wire [4:0]ROM_cmd_addr_r_reg;
  wire ROM_cmd_inst_n_7;
  wire ROM_cmd_inst_n_8;
  wire [2:0]bit_cnt;
  wire codec_scl_io_IBUF;
  wire codec_scl_io_TRI;
  wire codec_sda_io_OBUF;
  wire codec_sda_io_TRI;
  wire [7:1]data_wr;
  wire i2c_busy;
  wire i2c_busy_r;
  wire i2c_master_inst_n_10;
  wire i2c_master_inst_n_8;
  wire i2c_master_inst_n_9;
  wire \inst_i2s_serial/p_1_in ;
  wire [4:1]plusOp;
  wire rst_i_IBUF;
  wire [2:0]state_r;

  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_state_r[2]_i_2 
       (.I0(ROM_cmd_addr_r_reg[3]),
        .I1(ROM_cmd_addr_r_reg[2]),
        .I2(ROM_cmd_addr_r_reg[4]),
        .O(\FSM_sequential_state_r[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "send_addr1:001,send_addr2:010,send_data:011,increment_addr:100,init:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(i2c_master_inst_n_10),
        .Q(state_r[0]));
  (* FSM_ENCODED_STATES = "send_addr1:001,send_addr2:010,send_data:011,increment_addr:100,init:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(i2c_master_inst_n_9),
        .Q(state_r[1]));
  (* FSM_ENCODED_STATES = "send_addr1:001,send_addr2:010,send_data:011,increment_addr:100,init:000,iSTATE:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(i2c_master_inst_n_8),
        .Q(state_r[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \ROM_cmd_addr_r[0]_i_1 
       (.I0(ROM_cmd_addr_r_reg[0]),
        .O(\ROM_cmd_addr_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ROM_cmd_addr_r[1]_i_1 
       (.I0(ROM_cmd_addr_r_reg[1]),
        .I1(ROM_cmd_addr_r_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \ROM_cmd_addr_r[2]_i_1 
       (.I0(ROM_cmd_addr_r_reg[2]),
        .I1(ROM_cmd_addr_r_reg[1]),
        .I2(ROM_cmd_addr_r_reg[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \ROM_cmd_addr_r[3]_i_1 
       (.I0(ROM_cmd_addr_r_reg[3]),
        .I1(ROM_cmd_addr_r_reg[1]),
        .I2(ROM_cmd_addr_r_reg[0]),
        .I3(ROM_cmd_addr_r_reg[2]),
        .O(plusOp[3]));
  LUT3 #(
    .INIT(8'h10)) 
    \ROM_cmd_addr_r[4]_i_1 
       (.I0(state_r[1]),
        .I1(state_r[0]),
        .I2(state_r[2]),
        .O(\ROM_cmd_addr_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ROM_cmd_addr_r[4]_i_2 
       (.I0(ROM_cmd_addr_r_reg[4]),
        .I1(ROM_cmd_addr_r_reg[3]),
        .I2(ROM_cmd_addr_r_reg[2]),
        .I3(ROM_cmd_addr_r_reg[0]),
        .I4(ROM_cmd_addr_r_reg[1]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_cmd_addr_r_reg[0] 
       (.C(CLK),
        .CE(\ROM_cmd_addr_r[4]_i_1_n_0 ),
        .CLR(rst_i_IBUF),
        .D(\ROM_cmd_addr_r[0]_i_1_n_0 ),
        .Q(ROM_cmd_addr_r_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_cmd_addr_r_reg[1] 
       (.C(CLK),
        .CE(\ROM_cmd_addr_r[4]_i_1_n_0 ),
        .CLR(rst_i_IBUF),
        .D(plusOp[1]),
        .Q(ROM_cmd_addr_r_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_cmd_addr_r_reg[2] 
       (.C(CLK),
        .CE(\ROM_cmd_addr_r[4]_i_1_n_0 ),
        .CLR(rst_i_IBUF),
        .D(plusOp[2]),
        .Q(ROM_cmd_addr_r_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_cmd_addr_r_reg[3] 
       (.C(CLK),
        .CE(\ROM_cmd_addr_r[4]_i_1_n_0 ),
        .CLR(rst_i_IBUF),
        .D(plusOp[3]),
        .Q(ROM_cmd_addr_r_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ROM_cmd_addr_r_reg[4] 
       (.C(CLK),
        .CE(\ROM_cmd_addr_r[4]_i_1_n_0 ),
        .CLR(rst_i_IBUF),
        .D(plusOp[4]),
        .Q(ROM_cmd_addr_r_reg[4]));
  adau1761_cmd_ROM ROM_cmd_inst
       (.CLK(CLK),
        .D({data_wr,ROM_cmd_inst_n_7}),
        .Q(ROM_cmd_addr_r_reg),
        .bit_cnt(bit_cnt),
        .\bit_cnt_reg[2] (ROM_cmd_inst_n_8),
        .rst_i_IBUF(rst_i_IBUF),
        .state_r(state_r));
  FDRE #(
    .INIT(1'b0)) 
    i2c_busy_r_reg
       (.C(CLK),
        .CE(\inst_i2s_serial/p_1_in ),
        .D(i2c_busy),
        .Q(i2c_busy_r),
        .R(1'b0));
  i2c_master i2c_master_inst
       (.CLK(CLK),
        .D({data_wr,ROM_cmd_inst_n_7}),
        .\FSM_sequential_state_r_reg[2] (i2c_master_inst_n_8),
        .\FSM_sequential_state_r_reg[2]_0 (i2c_master_inst_n_9),
        .\FSM_sequential_state_r_reg[2]_1 (i2c_master_inst_n_10),
        .\FSM_sequential_state_r_reg[2]_2 (\FSM_sequential_state_r[2]_i_2_n_0 ),
        .bit_cnt(bit_cnt),
        .codec_scl_io_IBUF(codec_scl_io_IBUF),
        .codec_scl_io_TRI(codec_scl_io_TRI),
        .codec_sda_io_OBUF(codec_sda_io_OBUF),
        .codec_sda_io_TRI(codec_sda_io_TRI),
        .i2c_busy(i2c_busy),
        .i2c_busy_r(i2c_busy_r),
        .p_1_in(\inst_i2s_serial/p_1_in ),
        .rst_i_IBUF(rst_i_IBUF),
        .sda_int_reg_0(ROM_cmd_inst_n_8),
        .state_r(state_r));
endmodule

(* NotValidForBitStream *)
module controleur_CODEC
   (clk_50mhz_i,
    clk_45mhz_i,
    rst_i,
    sample_in,
    ready_o,
    sample_out,
    valid_o,
    codec_scl_io,
    codec_sda_io,
    codec_mclk_o,
    codec_adc_sdata_i,
    codec_bclk_i,
    codec_dac_sdata_o,
    codec_lrclk_i);
  input clk_50mhz_i;
  input clk_45mhz_i;
  input rst_i;
  input [23:0]sample_in;
  output ready_o;
  output [23:0]sample_out;
  output valid_o;
  inout codec_scl_io;
  inout codec_sda_io;
  output codec_mclk_o;
  input codec_adc_sdata_i;
  input codec_bclk_i;
  output codec_dac_sdata_o;
  input codec_lrclk_i;

  wire clk_45mhz_i;
  wire clk_45mhz_i_IBUF;
  wire clk_50mhz_i;
  wire clk_50mhz_i_IBUF;
  wire clk_50mhz_i_IBUF_BUFG;
  wire codec_adc_sdata_i;
  wire codec_adc_sdata_i_IBUF;
  wire codec_bclk_i;
  wire codec_bclk_i_IBUF;
  wire codec_dac_sdata_o;
  wire codec_dac_sdata_o_OBUF;
  wire codec_lrclk_i;
  wire codec_lrclk_i_IBUF;
  wire codec_mclk_o;
  wire codec_mclk_o_OBUF;
  wire codec_scl_io;
  wire codec_scl_io_IBUF;
  wire codec_scl_io_TRI;
  wire codec_sda_io;
  wire codec_sda_io_OBUF;
  wire codec_sda_io_TRI;
  wire i2s_ready;
  wire i2s_ready_mono;
  wire i2s_ready_r;
  wire i2s_valid;
  wire i2s_valid_r;
  wire i2s_valid_rr;
  wire inst_i2s_serial_n_3;
  wire ready_o;
  wire ready_o_OBUF;
  wire rst_i;
  wire rst_i_IBUF;
  wire [23:0]sample_in;
  wire [23:0]sample_in_IBUF;
  wire \sample_in_r_reg_n_0_[0] ;
  wire \sample_in_r_reg_n_0_[10] ;
  wire \sample_in_r_reg_n_0_[11] ;
  wire \sample_in_r_reg_n_0_[12] ;
  wire \sample_in_r_reg_n_0_[13] ;
  wire \sample_in_r_reg_n_0_[14] ;
  wire \sample_in_r_reg_n_0_[15] ;
  wire \sample_in_r_reg_n_0_[16] ;
  wire \sample_in_r_reg_n_0_[17] ;
  wire \sample_in_r_reg_n_0_[18] ;
  wire \sample_in_r_reg_n_0_[19] ;
  wire \sample_in_r_reg_n_0_[1] ;
  wire \sample_in_r_reg_n_0_[20] ;
  wire \sample_in_r_reg_n_0_[21] ;
  wire \sample_in_r_reg_n_0_[22] ;
  wire \sample_in_r_reg_n_0_[23] ;
  wire \sample_in_r_reg_n_0_[2] ;
  wire \sample_in_r_reg_n_0_[3] ;
  wire \sample_in_r_reg_n_0_[4] ;
  wire \sample_in_r_reg_n_0_[5] ;
  wire \sample_in_r_reg_n_0_[6] ;
  wire \sample_in_r_reg_n_0_[7] ;
  wire \sample_in_r_reg_n_0_[8] ;
  wire \sample_in_r_reg_n_0_[9] ;
  wire [23:0]sample_left_r;
  wire [23:0]sample_out;
  wire [22:1]sample_out2;
  wire [23:1]sample_out4;
  wire \sample_out[11]_i_10_n_0 ;
  wire \sample_out[11]_i_12_n_0 ;
  wire \sample_out[11]_i_13_n_0 ;
  wire \sample_out[11]_i_14_n_0 ;
  wire \sample_out[11]_i_15_n_0 ;
  wire \sample_out[11]_i_2_n_0 ;
  wire \sample_out[11]_i_3_n_0 ;
  wire \sample_out[11]_i_4_n_0 ;
  wire \sample_out[11]_i_5_n_0 ;
  wire \sample_out[11]_i_7_n_0 ;
  wire \sample_out[11]_i_8_n_0 ;
  wire \sample_out[11]_i_9_n_0 ;
  wire \sample_out[15]_i_10_n_0 ;
  wire \sample_out[15]_i_12_n_0 ;
  wire \sample_out[15]_i_13_n_0 ;
  wire \sample_out[15]_i_14_n_0 ;
  wire \sample_out[15]_i_15_n_0 ;
  wire \sample_out[15]_i_2_n_0 ;
  wire \sample_out[15]_i_3_n_0 ;
  wire \sample_out[15]_i_4_n_0 ;
  wire \sample_out[15]_i_5_n_0 ;
  wire \sample_out[15]_i_7_n_0 ;
  wire \sample_out[15]_i_8_n_0 ;
  wire \sample_out[15]_i_9_n_0 ;
  wire \sample_out[19]_i_10_n_0 ;
  wire \sample_out[19]_i_12_n_0 ;
  wire \sample_out[19]_i_13_n_0 ;
  wire \sample_out[19]_i_14_n_0 ;
  wire \sample_out[19]_i_15_n_0 ;
  wire \sample_out[19]_i_2_n_0 ;
  wire \sample_out[19]_i_3_n_0 ;
  wire \sample_out[19]_i_4_n_0 ;
  wire \sample_out[19]_i_5_n_0 ;
  wire \sample_out[19]_i_7_n_0 ;
  wire \sample_out[19]_i_8_n_0 ;
  wire \sample_out[19]_i_9_n_0 ;
  wire \sample_out[23]_i_10_n_0 ;
  wire \sample_out[23]_i_11_n_0 ;
  wire \sample_out[23]_i_12_n_0 ;
  wire \sample_out[23]_i_13_n_0 ;
  wire \sample_out[23]_i_16_n_0 ;
  wire \sample_out[23]_i_17_n_0 ;
  wire \sample_out[23]_i_18_n_0 ;
  wire \sample_out[23]_i_19_n_0 ;
  wire \sample_out[23]_i_20_n_0 ;
  wire \sample_out[23]_i_21_n_0 ;
  wire \sample_out[23]_i_22_n_0 ;
  wire \sample_out[23]_i_2_n_0 ;
  wire \sample_out[23]_i_3_n_0 ;
  wire \sample_out[23]_i_4_n_0 ;
  wire \sample_out[23]_i_5_n_0 ;
  wire \sample_out[23]_i_8_n_0 ;
  wire \sample_out[23]_i_9_n_0 ;
  wire \sample_out[3]_i_10_n_0 ;
  wire \sample_out[3]_i_11_n_0 ;
  wire \sample_out[3]_i_2_n_0 ;
  wire \sample_out[3]_i_3_n_0 ;
  wire \sample_out[3]_i_4_n_0 ;
  wire \sample_out[3]_i_5_n_0 ;
  wire \sample_out[3]_i_7_n_0 ;
  wire \sample_out[3]_i_8_n_0 ;
  wire \sample_out[3]_i_9_n_0 ;
  wire \sample_out[7]_i_10_n_0 ;
  wire \sample_out[7]_i_11_n_0 ;
  wire \sample_out[7]_i_2_n_0 ;
  wire \sample_out[7]_i_3_n_0 ;
  wire \sample_out[7]_i_4_n_0 ;
  wire \sample_out[7]_i_5_n_0 ;
  wire \sample_out[7]_i_7_n_0 ;
  wire \sample_out[7]_i_8_n_0 ;
  wire \sample_out[7]_i_9_n_0 ;
  wire [23:0]sample_out_OBUF;
  wire \sample_out_reg[11]_i_11_n_0 ;
  wire \sample_out_reg[11]_i_11_n_1 ;
  wire \sample_out_reg[11]_i_11_n_2 ;
  wire \sample_out_reg[11]_i_11_n_3 ;
  wire \sample_out_reg[11]_i_1_n_0 ;
  wire \sample_out_reg[11]_i_1_n_1 ;
  wire \sample_out_reg[11]_i_1_n_2 ;
  wire \sample_out_reg[11]_i_1_n_3 ;
  wire \sample_out_reg[11]_i_1_n_4 ;
  wire \sample_out_reg[11]_i_1_n_5 ;
  wire \sample_out_reg[11]_i_1_n_6 ;
  wire \sample_out_reg[11]_i_1_n_7 ;
  wire \sample_out_reg[11]_i_6_n_0 ;
  wire \sample_out_reg[11]_i_6_n_1 ;
  wire \sample_out_reg[11]_i_6_n_2 ;
  wire \sample_out_reg[11]_i_6_n_3 ;
  wire \sample_out_reg[15]_i_11_n_0 ;
  wire \sample_out_reg[15]_i_11_n_1 ;
  wire \sample_out_reg[15]_i_11_n_2 ;
  wire \sample_out_reg[15]_i_11_n_3 ;
  wire \sample_out_reg[15]_i_1_n_0 ;
  wire \sample_out_reg[15]_i_1_n_1 ;
  wire \sample_out_reg[15]_i_1_n_2 ;
  wire \sample_out_reg[15]_i_1_n_3 ;
  wire \sample_out_reg[15]_i_1_n_4 ;
  wire \sample_out_reg[15]_i_1_n_5 ;
  wire \sample_out_reg[15]_i_1_n_6 ;
  wire \sample_out_reg[15]_i_1_n_7 ;
  wire \sample_out_reg[15]_i_6_n_0 ;
  wire \sample_out_reg[15]_i_6_n_1 ;
  wire \sample_out_reg[15]_i_6_n_2 ;
  wire \sample_out_reg[15]_i_6_n_3 ;
  wire \sample_out_reg[19]_i_11_n_0 ;
  wire \sample_out_reg[19]_i_11_n_1 ;
  wire \sample_out_reg[19]_i_11_n_2 ;
  wire \sample_out_reg[19]_i_11_n_3 ;
  wire \sample_out_reg[19]_i_1_n_0 ;
  wire \sample_out_reg[19]_i_1_n_1 ;
  wire \sample_out_reg[19]_i_1_n_2 ;
  wire \sample_out_reg[19]_i_1_n_3 ;
  wire \sample_out_reg[19]_i_1_n_4 ;
  wire \sample_out_reg[19]_i_1_n_5 ;
  wire \sample_out_reg[19]_i_1_n_6 ;
  wire \sample_out_reg[19]_i_1_n_7 ;
  wire \sample_out_reg[19]_i_6_n_0 ;
  wire \sample_out_reg[19]_i_6_n_1 ;
  wire \sample_out_reg[19]_i_6_n_2 ;
  wire \sample_out_reg[19]_i_6_n_3 ;
  wire \sample_out_reg[23]_i_14_n_2 ;
  wire \sample_out_reg[23]_i_14_n_3 ;
  wire \sample_out_reg[23]_i_15_n_0 ;
  wire \sample_out_reg[23]_i_15_n_1 ;
  wire \sample_out_reg[23]_i_15_n_2 ;
  wire \sample_out_reg[23]_i_15_n_3 ;
  wire \sample_out_reg[23]_i_1_n_1 ;
  wire \sample_out_reg[23]_i_1_n_2 ;
  wire \sample_out_reg[23]_i_1_n_3 ;
  wire \sample_out_reg[23]_i_1_n_4 ;
  wire \sample_out_reg[23]_i_1_n_5 ;
  wire \sample_out_reg[23]_i_1_n_6 ;
  wire \sample_out_reg[23]_i_1_n_7 ;
  wire \sample_out_reg[23]_i_6_n_1 ;
  wire \sample_out_reg[23]_i_6_n_3 ;
  wire \sample_out_reg[23]_i_7_n_0 ;
  wire \sample_out_reg[23]_i_7_n_1 ;
  wire \sample_out_reg[23]_i_7_n_2 ;
  wire \sample_out_reg[23]_i_7_n_3 ;
  wire \sample_out_reg[3]_i_1_n_0 ;
  wire \sample_out_reg[3]_i_1_n_1 ;
  wire \sample_out_reg[3]_i_1_n_2 ;
  wire \sample_out_reg[3]_i_1_n_3 ;
  wire \sample_out_reg[3]_i_1_n_4 ;
  wire \sample_out_reg[3]_i_1_n_5 ;
  wire \sample_out_reg[3]_i_1_n_6 ;
  wire \sample_out_reg[3]_i_1_n_7 ;
  wire \sample_out_reg[3]_i_6_n_0 ;
  wire \sample_out_reg[3]_i_6_n_1 ;
  wire \sample_out_reg[3]_i_6_n_2 ;
  wire \sample_out_reg[3]_i_6_n_3 ;
  wire \sample_out_reg[7]_i_1_n_0 ;
  wire \sample_out_reg[7]_i_1_n_1 ;
  wire \sample_out_reg[7]_i_1_n_2 ;
  wire \sample_out_reg[7]_i_1_n_3 ;
  wire \sample_out_reg[7]_i_1_n_4 ;
  wire \sample_out_reg[7]_i_1_n_5 ;
  wire \sample_out_reg[7]_i_1_n_6 ;
  wire \sample_out_reg[7]_i_1_n_7 ;
  wire \sample_out_reg[7]_i_6_n_0 ;
  wire \sample_out_reg[7]_i_6_n_1 ;
  wire \sample_out_reg[7]_i_6_n_2 ;
  wire \sample_out_reg[7]_i_6_n_3 ;
  wire sample_right_r;
  wire \sample_right_r_reg_n_0_[0] ;
  wire \sample_right_r_reg_n_0_[10] ;
  wire \sample_right_r_reg_n_0_[11] ;
  wire \sample_right_r_reg_n_0_[12] ;
  wire \sample_right_r_reg_n_0_[13] ;
  wire \sample_right_r_reg_n_0_[14] ;
  wire \sample_right_r_reg_n_0_[15] ;
  wire \sample_right_r_reg_n_0_[16] ;
  wire \sample_right_r_reg_n_0_[17] ;
  wire \sample_right_r_reg_n_0_[18] ;
  wire \sample_right_r_reg_n_0_[19] ;
  wire \sample_right_r_reg_n_0_[1] ;
  wire \sample_right_r_reg_n_0_[20] ;
  wire \sample_right_r_reg_n_0_[21] ;
  wire \sample_right_r_reg_n_0_[22] ;
  wire \sample_right_r_reg_n_0_[23] ;
  wire \sample_right_r_reg_n_0_[2] ;
  wire \sample_right_r_reg_n_0_[3] ;
  wire \sample_right_r_reg_n_0_[4] ;
  wire \sample_right_r_reg_n_0_[5] ;
  wire \sample_right_r_reg_n_0_[6] ;
  wire \sample_right_r_reg_n_0_[7] ;
  wire \sample_right_r_reg_n_0_[8] ;
  wire \sample_right_r_reg_n_0_[9] ;
  wire [23:0]sr_in;
  wire valid_o;
  wire valid_o_OBUF;
  wire [3:3]\NLW_sample_out_reg[23]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sample_out_reg[23]_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_sample_out_reg[23]_i_14_O_UNCONNECTED ;
  wire [3:1]\NLW_sample_out_reg[23]_i_6_CO_UNCONNECTED ;
  wire [3:2]\NLW_sample_out_reg[23]_i_6_O_UNCONNECTED ;

  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_45mhz_i_IBUF_inst
       (.I(clk_45mhz_i),
        .O(clk_45mhz_i_IBUF));
  BUFG clk_50mhz_i_IBUF_BUFG_inst
       (.I(clk_50mhz_i_IBUF),
        .O(clk_50mhz_i_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_50mhz_i_IBUF_inst
       (.I(clk_50mhz_i),
        .O(clk_50mhz_i_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    codec_adc_sdata_i_IBUF_inst
       (.I(codec_adc_sdata_i),
        .O(codec_adc_sdata_i_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    codec_bclk_i_IBUF_inst
       (.I(codec_bclk_i),
        .O(codec_bclk_i_IBUF));
  OBUF codec_dac_sdata_o_OBUF_inst
       (.I(codec_dac_sdata_o_OBUF),
        .O(codec_dac_sdata_o));
  IBUF #(
    .CCIO_EN("TRUE")) 
    codec_lrclk_i_IBUF_inst
       (.I(codec_lrclk_i),
        .O(codec_lrclk_i_IBUF));
  OBUF codec_mclk_o_OBUF_inst
       (.I(codec_mclk_o_OBUF),
        .O(codec_mclk_o));
  (* XILINX_REPORT_XFORM = "IOBUF" *) 
  IOBUF codec_scl_io_IOBUF_inst
       (.I(1'b0),
        .IO(codec_scl_io),
        .O(codec_scl_io_IBUF),
        .T(codec_scl_io_TRI));
  OBUFT codec_sda_io_OBUFT_inst
       (.I(codec_sda_io_OBUF),
        .O(codec_sda_io),
        .T(codec_sda_io_TRI));
  FDRE #(
    .INIT(1'b0)) 
    i2s_ready_mono_r_reg
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(i2s_ready_mono),
        .Q(ready_o_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i2s_ready_r_reg
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(i2s_ready),
        .Q(i2s_ready_r),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i2s_valid_r_reg
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(i2s_valid),
        .Q(i2s_valid_r),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i2s_valid_rr_reg
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(i2s_valid_r),
        .Q(i2s_valid_rr),
        .R(1'b0));
  adau1761_config inst_adau1761_config
       (.CLK(clk_50mhz_i_IBUF_BUFG),
        .codec_scl_io_IBUF(codec_scl_io_IBUF),
        .codec_scl_io_TRI(codec_scl_io_TRI),
        .codec_sda_io_OBUF(codec_sda_io_OBUF),
        .codec_sda_io_TRI(codec_sda_io_TRI),
        .rst_i_IBUF(rst_i_IBUF));
  i2s_serial inst_i2s_serial
       (.CLK(clk_50mhz_i_IBUF_BUFG),
        .D(codec_adc_sdata_i_IBUF),
        .E(inst_i2s_serial_n_3),
        .Q({\sample_in_r_reg_n_0_[23] ,\sample_in_r_reg_n_0_[22] ,\sample_in_r_reg_n_0_[21] ,\sample_in_r_reg_n_0_[20] ,\sample_in_r_reg_n_0_[19] ,\sample_in_r_reg_n_0_[18] ,\sample_in_r_reg_n_0_[17] ,\sample_in_r_reg_n_0_[16] ,\sample_in_r_reg_n_0_[15] ,\sample_in_r_reg_n_0_[14] ,\sample_in_r_reg_n_0_[13] ,\sample_in_r_reg_n_0_[12] ,\sample_in_r_reg_n_0_[11] ,\sample_in_r_reg_n_0_[10] ,\sample_in_r_reg_n_0_[9] ,\sample_in_r_reg_n_0_[8] ,\sample_in_r_reg_n_0_[7] ,\sample_in_r_reg_n_0_[6] ,\sample_in_r_reg_n_0_[5] ,\sample_in_r_reg_n_0_[4] ,\sample_in_r_reg_n_0_[3] ,\sample_in_r_reg_n_0_[2] ,\sample_in_r_reg_n_0_[1] ,\sample_in_r_reg_n_0_[0] }),
        .codec_bclk_i_IBUF(codec_bclk_i_IBUF),
        .codec_dac_sdata_o_OBUF(codec_dac_sdata_o_OBUF),
        .codec_lrclk_i_IBUF(codec_lrclk_i_IBUF),
        .i2s_ready(i2s_ready),
        .i2s_ready_r(i2s_ready_r),
        .i2s_valid(i2s_valid),
        .ready_reg_0(i2s_ready_mono),
        .rst_i_IBUF(rst_i_IBUF),
        .\sr_in_reg[23]_0 (sr_in),
        .valid_reg_0(sample_right_r));
  (* IMPORTED_FROM = "/home/simon/proj/vivado/controleur_CODEC/controleur_CODEC.gen/sources_1/ip/oddr_0/oddr_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "oddr_v1_0_2_oddr,Vivado 2022.2" *) 
  oddr_0 inst_oddr
       (.clk_in(clk_45mhz_i_IBUF),
        .clk_out(codec_mclk_o_OBUF));
  OBUF ready_o_OBUF_inst
       (.I(ready_o_OBUF),
        .O(ready_o));
  IBUF #(
    .CCIO_EN("TRUE")) 
    rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[0]_inst 
       (.I(sample_in[0]),
        .O(sample_in_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[10]_inst 
       (.I(sample_in[10]),
        .O(sample_in_IBUF[10]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[11]_inst 
       (.I(sample_in[11]),
        .O(sample_in_IBUF[11]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[12]_inst 
       (.I(sample_in[12]),
        .O(sample_in_IBUF[12]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[13]_inst 
       (.I(sample_in[13]),
        .O(sample_in_IBUF[13]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[14]_inst 
       (.I(sample_in[14]),
        .O(sample_in_IBUF[14]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[15]_inst 
       (.I(sample_in[15]),
        .O(sample_in_IBUF[15]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[16]_inst 
       (.I(sample_in[16]),
        .O(sample_in_IBUF[16]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[17]_inst 
       (.I(sample_in[17]),
        .O(sample_in_IBUF[17]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[18]_inst 
       (.I(sample_in[18]),
        .O(sample_in_IBUF[18]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[19]_inst 
       (.I(sample_in[19]),
        .O(sample_in_IBUF[19]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[1]_inst 
       (.I(sample_in[1]),
        .O(sample_in_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[20]_inst 
       (.I(sample_in[20]),
        .O(sample_in_IBUF[20]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[21]_inst 
       (.I(sample_in[21]),
        .O(sample_in_IBUF[21]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[22]_inst 
       (.I(sample_in[22]),
        .O(sample_in_IBUF[22]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[23]_inst 
       (.I(sample_in[23]),
        .O(sample_in_IBUF[23]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[2]_inst 
       (.I(sample_in[2]),
        .O(sample_in_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[3]_inst 
       (.I(sample_in[3]),
        .O(sample_in_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[4]_inst 
       (.I(sample_in[4]),
        .O(sample_in_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[5]_inst 
       (.I(sample_in[5]),
        .O(sample_in_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[6]_inst 
       (.I(sample_in[6]),
        .O(sample_in_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[7]_inst 
       (.I(sample_in[7]),
        .O(sample_in_IBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[8]_inst 
       (.I(sample_in[8]),
        .O(sample_in_IBUF[8]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sample_in_IBUF[9]_inst 
       (.I(sample_in[9]),
        .O(sample_in_IBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[0] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[0]),
        .Q(\sample_in_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[10] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[10]),
        .Q(\sample_in_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[11] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[11]),
        .Q(\sample_in_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[12] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[12]),
        .Q(\sample_in_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[13] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[13]),
        .Q(\sample_in_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[14] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[14]),
        .Q(\sample_in_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[15] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[15]),
        .Q(\sample_in_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[16] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[16]),
        .Q(\sample_in_r_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[17] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[17]),
        .Q(\sample_in_r_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[18] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[18]),
        .Q(\sample_in_r_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[19] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[19]),
        .Q(\sample_in_r_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[1] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[1]),
        .Q(\sample_in_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[20] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[20]),
        .Q(\sample_in_r_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[21] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[21]),
        .Q(\sample_in_r_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[22] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[22]),
        .Q(\sample_in_r_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[23] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[23]),
        .Q(\sample_in_r_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[2] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[2]),
        .Q(\sample_in_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[3] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[3]),
        .Q(\sample_in_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[4] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[4]),
        .Q(\sample_in_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[5] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[5]),
        .Q(\sample_in_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[6] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[6]),
        .Q(\sample_in_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[7] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[7]),
        .Q(\sample_in_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[8] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[8]),
        .Q(\sample_in_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_in_r_reg[9] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(i2s_ready_mono),
        .D(sample_in_IBUF[9]),
        .Q(\sample_in_r_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[0] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[0]),
        .Q(sample_left_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[10] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[10]),
        .Q(sample_left_r[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[11] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[11]),
        .Q(sample_left_r[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[12] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[12]),
        .Q(sample_left_r[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[13] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[13]),
        .Q(sample_left_r[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[14] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[14]),
        .Q(sample_left_r[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[15] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[15]),
        .Q(sample_left_r[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[16] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[16]),
        .Q(sample_left_r[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[17] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[17]),
        .Q(sample_left_r[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[18] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[18]),
        .Q(sample_left_r[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[19] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[19]),
        .Q(sample_left_r[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[1] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[1]),
        .Q(sample_left_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[20] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[20]),
        .Q(sample_left_r[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[21] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[21]),
        .Q(sample_left_r[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[22] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[22]),
        .Q(sample_left_r[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[23] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[23]),
        .Q(sample_left_r[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[2] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[2]),
        .Q(sample_left_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[3] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[3]),
        .Q(sample_left_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[4] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[4]),
        .Q(sample_left_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[5] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[5]),
        .Q(sample_left_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[6] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[6]),
        .Q(sample_left_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[7] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[7]),
        .Q(sample_left_r[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[8] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[8]),
        .Q(sample_left_r[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_left_r_reg[9] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(inst_i2s_serial_n_3),
        .D(sr_in[9]),
        .Q(sample_left_r[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[11]_i_10 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[6]),
        .I2(\sample_right_r_reg_n_0_[6] ),
        .O(\sample_out[11]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[11]_i_12 
       (.I0(\sample_right_r_reg_n_0_[8] ),
        .O(\sample_out[11]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[11]_i_13 
       (.I0(\sample_right_r_reg_n_0_[7] ),
        .O(\sample_out[11]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[11]_i_14 
       (.I0(\sample_right_r_reg_n_0_[6] ),
        .O(\sample_out[11]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[11]_i_15 
       (.I0(\sample_right_r_reg_n_0_[5] ),
        .O(\sample_out[11]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[11]_i_2 
       (.I0(sample_left_r[11]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[12] ),
        .I3(sample_out2[11]),
        .O(\sample_out[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[11]_i_3 
       (.I0(sample_left_r[10]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[11] ),
        .I3(sample_out2[10]),
        .O(\sample_out[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[11]_i_4 
       (.I0(sample_left_r[9]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[10] ),
        .I3(sample_out2[9]),
        .O(\sample_out[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[11]_i_5 
       (.I0(sample_left_r[8]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[9] ),
        .I3(sample_out2[8]),
        .O(\sample_out[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[11]_i_7 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[9]),
        .I2(\sample_right_r_reg_n_0_[9] ),
        .O(\sample_out[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[11]_i_8 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[8]),
        .I2(\sample_right_r_reg_n_0_[8] ),
        .O(\sample_out[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[11]_i_9 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[7]),
        .I2(\sample_right_r_reg_n_0_[7] ),
        .O(\sample_out[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[15]_i_10 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[10]),
        .I2(\sample_right_r_reg_n_0_[10] ),
        .O(\sample_out[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[15]_i_12 
       (.I0(\sample_right_r_reg_n_0_[12] ),
        .O(\sample_out[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[15]_i_13 
       (.I0(\sample_right_r_reg_n_0_[11] ),
        .O(\sample_out[15]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[15]_i_14 
       (.I0(\sample_right_r_reg_n_0_[10] ),
        .O(\sample_out[15]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[15]_i_15 
       (.I0(\sample_right_r_reg_n_0_[9] ),
        .O(\sample_out[15]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[15]_i_2 
       (.I0(sample_left_r[15]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[16] ),
        .I3(sample_out2[15]),
        .O(\sample_out[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[15]_i_3 
       (.I0(sample_left_r[14]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[15] ),
        .I3(sample_out2[14]),
        .O(\sample_out[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[15]_i_4 
       (.I0(sample_left_r[13]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[14] ),
        .I3(sample_out2[13]),
        .O(\sample_out[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[15]_i_5 
       (.I0(sample_left_r[12]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[13] ),
        .I3(sample_out2[12]),
        .O(\sample_out[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[15]_i_7 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[13]),
        .I2(\sample_right_r_reg_n_0_[13] ),
        .O(\sample_out[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[15]_i_8 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[12]),
        .I2(\sample_right_r_reg_n_0_[12] ),
        .O(\sample_out[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[15]_i_9 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[11]),
        .I2(\sample_right_r_reg_n_0_[11] ),
        .O(\sample_out[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[19]_i_10 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[14]),
        .I2(\sample_right_r_reg_n_0_[14] ),
        .O(\sample_out[19]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[19]_i_12 
       (.I0(\sample_right_r_reg_n_0_[16] ),
        .O(\sample_out[19]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[19]_i_13 
       (.I0(\sample_right_r_reg_n_0_[15] ),
        .O(\sample_out[19]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[19]_i_14 
       (.I0(\sample_right_r_reg_n_0_[14] ),
        .O(\sample_out[19]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[19]_i_15 
       (.I0(\sample_right_r_reg_n_0_[13] ),
        .O(\sample_out[19]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[19]_i_2 
       (.I0(sample_left_r[19]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[20] ),
        .I3(sample_out2[19]),
        .O(\sample_out[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[19]_i_3 
       (.I0(sample_left_r[18]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[19] ),
        .I3(sample_out2[18]),
        .O(\sample_out[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[19]_i_4 
       (.I0(sample_left_r[17]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[18] ),
        .I3(sample_out2[17]),
        .O(\sample_out[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[19]_i_5 
       (.I0(sample_left_r[16]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[17] ),
        .I3(sample_out2[16]),
        .O(\sample_out[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[19]_i_7 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[17]),
        .I2(\sample_right_r_reg_n_0_[17] ),
        .O(\sample_out[19]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[19]_i_8 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[16]),
        .I2(\sample_right_r_reg_n_0_[16] ),
        .O(\sample_out[19]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[19]_i_9 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[15]),
        .I2(\sample_right_r_reg_n_0_[15] ),
        .O(\sample_out[19]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[23]_i_10 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[21]),
        .I2(\sample_right_r_reg_n_0_[21] ),
        .O(\sample_out[23]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[23]_i_11 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[20]),
        .I2(\sample_right_r_reg_n_0_[20] ),
        .O(\sample_out[23]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[23]_i_12 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[19]),
        .I2(\sample_right_r_reg_n_0_[19] ),
        .O(\sample_out[23]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[23]_i_13 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[18]),
        .I2(\sample_right_r_reg_n_0_[18] ),
        .O(\sample_out[23]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[23]_i_16 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .O(\sample_out[23]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[23]_i_17 
       (.I0(\sample_right_r_reg_n_0_[22] ),
        .O(\sample_out[23]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[23]_i_18 
       (.I0(\sample_right_r_reg_n_0_[21] ),
        .O(\sample_out[23]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[23]_i_19 
       (.I0(\sample_right_r_reg_n_0_[20] ),
        .O(\sample_out[23]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sample_out[23]_i_2 
       (.I0(sample_left_r[23]),
        .I1(\sample_out_reg[23]_i_6_n_1 ),
        .I2(\sample_right_r_reg_n_0_[23] ),
        .O(\sample_out[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[23]_i_20 
       (.I0(\sample_right_r_reg_n_0_[19] ),
        .O(\sample_out[23]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[23]_i_21 
       (.I0(\sample_right_r_reg_n_0_[18] ),
        .O(\sample_out[23]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[23]_i_22 
       (.I0(\sample_right_r_reg_n_0_[17] ),
        .O(\sample_out[23]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \sample_out[23]_i_3 
       (.I0(sample_left_r[22]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(sample_out2[22]),
        .O(\sample_out[23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sample_out[23]_i_4 
       (.I0(sample_left_r[21]),
        .I1(\sample_right_r_reg_n_0_[22] ),
        .I2(\sample_right_r_reg_n_0_[23] ),
        .I3(sample_out2[21]),
        .O(\sample_out[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[23]_i_5 
       (.I0(sample_left_r[20]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[21] ),
        .I3(sample_out2[20]),
        .O(\sample_out[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \sample_out[23]_i_8 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[23]),
        .O(\sample_out[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \sample_out[23]_i_9 
       (.I0(\sample_right_r_reg_n_0_[22] ),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(sample_out4[22]),
        .O(\sample_out[23]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[3]_i_10 
       (.I0(\sample_right_r_reg_n_0_[2] ),
        .O(\sample_out[3]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[3]_i_11 
       (.I0(\sample_right_r_reg_n_0_[1] ),
        .O(\sample_out[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[3]_i_2 
       (.I0(sample_left_r[3]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[4] ),
        .I3(sample_out2[3]),
        .O(\sample_out[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[3]_i_3 
       (.I0(sample_left_r[2]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[3] ),
        .I3(sample_out2[2]),
        .O(\sample_out[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[3]_i_4 
       (.I0(sample_left_r[1]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[2] ),
        .I3(sample_out2[1]),
        .O(\sample_out[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h596A)) 
    \sample_out[3]_i_5 
       (.I0(sample_left_r[0]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(sample_out4[1]),
        .I3(\sample_right_r_reg_n_0_[1] ),
        .O(\sample_out[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[3]_i_7 
       (.I0(\sample_right_r_reg_n_0_[0] ),
        .O(\sample_out[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[3]_i_8 
       (.I0(\sample_right_r_reg_n_0_[4] ),
        .O(\sample_out[3]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_out[3]_i_9 
       (.I0(\sample_right_r_reg_n_0_[3] ),
        .O(\sample_out[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[7]_i_10 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[3]),
        .I2(\sample_right_r_reg_n_0_[3] ),
        .O(\sample_out[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[7]_i_11 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[2]),
        .I2(\sample_right_r_reg_n_0_[2] ),
        .O(\sample_out[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[7]_i_2 
       (.I0(sample_left_r[7]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[8] ),
        .I3(sample_out2[7]),
        .O(\sample_out[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[7]_i_3 
       (.I0(sample_left_r[6]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[7] ),
        .I3(sample_out2[6]),
        .O(\sample_out[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[7]_i_4 
       (.I0(sample_left_r[5]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[6] ),
        .I3(sample_out2[5]),
        .O(\sample_out[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \sample_out[7]_i_5 
       (.I0(sample_left_r[4]),
        .I1(\sample_right_r_reg_n_0_[23] ),
        .I2(\sample_right_r_reg_n_0_[5] ),
        .I3(sample_out2[4]),
        .O(\sample_out[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[7]_i_7 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[1]),
        .I2(\sample_right_r_reg_n_0_[1] ),
        .O(\sample_out[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[7]_i_8 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[5]),
        .I2(\sample_right_r_reg_n_0_[5] ),
        .O(\sample_out[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h27)) 
    \sample_out[7]_i_9 
       (.I0(\sample_right_r_reg_n_0_[23] ),
        .I1(sample_out4[4]),
        .I2(\sample_right_r_reg_n_0_[4] ),
        .O(\sample_out[7]_i_9_n_0 ));
  OBUF \sample_out_OBUF[0]_inst 
       (.I(sample_out_OBUF[0]),
        .O(sample_out[0]));
  OBUF \sample_out_OBUF[10]_inst 
       (.I(sample_out_OBUF[10]),
        .O(sample_out[10]));
  OBUF \sample_out_OBUF[11]_inst 
       (.I(sample_out_OBUF[11]),
        .O(sample_out[11]));
  OBUF \sample_out_OBUF[12]_inst 
       (.I(sample_out_OBUF[12]),
        .O(sample_out[12]));
  OBUF \sample_out_OBUF[13]_inst 
       (.I(sample_out_OBUF[13]),
        .O(sample_out[13]));
  OBUF \sample_out_OBUF[14]_inst 
       (.I(sample_out_OBUF[14]),
        .O(sample_out[14]));
  OBUF \sample_out_OBUF[15]_inst 
       (.I(sample_out_OBUF[15]),
        .O(sample_out[15]));
  OBUF \sample_out_OBUF[16]_inst 
       (.I(sample_out_OBUF[16]),
        .O(sample_out[16]));
  OBUF \sample_out_OBUF[17]_inst 
       (.I(sample_out_OBUF[17]),
        .O(sample_out[17]));
  OBUF \sample_out_OBUF[18]_inst 
       (.I(sample_out_OBUF[18]),
        .O(sample_out[18]));
  OBUF \sample_out_OBUF[19]_inst 
       (.I(sample_out_OBUF[19]),
        .O(sample_out[19]));
  OBUF \sample_out_OBUF[1]_inst 
       (.I(sample_out_OBUF[1]),
        .O(sample_out[1]));
  OBUF \sample_out_OBUF[20]_inst 
       (.I(sample_out_OBUF[20]),
        .O(sample_out[20]));
  OBUF \sample_out_OBUF[21]_inst 
       (.I(sample_out_OBUF[21]),
        .O(sample_out[21]));
  OBUF \sample_out_OBUF[22]_inst 
       (.I(sample_out_OBUF[22]),
        .O(sample_out[22]));
  OBUF \sample_out_OBUF[23]_inst 
       (.I(sample_out_OBUF[23]),
        .O(sample_out[23]));
  OBUF \sample_out_OBUF[2]_inst 
       (.I(sample_out_OBUF[2]),
        .O(sample_out[2]));
  OBUF \sample_out_OBUF[3]_inst 
       (.I(sample_out_OBUF[3]),
        .O(sample_out[3]));
  OBUF \sample_out_OBUF[4]_inst 
       (.I(sample_out_OBUF[4]),
        .O(sample_out[4]));
  OBUF \sample_out_OBUF[5]_inst 
       (.I(sample_out_OBUF[5]),
        .O(sample_out[5]));
  OBUF \sample_out_OBUF[6]_inst 
       (.I(sample_out_OBUF[6]),
        .O(sample_out[6]));
  OBUF \sample_out_OBUF[7]_inst 
       (.I(sample_out_OBUF[7]),
        .O(sample_out[7]));
  OBUF \sample_out_OBUF[8]_inst 
       (.I(sample_out_OBUF[8]),
        .O(sample_out[8]));
  OBUF \sample_out_OBUF[9]_inst 
       (.I(sample_out_OBUF[9]),
        .O(sample_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[0] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[3]_i_1_n_7 ),
        .Q(sample_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[10] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[11]_i_1_n_5 ),
        .Q(sample_out_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[11] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[11]_i_1_n_4 ),
        .Q(sample_out_OBUF[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[11]_i_1 
       (.CI(\sample_out_reg[7]_i_1_n_0 ),
        .CO({\sample_out_reg[11]_i_1_n_0 ,\sample_out_reg[11]_i_1_n_1 ,\sample_out_reg[11]_i_1_n_2 ,\sample_out_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sample_left_r[11:8]),
        .O({\sample_out_reg[11]_i_1_n_4 ,\sample_out_reg[11]_i_1_n_5 ,\sample_out_reg[11]_i_1_n_6 ,\sample_out_reg[11]_i_1_n_7 }),
        .S({\sample_out[11]_i_2_n_0 ,\sample_out[11]_i_3_n_0 ,\sample_out[11]_i_4_n_0 ,\sample_out[11]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[11]_i_11 
       (.CI(\sample_out_reg[3]_i_6_n_0 ),
        .CO({\sample_out_reg[11]_i_11_n_0 ,\sample_out_reg[11]_i_11_n_1 ,\sample_out_reg[11]_i_11_n_2 ,\sample_out_reg[11]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_out4[8:5]),
        .S({\sample_out[11]_i_12_n_0 ,\sample_out[11]_i_13_n_0 ,\sample_out[11]_i_14_n_0 ,\sample_out[11]_i_15_n_0 }));
  CARRY4 \sample_out_reg[11]_i_6 
       (.CI(\sample_out_reg[7]_i_6_n_0 ),
        .CO({\sample_out_reg[11]_i_6_n_0 ,\sample_out_reg[11]_i_6_n_1 ,\sample_out_reg[11]_i_6_n_2 ,\sample_out_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_out2[8:5]),
        .S({\sample_out[11]_i_7_n_0 ,\sample_out[11]_i_8_n_0 ,\sample_out[11]_i_9_n_0 ,\sample_out[11]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[12] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[15]_i_1_n_7 ),
        .Q(sample_out_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[13] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[15]_i_1_n_6 ),
        .Q(sample_out_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[14] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[15]_i_1_n_5 ),
        .Q(sample_out_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[15] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[15]_i_1_n_4 ),
        .Q(sample_out_OBUF[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[15]_i_1 
       (.CI(\sample_out_reg[11]_i_1_n_0 ),
        .CO({\sample_out_reg[15]_i_1_n_0 ,\sample_out_reg[15]_i_1_n_1 ,\sample_out_reg[15]_i_1_n_2 ,\sample_out_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sample_left_r[15:12]),
        .O({\sample_out_reg[15]_i_1_n_4 ,\sample_out_reg[15]_i_1_n_5 ,\sample_out_reg[15]_i_1_n_6 ,\sample_out_reg[15]_i_1_n_7 }),
        .S({\sample_out[15]_i_2_n_0 ,\sample_out[15]_i_3_n_0 ,\sample_out[15]_i_4_n_0 ,\sample_out[15]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[15]_i_11 
       (.CI(\sample_out_reg[11]_i_11_n_0 ),
        .CO({\sample_out_reg[15]_i_11_n_0 ,\sample_out_reg[15]_i_11_n_1 ,\sample_out_reg[15]_i_11_n_2 ,\sample_out_reg[15]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_out4[12:9]),
        .S({\sample_out[15]_i_12_n_0 ,\sample_out[15]_i_13_n_0 ,\sample_out[15]_i_14_n_0 ,\sample_out[15]_i_15_n_0 }));
  CARRY4 \sample_out_reg[15]_i_6 
       (.CI(\sample_out_reg[11]_i_6_n_0 ),
        .CO({\sample_out_reg[15]_i_6_n_0 ,\sample_out_reg[15]_i_6_n_1 ,\sample_out_reg[15]_i_6_n_2 ,\sample_out_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_out2[12:9]),
        .S({\sample_out[15]_i_7_n_0 ,\sample_out[15]_i_8_n_0 ,\sample_out[15]_i_9_n_0 ,\sample_out[15]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[16] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[19]_i_1_n_7 ),
        .Q(sample_out_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[17] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[19]_i_1_n_6 ),
        .Q(sample_out_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[18] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[19]_i_1_n_5 ),
        .Q(sample_out_OBUF[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[19] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[19]_i_1_n_4 ),
        .Q(sample_out_OBUF[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[19]_i_1 
       (.CI(\sample_out_reg[15]_i_1_n_0 ),
        .CO({\sample_out_reg[19]_i_1_n_0 ,\sample_out_reg[19]_i_1_n_1 ,\sample_out_reg[19]_i_1_n_2 ,\sample_out_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sample_left_r[19:16]),
        .O({\sample_out_reg[19]_i_1_n_4 ,\sample_out_reg[19]_i_1_n_5 ,\sample_out_reg[19]_i_1_n_6 ,\sample_out_reg[19]_i_1_n_7 }),
        .S({\sample_out[19]_i_2_n_0 ,\sample_out[19]_i_3_n_0 ,\sample_out[19]_i_4_n_0 ,\sample_out[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[19]_i_11 
       (.CI(\sample_out_reg[15]_i_11_n_0 ),
        .CO({\sample_out_reg[19]_i_11_n_0 ,\sample_out_reg[19]_i_11_n_1 ,\sample_out_reg[19]_i_11_n_2 ,\sample_out_reg[19]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_out4[16:13]),
        .S({\sample_out[19]_i_12_n_0 ,\sample_out[19]_i_13_n_0 ,\sample_out[19]_i_14_n_0 ,\sample_out[19]_i_15_n_0 }));
  CARRY4 \sample_out_reg[19]_i_6 
       (.CI(\sample_out_reg[15]_i_6_n_0 ),
        .CO({\sample_out_reg[19]_i_6_n_0 ,\sample_out_reg[19]_i_6_n_1 ,\sample_out_reg[19]_i_6_n_2 ,\sample_out_reg[19]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_out2[16:13]),
        .S({\sample_out[19]_i_7_n_0 ,\sample_out[19]_i_8_n_0 ,\sample_out[19]_i_9_n_0 ,\sample_out[19]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[1] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[3]_i_1_n_6 ),
        .Q(sample_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[20] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[23]_i_1_n_7 ),
        .Q(sample_out_OBUF[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[21] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[23]_i_1_n_6 ),
        .Q(sample_out_OBUF[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[22] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[23]_i_1_n_5 ),
        .Q(sample_out_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[23] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[23]_i_1_n_4 ),
        .Q(sample_out_OBUF[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[23]_i_1 
       (.CI(\sample_out_reg[19]_i_1_n_0 ),
        .CO({\NLW_sample_out_reg[23]_i_1_CO_UNCONNECTED [3],\sample_out_reg[23]_i_1_n_1 ,\sample_out_reg[23]_i_1_n_2 ,\sample_out_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,sample_left_r[22:20]}),
        .O({\sample_out_reg[23]_i_1_n_4 ,\sample_out_reg[23]_i_1_n_5 ,\sample_out_reg[23]_i_1_n_6 ,\sample_out_reg[23]_i_1_n_7 }),
        .S({\sample_out[23]_i_2_n_0 ,\sample_out[23]_i_3_n_0 ,\sample_out[23]_i_4_n_0 ,\sample_out[23]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[23]_i_14 
       (.CI(\sample_out_reg[23]_i_15_n_0 ),
        .CO({\NLW_sample_out_reg[23]_i_14_CO_UNCONNECTED [3:2],\sample_out_reg[23]_i_14_n_2 ,\sample_out_reg[23]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sample_out_reg[23]_i_14_O_UNCONNECTED [3],sample_out4[23:21]}),
        .S({1'b0,\sample_out[23]_i_16_n_0 ,\sample_out[23]_i_17_n_0 ,\sample_out[23]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[23]_i_15 
       (.CI(\sample_out_reg[19]_i_11_n_0 ),
        .CO({\sample_out_reg[23]_i_15_n_0 ,\sample_out_reg[23]_i_15_n_1 ,\sample_out_reg[23]_i_15_n_2 ,\sample_out_reg[23]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_out4[20:17]),
        .S({\sample_out[23]_i_19_n_0 ,\sample_out[23]_i_20_n_0 ,\sample_out[23]_i_21_n_0 ,\sample_out[23]_i_22_n_0 }));
  CARRY4 \sample_out_reg[23]_i_6 
       (.CI(\sample_out_reg[23]_i_7_n_0 ),
        .CO({\NLW_sample_out_reg[23]_i_6_CO_UNCONNECTED [3],\sample_out_reg[23]_i_6_n_1 ,\NLW_sample_out_reg[23]_i_6_CO_UNCONNECTED [1],\sample_out_reg[23]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sample_out_reg[23]_i_6_O_UNCONNECTED [3:2],sample_out2[22:21]}),
        .S({1'b0,1'b1,\sample_out[23]_i_8_n_0 ,\sample_out[23]_i_9_n_0 }));
  CARRY4 \sample_out_reg[23]_i_7 
       (.CI(\sample_out_reg[19]_i_6_n_0 ),
        .CO({\sample_out_reg[23]_i_7_n_0 ,\sample_out_reg[23]_i_7_n_1 ,\sample_out_reg[23]_i_7_n_2 ,\sample_out_reg[23]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_out2[20:17]),
        .S({\sample_out[23]_i_10_n_0 ,\sample_out[23]_i_11_n_0 ,\sample_out[23]_i_12_n_0 ,\sample_out[23]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[2] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[3]_i_1_n_5 ),
        .Q(sample_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[3] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[3]_i_1_n_4 ),
        .Q(sample_out_OBUF[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sample_out_reg[3]_i_1_n_0 ,\sample_out_reg[3]_i_1_n_1 ,\sample_out_reg[3]_i_1_n_2 ,\sample_out_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sample_left_r[3:0]),
        .O({\sample_out_reg[3]_i_1_n_4 ,\sample_out_reg[3]_i_1_n_5 ,\sample_out_reg[3]_i_1_n_6 ,\sample_out_reg[3]_i_1_n_7 }),
        .S({\sample_out[3]_i_2_n_0 ,\sample_out[3]_i_3_n_0 ,\sample_out[3]_i_4_n_0 ,\sample_out[3]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\sample_out_reg[3]_i_6_n_0 ,\sample_out_reg[3]_i_6_n_1 ,\sample_out_reg[3]_i_6_n_2 ,\sample_out_reg[3]_i_6_n_3 }),
        .CYINIT(\sample_out[3]_i_7_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_out4[4:1]),
        .S({\sample_out[3]_i_8_n_0 ,\sample_out[3]_i_9_n_0 ,\sample_out[3]_i_10_n_0 ,\sample_out[3]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[4] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[7]_i_1_n_7 ),
        .Q(sample_out_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[5] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[7]_i_1_n_6 ),
        .Q(sample_out_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[6] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[7]_i_1_n_5 ),
        .Q(sample_out_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[7] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[7]_i_1_n_4 ),
        .Q(sample_out_OBUF[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sample_out_reg[7]_i_1 
       (.CI(\sample_out_reg[3]_i_1_n_0 ),
        .CO({\sample_out_reg[7]_i_1_n_0 ,\sample_out_reg[7]_i_1_n_1 ,\sample_out_reg[7]_i_1_n_2 ,\sample_out_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sample_left_r[7:4]),
        .O({\sample_out_reg[7]_i_1_n_4 ,\sample_out_reg[7]_i_1_n_5 ,\sample_out_reg[7]_i_1_n_6 ,\sample_out_reg[7]_i_1_n_7 }),
        .S({\sample_out[7]_i_2_n_0 ,\sample_out[7]_i_3_n_0 ,\sample_out[7]_i_4_n_0 ,\sample_out[7]_i_5_n_0 }));
  CARRY4 \sample_out_reg[7]_i_6 
       (.CI(1'b0),
        .CO({\sample_out_reg[7]_i_6_n_0 ,\sample_out_reg[7]_i_6_n_1 ,\sample_out_reg[7]_i_6_n_2 ,\sample_out_reg[7]_i_6_n_3 }),
        .CYINIT(\sample_out[7]_i_7_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sample_out2[4:1]),
        .S({\sample_out[7]_i_8_n_0 ,\sample_out[7]_i_9_n_0 ,\sample_out[7]_i_10_n_0 ,\sample_out[7]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[8] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[11]_i_1_n_7 ),
        .Q(sample_out_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[9] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\sample_out_reg[11]_i_1_n_6 ),
        .Q(sample_out_OBUF[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[0] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[0]),
        .Q(\sample_right_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[10] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[10]),
        .Q(\sample_right_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[11] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[11]),
        .Q(\sample_right_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[12] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[12]),
        .Q(\sample_right_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[13] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[13]),
        .Q(\sample_right_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[14] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[14]),
        .Q(\sample_right_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[15] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[15]),
        .Q(\sample_right_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[16] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[16]),
        .Q(\sample_right_r_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[17] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[17]),
        .Q(\sample_right_r_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[18] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[18]),
        .Q(\sample_right_r_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[19] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[19]),
        .Q(\sample_right_r_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[1] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[1]),
        .Q(\sample_right_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[20] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[20]),
        .Q(\sample_right_r_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[21] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[21]),
        .Q(\sample_right_r_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[22] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[22]),
        .Q(\sample_right_r_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[23] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[23]),
        .Q(\sample_right_r_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[2] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[2]),
        .Q(\sample_right_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[3] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[3]),
        .Q(\sample_right_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[4] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[4]),
        .Q(\sample_right_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[5] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[5]),
        .Q(\sample_right_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[6] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[6]),
        .Q(\sample_right_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[7] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[7]),
        .Q(\sample_right_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[8] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[8]),
        .Q(\sample_right_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_right_r_reg[9] 
       (.C(clk_50mhz_i_IBUF_BUFG),
        .CE(sample_right_r),
        .D(sr_in[9]),
        .Q(\sample_right_r_reg_n_0_[9] ),
        .R(1'b0));
  OBUF valid_o_OBUF_inst
       (.I(valid_o_OBUF),
        .O(valid_o));
  LUT2 #(
    .INIT(4'h2)) 
    valid_o_OBUF_inst_i_1
       (.I0(i2s_valid_rr),
        .I1(codec_lrclk_i_IBUF),
        .O(valid_o_OBUF));
endmodule

module i2c_master
   (p_1_in,
    i2c_busy,
    bit_cnt,
    codec_sda_io_OBUF,
    codec_scl_io_TRI,
    codec_sda_io_TRI,
    \FSM_sequential_state_r_reg[2] ,
    \FSM_sequential_state_r_reg[2]_0 ,
    \FSM_sequential_state_r_reg[2]_1 ,
    codec_scl_io_IBUF,
    CLK,
    rst_i_IBUF,
    state_r,
    sda_int_reg_0,
    \FSM_sequential_state_r_reg[2]_2 ,
    i2c_busy_r,
    D);
  output p_1_in;
  output i2c_busy;
  output [2:0]bit_cnt;
  output codec_sda_io_OBUF;
  output codec_scl_io_TRI;
  output codec_sda_io_TRI;
  output \FSM_sequential_state_r_reg[2] ;
  output \FSM_sequential_state_r_reg[2]_0 ;
  output \FSM_sequential_state_r_reg[2]_1 ;
  input codec_scl_io_IBUF;
  input CLK;
  input rst_i_IBUF;
  input [2:0]state_r;
  input sda_int_reg_0;
  input \FSM_sequential_state_r_reg[2]_2 ;
  input i2c_busy_r;
  input [7:0]D;

  wire CLK;
  wire [7:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_sequential_state_r_reg[2] ;
  wire \FSM_sequential_state_r_reg[2]_0 ;
  wire \FSM_sequential_state_r_reg[2]_1 ;
  wire \FSM_sequential_state_r_reg[2]_2 ;
  wire addr_rw0;
  wire [2:0]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire busy1;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire busy_i_3_n_0;
  wire codec_scl_io_IBUF;
  wire codec_scl_io_TRI;
  wire codec_sda_io_OBUF;
  wire codec_sda_io_TRI;
  wire [6:0]count;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[5]_i_2_n_0 ;
  wire \count[5]_i_3_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire [6:0]count_0;
  wire data0;
  wire data_clk;
  wire data_clk_i_3_n_0;
  wire data_clk_prev;
  wire data_clk_reg_n_0;
  wire [7:0]data_tx;
  wire i2c_busy;
  wire i2c_busy_r;
  wire p_1_in;
  wire rst_i_IBUF;
  wire scl_clk;
  wire scl_clk_reg_n_0;
  wire scl_ena_i_1_n_0;
  wire scl_ena_reg_n_0;
  wire sda_int4_out;
  wire sda_int_i_10_n_0;
  wire sda_int_i_11_n_0;
  wire sda_int_i_12_n_0;
  wire sda_int_i_13_n_0;
  wire sda_int_i_14_n_0;
  wire sda_int_i_15_n_0;
  wire sda_int_i_1_n_0;
  wire sda_int_i_24_n_0;
  wire sda_int_i_25_n_0;
  wire sda_int_i_3_n_0;
  wire sda_int_i_4_n_0;
  wire sda_int_i_9_n_0;
  wire sda_int_reg_0;
  wire sda_int_reg_i_8_n_0;
  wire sda_int_reg_n_0;
  wire [2:0]state_r;
  wire stretch;
  wire stretch_i_1_n_0;
  wire stretch_i_2_n_0;
  wire stretch_i_3_n_0;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hEEEFAAAA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(state_r[2]),
        .I2(state_r[1]),
        .I3(state_r[0]),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00A8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(state_r[2]),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[0]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[2]),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state[6]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(state_r[2]),
        .I1(state_r[1]),
        .I2(state_r[0]),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[2]),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF540054005400)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(state_r[2]),
        .I1(state_r[1]),
        .I2(state_r[0]),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_state[6]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(bit_cnt[2]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[2]),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(data_clk_reg_n_0),
        .I1(data_clk_prev),
        .O(busy1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hF1F1F100)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(state_r[0]),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(busy1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(rst_i_IBUF),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(busy1),
        .CLR(rst_i_IBUF),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(busy1),
        .CLR(rst_i_IBUF),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(busy1),
        .CLR(rst_i_IBUF),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(busy1),
        .CLR(rst_i_IBUF),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK),
        .CE(busy1),
        .CLR(rst_i_IBUF),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK),
        .CE(busy1),
        .CLR(rst_i_IBUF),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(CLK),
        .CE(busy1),
        .CLR(rst_i_IBUF),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(CLK),
        .CE(busy1),
        .CLR(rst_i_IBUF),
        .D(\FSM_onehot_state[8]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ));
  LUT6 #(
    .INIT(64'hFFCFFFCF00304747)) 
    \FSM_sequential_state_r[0]_i_1 
       (.I0(\FSM_sequential_state_r_reg[2]_2 ),
        .I1(state_r[2]),
        .I2(i2c_busy),
        .I3(i2c_busy_r),
        .I4(state_r[1]),
        .I5(state_r[0]),
        .O(\FSM_sequential_state_r_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hFB04FF00)) 
    \FSM_sequential_state_r[1]_i_1 
       (.I0(state_r[2]),
        .I1(i2c_busy),
        .I2(i2c_busy_r),
        .I3(state_r[1]),
        .I4(state_r[0]),
        .O(\FSM_sequential_state_r_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hCCFCCCCCCCCC4444)) 
    \FSM_sequential_state_r[2]_i_1 
       (.I0(\FSM_sequential_state_r_reg[2]_2 ),
        .I1(state_r[2]),
        .I2(i2c_busy),
        .I3(i2c_busy_r),
        .I4(state_r[1]),
        .I5(state_r[0]),
        .O(\FSM_sequential_state_r_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \_inferred__0/i_ 
       (.I0(codec_scl_io_IBUF),
        .O(data0));
  LUT6 #(
    .INIT(64'hFFFF01FF0000FE00)) 
    \bit_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(data_clk_reg_n_0),
        .I4(data_clk_prev),
        .I5(bit_cnt[0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF44444440)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt[0]),
        .I1(busy1),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(bit_cnt[1]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .I2(\bit_cnt[2]_i_2_n_0 ),
        .I3(bit_cnt[2]),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44444440)) 
    \bit_cnt[2]_i_2 
       (.I0(data_clk_prev),
        .I1(data_clk_reg_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\bit_cnt[2]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .PRE(rst_i_IBUF),
        .Q(bit_cnt[0]));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .PRE(rst_i_IBUF),
        .Q(bit_cnt[1]));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .PRE(rst_i_IBUF),
        .Q(bit_cnt[2]));
  LUT6 #(
    .INIT(64'hFFFFF8FF0000F800)) 
    busy_i_1
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(busy_i_2_n_0),
        .I3(busy1),
        .I4(busy_i_3_n_0),
        .I5(i2c_busy),
        .O(busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    busy_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(busy_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    busy_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(sda_int_i_15_n_0),
        .O(busy_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    busy_reg
       (.C(CLK),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .PRE(rst_i_IBUF),
        .Q(i2c_busy));
  LUT2 #(
    .INIT(4'hD)) 
    codec_scl_io_IOBUF_inst_i_1
       (.I0(scl_ena_reg_n_0),
        .I1(scl_clk_reg_n_0),
        .O(codec_scl_io_TRI));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBDB8)) 
    codec_sda_io_OBUFT_inst_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(data_clk_prev),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(sda_int_reg_n_0),
        .O(codec_sda_io_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFC2E)) 
    codec_sda_io_OBUFT_inst_i_2
       (.I0(sda_int_reg_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(data_clk_prev),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(codec_sda_io_TRI));
  LUT6 #(
    .INIT(64'hEFFF00000000FFFF)) 
    \count[0]_i_1 
       (.I0(count[2]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(count[6]),
        .I3(count[1]),
        .I4(stretch),
        .I5(count[0]),
        .O(count_0[0]));
  LUT6 #(
    .INIT(64'hFFF700005555AAAA)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(count[6]),
        .I2(\count[6]_i_2_n_0 ),
        .I3(count[2]),
        .I4(count[1]),
        .I5(stretch),
        .O(count_0[1]));
  LUT6 #(
    .INIT(64'hFFFF000000007FFF)) 
    \count[2]_i_1 
       (.I0(count[5]),
        .I1(count[3]),
        .I2(count[4]),
        .I3(count[6]),
        .I4(\count[4]_i_2_n_0 ),
        .I5(count[2]),
        .O(count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFF220522)) 
    \count[3]_i_1 
       (.I0(count[2]),
        .I1(\count[4]_i_2_n_0 ),
        .I2(count[4]),
        .I3(count[3]),
        .I4(\count[4]_i_3_n_0 ),
        .O(count_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFF085508)) 
    \count[4]_i_1 
       (.I0(count[3]),
        .I1(count[2]),
        .I2(\count[4]_i_2_n_0 ),
        .I3(count[4]),
        .I4(\count[4]_i_3_n_0 ),
        .O(count_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \count[4]_i_2 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(stretch),
        .O(\count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC5FFFFFFCFFFFFFF)) 
    \count[4]_i_3 
       (.I0(count[5]),
        .I1(stretch),
        .I2(count[2]),
        .I3(count[1]),
        .I4(count[0]),
        .I5(count[6]),
        .O(\count[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EAEF1010)) 
    \count[5]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(stretch),
        .I2(count[2]),
        .I3(count[6]),
        .I4(count[5]),
        .I5(\count[5]_i_3_n_0 ),
        .O(count_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[5]_i_2 
       (.I0(count[0]),
        .I1(count[1]),
        .O(\count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[5]_i_3 
       (.I0(count[3]),
        .I1(count[4]),
        .O(\count[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00008FFF2000)) 
    \count[6]_i_1 
       (.I0(count[2]),
        .I1(stretch),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[6]),
        .I5(\count[6]_i_2_n_0 ),
        .O(count_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \count[6]_i_2 
       (.I0(count[4]),
        .I1(count[3]),
        .I2(count[5]),
        .O(\count[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(count_0[0]),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(count_0[1]),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(count_0[2]),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(count_0[3]),
        .Q(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(count_0[4]),
        .Q(count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(count_0[5]),
        .Q(count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(count_0[6]),
        .Q(count[6]));
  LUT1 #(
    .INIT(2'h1)) 
    data_clk_i_1
       (.I0(rst_i_IBUF),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h55550004AAAAFABA)) 
    data_clk_i_2
       (.I0(count[5]),
        .I1(stretch),
        .I2(count[1]),
        .I3(count[0]),
        .I4(data_clk_i_3_n_0),
        .I5(count[6]),
        .O(data_clk));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    data_clk_i_3
       (.I0(count[4]),
        .I1(count[3]),
        .I2(count[2]),
        .O(data_clk_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_clk_prev_reg
       (.C(CLK),
        .CE(p_1_in),
        .D(data_clk_reg_n_0),
        .Q(data_clk_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    data_clk_reg
       (.C(CLK),
        .CE(p_1_in),
        .D(data_clk),
        .Q(data_clk_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000CCC80000)) 
    \data_tx[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[4]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(busy1),
        .I5(rst_i_IBUF),
        .O(addr_rw0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[0] 
       (.C(CLK),
        .CE(addr_rw0),
        .D(D[0]),
        .Q(data_tx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[1] 
       (.C(CLK),
        .CE(addr_rw0),
        .D(D[1]),
        .Q(data_tx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[2] 
       (.C(CLK),
        .CE(addr_rw0),
        .D(D[2]),
        .Q(data_tx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[3] 
       (.C(CLK),
        .CE(addr_rw0),
        .D(D[3]),
        .Q(data_tx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[4] 
       (.C(CLK),
        .CE(addr_rw0),
        .D(D[4]),
        .Q(data_tx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[5] 
       (.C(CLK),
        .CE(addr_rw0),
        .D(D[5]),
        .Q(data_tx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[6] 
       (.C(CLK),
        .CE(addr_rw0),
        .D(D[6]),
        .Q(data_tx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[7] 
       (.C(CLK),
        .CE(addr_rw0),
        .D(D[7]),
        .Q(data_tx[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hACAEA4AEAAAAAEAA)) 
    scl_clk_i_1
       (.I0(count[6]),
        .I1(count[2]),
        .I2(\count[6]_i_2_n_0 ),
        .I3(count[0]),
        .I4(stretch),
        .I5(count[1]),
        .O(scl_clk));
  FDRE #(
    .INIT(1'b0)) 
    scl_clk_reg
       (.C(CLK),
        .CE(p_1_in),
        .D(scl_clk),
        .Q(scl_clk_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF44BF00)) 
    scl_ena_i_1
       (.I0(data_clk_reg_n_0),
        .I1(data_clk_prev),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(scl_ena_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(scl_ena_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scl_ena_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(scl_ena_i_1_n_0),
        .Q(scl_ena_reg_n_0));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF40000)) 
    sda_int_i_1
       (.I0(sda_int_reg_0),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(sda_int_i_3_n_0),
        .I3(sda_int_i_4_n_0),
        .I4(sda_int4_out),
        .I5(sda_int_reg_n_0),
        .O(sda_int_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFFEEEEEEEE)) 
    sda_int_i_10
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state_r[2]),
        .I3(state_r[1]),
        .I4(state_r[0]),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(sda_int_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA88A)) 
    sda_int_i_11
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[2]),
        .O(sda_int_i_11_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_int_i_12
       (.I0(data_tx[0]),
        .I1(data_tx[1]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(data_tx[2]),
        .I5(data_tx[3]),
        .O(sda_int_i_12_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    sda_int_i_13
       (.I0(data_tx[4]),
        .I1(data_tx[5]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(data_tx[6]),
        .I5(data_tx[7]),
        .O(sda_int_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sda_int_i_14
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(sda_int_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0E0E0E00)) 
    sda_int_i_15
       (.I0(state_r[0]),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(sda_int_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_24
       (.I0(data_tx[3]),
        .I1(data_tx[2]),
        .I2(bit_cnt[1]),
        .I3(data_tx[1]),
        .I4(bit_cnt[0]),
        .I5(data_tx[0]),
        .O(sda_int_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_25
       (.I0(data_tx[7]),
        .I1(data_tx[6]),
        .I2(bit_cnt[1]),
        .I3(data_tx[5]),
        .I4(bit_cnt[0]),
        .I5(data_tx[4]),
        .O(sda_int_i_25_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    sda_int_i_3
       (.I0(sda_int_reg_i_8_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(sda_int_i_9_n_0),
        .I3(sda_int_i_10_n_0),
        .I4(sda_int_i_11_n_0),
        .O(sda_int_i_3_n_0));
  LUT6 #(
    .INIT(64'hA8A8A88A0808088A)) 
    sda_int_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(sda_int_i_12_n_0),
        .I2(bit_cnt[2]),
        .I3(bit_cnt[1]),
        .I4(bit_cnt[0]),
        .I5(sda_int_i_13_n_0),
        .O(sda_int_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    sda_int_i_5
       (.I0(busy1),
        .I1(\FSM_onehot_state[7]_i_1_n_0 ),
        .I2(sda_int_i_14_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(sda_int_i_15_n_0),
        .O(sda_int4_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h3E00)) 
    sda_int_i_9
       (.I0(bit_cnt[2]),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[1]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(sda_int_i_9_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sda_int_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda_int_i_1_n_0),
        .PRE(rst_i_IBUF),
        .Q(sda_int_reg_n_0));
  MUXF7 sda_int_reg_i_8
       (.I0(sda_int_i_24_n_0),
        .I1(sda_int_i_25_n_0),
        .O(sda_int_reg_i_8_n_0),
        .S(bit_cnt[2]));
  LUT6 #(
    .INIT(64'hAAAAAAF8AAF0AAF0)) 
    stretch_i_1
       (.I0(data0),
        .I1(count[0]),
        .I2(stretch),
        .I3(stretch_i_2_n_0),
        .I4(count[1]),
        .I5(stretch_i_3_n_0),
        .O(stretch_i_1_n_0));
  LUT6 #(
    .INIT(64'h4040404040444040)) 
    stretch_i_2
       (.I0(count[5]),
        .I1(count[6]),
        .I2(data_clk_i_3_n_0),
        .I3(count[1]),
        .I4(stretch),
        .I5(count[0]),
        .O(stretch_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    stretch_i_3
       (.I0(count[4]),
        .I1(count[3]),
        .I2(count[5]),
        .I3(count[2]),
        .I4(count[6]),
        .O(stretch_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    stretch_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_i_IBUF),
        .D(stretch_i_1_n_0),
        .Q(stretch));
endmodule

module i2s_serial
   (codec_dac_sdata_o_OBUF,
    i2s_valid,
    i2s_ready,
    E,
    \sr_in_reg[23]_0 ,
    valid_reg_0,
    ready_reg_0,
    codec_lrclk_i_IBUF,
    CLK,
    codec_bclk_i_IBUF,
    rst_i_IBUF,
    Q,
    D,
    i2s_ready_r);
  output codec_dac_sdata_o_OBUF;
  output i2s_valid;
  output i2s_ready;
  output [0:0]E;
  output [23:0]\sr_in_reg[23]_0 ;
  output [0:0]valid_reg_0;
  output [0:0]ready_reg_0;
  input codec_lrclk_i_IBUF;
  input CLK;
  input codec_bclk_i_IBUF;
  input rst_i_IBUF;
  input [23:0]Q;
  input [0:0]D;
  input i2s_ready_r;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [23:0]Q;
  wire [4:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire codec_bclk_i_IBUF;
  wire codec_dac_sdata_o_OBUF;
  wire codec_lrclk_i_IBUF;
  wire dac_sdata_i_10_n_0;
  wire dac_sdata_i_11_n_0;
  wire dac_sdata_i_12_n_0;
  wire dac_sdata_i_13_n_0;
  wire dac_sdata_i_1_n_0;
  wire dac_sdata_i_2_n_0;
  wire dac_sdata_i_5_n_0;
  wire dac_sdata_i_6_n_0;
  wire dac_sdata_i_7_n_0;
  wire dac_sdata_i_8_n_0;
  wire dac_sdata_i_9_n_0;
  wire dac_sdata_reg_i_3_n_0;
  wire dac_sdata_reg_i_4_n_0;
  wire i2s_ready;
  wire i2s_ready_r;
  wire i2s_valid;
  wire lr_edge;
  wire lr_edge_i_1_n_0;
  wire neg_edge;
  wire neg_edge_i_1_n_0;
  wire new_sample;
  wire new_sample4_out;
  wire new_sample_i_1_n_0;
  wire new_sample_i_3_n_0;
  wire new_sample_i_4_n_0;
  wire pos_edge;
  wire pos_edge_i_1_n_0;
  wire ready_i_1_n_0;
  wire [0:0]ready_reg_0;
  wire rst_i_IBUF;
  wire sr_in0;
  wire [23:0]\sr_in_reg[23]_0 ;
  wire sr_out;
  wire \sr_out_reg_n_0_[0] ;
  wire \sr_out_reg_n_0_[10] ;
  wire \sr_out_reg_n_0_[11] ;
  wire \sr_out_reg_n_0_[12] ;
  wire \sr_out_reg_n_0_[13] ;
  wire \sr_out_reg_n_0_[14] ;
  wire \sr_out_reg_n_0_[15] ;
  wire \sr_out_reg_n_0_[16] ;
  wire \sr_out_reg_n_0_[17] ;
  wire \sr_out_reg_n_0_[18] ;
  wire \sr_out_reg_n_0_[19] ;
  wire \sr_out_reg_n_0_[1] ;
  wire \sr_out_reg_n_0_[20] ;
  wire \sr_out_reg_n_0_[21] ;
  wire \sr_out_reg_n_0_[22] ;
  wire \sr_out_reg_n_0_[23] ;
  wire \sr_out_reg_n_0_[2] ;
  wire \sr_out_reg_n_0_[3] ;
  wire \sr_out_reg_n_0_[4] ;
  wire \sr_out_reg_n_0_[5] ;
  wire \sr_out_reg_n_0_[6] ;
  wire \sr_out_reg_n_0_[7] ;
  wire \sr_out_reg_n_0_[8] ;
  wire \sr_out_reg_n_0_[9] ;
  wire valid_i_1_n_0;
  wire valid_i_2_n_0;
  wire [0:0]valid_reg_0;
  wire zbclk;
  wire zlrclk;
  wire zzbclk;
  wire zzlrclk;
  wire zzzbclk;
  wire zzzlrclk;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[0]_i_1 
       (.I0(pos_edge),
        .I1(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt[1]_i_1 
       (.I0(pos_edge),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[2]_i_1 
       (.I0(pos_edge),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt[3]_i_1 
       (.I0(pos_edge),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt[3]),
        .O(\cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \cnt[4]_i_1 
       (.I0(lr_edge),
        .I1(\cnt[4]_i_3_n_0 ),
        .I2(cnt[3]),
        .I3(cnt[4]),
        .I4(pos_edge),
        .O(\cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt[4]_i_2 
       (.I0(pos_edge),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[3]),
        .I5(cnt[4]),
        .O(\cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt[4]_i_3 
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .O(\cnt[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(\cnt[4]_i_1_n_0 ),
        .D(\cnt[4]_i_2_n_0 ),
        .Q(cnt[4]),
        .R(rst_i_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    dac_sdata_i_1
       (.I0(new_sample),
        .I1(rst_i_IBUF),
        .O(dac_sdata_i_1_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    dac_sdata_i_10
       (.I0(\sr_out_reg_n_0_[7] ),
        .I1(\sr_out_reg_n_0_[6] ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\sr_out_reg_n_0_[5] ),
        .I5(\sr_out_reg_n_0_[4] ),
        .O(dac_sdata_i_10_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    dac_sdata_i_11
       (.I0(\sr_out_reg_n_0_[3] ),
        .I1(\sr_out_reg_n_0_[2] ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\sr_out_reg_n_0_[1] ),
        .I5(\sr_out_reg_n_0_[0] ),
        .O(dac_sdata_i_11_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    dac_sdata_i_12
       (.I0(\sr_out_reg_n_0_[19] ),
        .I1(\sr_out_reg_n_0_[18] ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\sr_out_reg_n_0_[17] ),
        .I5(\sr_out_reg_n_0_[16] ),
        .O(dac_sdata_i_12_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    dac_sdata_i_13
       (.I0(\sr_out_reg_n_0_[23] ),
        .I1(\sr_out_reg_n_0_[22] ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\sr_out_reg_n_0_[21] ),
        .I5(\sr_out_reg_n_0_[20] ),
        .O(dac_sdata_i_13_n_0));
  LUT6 #(
    .INIT(64'hCFFAAFCFC00AA0C0)) 
    dac_sdata_i_2
       (.I0(dac_sdata_reg_i_3_n_0),
        .I1(dac_sdata_reg_i_4_n_0),
        .I2(cnt[4]),
        .I3(dac_sdata_i_5_n_0),
        .I4(cnt[3]),
        .I5(dac_sdata_i_6_n_0),
        .O(dac_sdata_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h01)) 
    dac_sdata_i_5
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(dac_sdata_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hBBBE8882)) 
    dac_sdata_i_6
       (.I0(dac_sdata_i_12_n_0),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(dac_sdata_i_13_n_0),
        .O(dac_sdata_i_6_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    dac_sdata_i_7
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .O(dac_sdata_i_7_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    dac_sdata_i_8
       (.I0(\sr_out_reg_n_0_[15] ),
        .I1(\sr_out_reg_n_0_[14] ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\sr_out_reg_n_0_[13] ),
        .I5(\sr_out_reg_n_0_[12] ),
        .O(dac_sdata_i_8_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    dac_sdata_i_9
       (.I0(\sr_out_reg_n_0_[11] ),
        .I1(\sr_out_reg_n_0_[10] ),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(\sr_out_reg_n_0_[9] ),
        .I5(\sr_out_reg_n_0_[8] ),
        .O(dac_sdata_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dac_sdata_reg
       (.C(CLK),
        .CE(dac_sdata_i_1_n_0),
        .D(dac_sdata_i_2_n_0),
        .Q(codec_dac_sdata_o_OBUF),
        .R(1'b0));
  MUXF7 dac_sdata_reg_i_3
       (.I0(dac_sdata_i_8_n_0),
        .I1(dac_sdata_i_9_n_0),
        .O(dac_sdata_reg_i_3_n_0),
        .S(dac_sdata_i_7_n_0));
  MUXF7 dac_sdata_reg_i_4
       (.I0(dac_sdata_i_10_n_0),
        .I1(dac_sdata_i_11_n_0),
        .O(dac_sdata_reg_i_4_n_0),
        .S(dac_sdata_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    lr_edge_i_1
       (.I0(zzzlrclk),
        .I1(zzlrclk),
        .O(lr_edge_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lr_edge_reg
       (.C(CLK),
        .CE(1'b1),
        .D(lr_edge_i_1_n_0),
        .Q(lr_edge),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h38)) 
    neg_edge_i_1
       (.I0(neg_edge),
        .I1(zzbclk),
        .I2(zzzbclk),
        .O(neg_edge_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    neg_edge_reg
       (.C(CLK),
        .CE(1'b1),
        .D(neg_edge_i_1_n_0),
        .Q(neg_edge),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h44444444444F4444)) 
    new_sample_i_1
       (.I0(new_sample4_out),
        .I1(new_sample),
        .I2(new_sample_i_3_n_0),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(cnt[2]),
        .O(new_sample_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000002AA80000)) 
    new_sample_i_2
       (.I0(cnt[4]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(cnt[3]),
        .I5(new_sample_i_4_n_0),
        .O(new_sample4_out));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    new_sample_i_3
       (.I0(cnt[3]),
        .I1(cnt[4]),
        .I2(neg_edge),
        .I3(rst_i_IBUF),
        .O(new_sample_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    new_sample_i_4
       (.I0(rst_i_IBUF),
        .I1(neg_edge),
        .O(new_sample_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    new_sample_reg
       (.C(CLK),
        .CE(1'b1),
        .D(new_sample_i_1_n_0),
        .Q(new_sample),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h38)) 
    pos_edge_i_1
       (.I0(pos_edge),
        .I1(zzzbclk),
        .I2(zzbclk),
        .O(pos_edge_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pos_edge_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pos_edge_i_1_n_0),
        .Q(pos_edge),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    ready_i_1
       (.I0(i2s_ready),
        .I1(pos_edge),
        .I2(new_sample),
        .I3(rst_i_IBUF),
        .O(ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(i2s_ready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \sample_in_r[23]_i_1 
       (.I0(i2s_ready),
        .I1(i2s_ready_r),
        .I2(codec_lrclk_i_IBUF),
        .O(ready_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sample_left_r[23]_i_1 
       (.I0(i2s_valid),
        .I1(codec_lrclk_i_IBUF),
        .O(E));
  LUT2 #(
    .INIT(4'h8)) 
    \sample_right_r[23]_i_1 
       (.I0(codec_lrclk_i_IBUF),
        .I1(i2s_valid),
        .O(valid_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    \sr_in[23]_i_1 
       (.I0(new_sample),
        .I1(pos_edge),
        .O(sr_in0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[0] 
       (.C(CLK),
        .CE(sr_in0),
        .D(D),
        .Q(\sr_in_reg[23]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[10] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [9]),
        .Q(\sr_in_reg[23]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[11] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [10]),
        .Q(\sr_in_reg[23]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[12] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [11]),
        .Q(\sr_in_reg[23]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[13] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [12]),
        .Q(\sr_in_reg[23]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[14] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [13]),
        .Q(\sr_in_reg[23]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[15] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [14]),
        .Q(\sr_in_reg[23]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[16] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [15]),
        .Q(\sr_in_reg[23]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[17] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [16]),
        .Q(\sr_in_reg[23]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[18] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [17]),
        .Q(\sr_in_reg[23]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[19] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [18]),
        .Q(\sr_in_reg[23]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[1] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [0]),
        .Q(\sr_in_reg[23]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[20] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [19]),
        .Q(\sr_in_reg[23]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[21] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [20]),
        .Q(\sr_in_reg[23]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[22] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [21]),
        .Q(\sr_in_reg[23]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[23] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [22]),
        .Q(\sr_in_reg[23]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[2] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [1]),
        .Q(\sr_in_reg[23]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[3] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [2]),
        .Q(\sr_in_reg[23]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[4] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [3]),
        .Q(\sr_in_reg[23]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[5] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [4]),
        .Q(\sr_in_reg[23]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[6] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [5]),
        .Q(\sr_in_reg[23]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[7] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [6]),
        .Q(\sr_in_reg[23]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[8] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [7]),
        .Q(\sr_in_reg[23]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_in_reg[9] 
       (.C(CLK),
        .CE(sr_in0),
        .D(\sr_in_reg[23]_0 [8]),
        .Q(\sr_in_reg[23]_0 [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \sr_out[23]_i_1 
       (.I0(new_sample),
        .I1(pos_edge),
        .I2(rst_i_IBUF),
        .O(sr_out));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[0] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[0]),
        .Q(\sr_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[10] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[10]),
        .Q(\sr_out_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[11] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[11]),
        .Q(\sr_out_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[12] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[12]),
        .Q(\sr_out_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[13] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[13]),
        .Q(\sr_out_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[14] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[14]),
        .Q(\sr_out_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[15] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[15]),
        .Q(\sr_out_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[16] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[16]),
        .Q(\sr_out_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[17] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[17]),
        .Q(\sr_out_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[18] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[18]),
        .Q(\sr_out_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[19] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[19]),
        .Q(\sr_out_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[1] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[1]),
        .Q(\sr_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[20] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[20]),
        .Q(\sr_out_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[21] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[21]),
        .Q(\sr_out_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[22] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[22]),
        .Q(\sr_out_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[23] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[23]),
        .Q(\sr_out_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[2] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[2]),
        .Q(\sr_out_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[3] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[3]),
        .Q(\sr_out_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[4] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[4]),
        .Q(\sr_out_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[5] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[5]),
        .Q(\sr_out_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[6] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[6]),
        .Q(\sr_out_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[7] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[7]),
        .Q(\sr_out_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[8] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[8]),
        .Q(\sr_out_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sr_out_reg[9] 
       (.C(CLK),
        .CE(sr_out),
        .D(Q[9]),
        .Q(\sr_out_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    valid_i_1
       (.I0(cnt[3]),
        .I1(cnt[4]),
        .I2(neg_edge),
        .I3(valid_i_2_n_0),
        .I4(rst_i_IBUF),
        .O(valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    valid_i_2
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(valid_i_1_n_0),
        .Q(i2s_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    zbclk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(codec_bclk_i_IBUF),
        .Q(zbclk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    zlrclk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(codec_lrclk_i_IBUF),
        .Q(zlrclk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    zzbclk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(zbclk),
        .Q(zzbclk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    zzlrclk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(zlrclk),
        .Q(zzlrclk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    zzzbclk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(zzbclk),
        .Q(zzzbclk),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    zzzlrclk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(zzlrclk),
        .Q(zzzlrclk),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "oddr_0,oddr_v1_0_2_oddr,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "oddr_v1_0_2_oddr,Vivado 2022.2" *) 
module oddr_0
   (clk_in,
    clk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_in CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_out, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output clk_out;

  wire clk_in;
  wire clk_out;

  oddr_0_oddr_v1_0_2_oddr inst
       (.clk_in(clk_in),
        .clk_out(clk_out));
endmodule

(* ORIG_REF_NAME = "oddr_v1_0_2_oddr" *) 
module oddr_0_oddr_v1_0_2_oddr
   (clk_out,
    clk_in);
  output clk_out;
  input clk_in;

  wire clk_in;
  wire clk_out;
  wire NLW_ODDR_inst_R_UNCONNECTED;
  wire NLW_ODDR_inst_S_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ODDR_inst
       (.C(clk_in),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(clk_out),
        .R(NLW_ODDR_inst_R_UNCONNECTED),
        .S(NLW_ODDR_inst_S_UNCONNECTED));
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
