// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Mar 15 18:20:47 2019
// Host        : lenovo running 64-bit Manjaro Linux
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /usr/local/magnetic2/Xilinx/Vivado/Vivado/2018.2/bin/Arquitectura2018/TP_BIP/TP_BIP.sim/sim_1/synth/func/xsim/allTest_func_synth.v
// Design      : Top_level
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Top_level
   (rx,
    clk,
    reset,
    tx,
    button);
  input rx;
  input clk;
  input reset;
  output tx;
  output button;

  wire button;
  wire button_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire reset;
  wire rx;
  wire rx_IBUF;
  wire tx;
  wire tx_OBUF;

  OBUF button_OBUF_inst
       (.I(button_OBUF),
        .O(button));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(button_OBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  UART uart
       (.button_OBUF(button_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rx_IBUF(rx_IBUF),
        .tx_OBUF(tx_OBUF));
endmodule

module UART
   (tx_OBUF,
    clk_IBUF_BUFG,
    button_OBUF,
    rx_IBUF);
  output tx_OBUF;
  input clk_IBUF_BUFG;
  input button_OBUF;
  input rx_IBUF;

  wire button_OBUF;
  wire clk_IBUF_BUFG;
  wire rx_IBUF;
  wire s_tick;
  wire tx_OBUF;

  br_generator br_g
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .s_tick(s_tick));
  rx_module rx_mod
       (.button_OBUF(button_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rx_IBUF(rx_IBUF),
        .s_tick(s_tick));
  tx_module tx_mod
       (.button_OBUF(button_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .s_tick(s_tick),
        .tx_OBUF(tx_OBUF));
endmodule

module br_generator
   (s_tick,
    clk_IBUF_BUFG);
  output s_tick;
  input clk_IBUF_BUFG;

  wire [7:0]ciclos;
  wire \ciclos[2]_i_1_n_0 ;
  wire \ciclos[6]_i_2_n_0 ;
  wire \ciclos[7]_i_1_n_0 ;
  wire \ciclos[7]_i_3_n_0 ;
  wire [0:0]ciclos_0;
  wire clk_IBUF_BUFG;
  wire [7:1]data0;
  wire s_tick;

  LUT1 #(
    .INIT(2'h1)) 
    \ciclos[0]_i_1 
       (.I0(ciclos[0]),
        .O(ciclos_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciclos[1]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ciclos[2]_i_1 
       (.I0(ciclos[1]),
        .I1(ciclos[0]),
        .I2(ciclos[2]),
        .O(\ciclos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ciclos[3]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .I2(ciclos[2]),
        .I3(ciclos[3]),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ciclos[4]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .I2(ciclos[2]),
        .I3(ciclos[3]),
        .I4(ciclos[4]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ciclos[5]_i_1 
       (.I0(ciclos[2]),
        .I1(ciclos[3]),
        .I2(ciclos[4]),
        .I3(ciclos[1]),
        .I4(ciclos[0]),
        .I5(ciclos[5]),
        .O(data0[5]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \ciclos[6]_i_1 
       (.I0(\ciclos[6]_i_2_n_0 ),
        .I1(ciclos[5]),
        .I2(ciclos[3]),
        .I3(ciclos[2]),
        .I4(ciclos[4]),
        .I5(ciclos[6]),
        .O(data0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ciclos[6]_i_2 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .O(\ciclos[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \ciclos[7]_i_1 
       (.I0(\ciclos[7]_i_3_n_0 ),
        .I1(ciclos[3]),
        .I2(ciclos[4]),
        .I3(ciclos[2]),
        .I4(ciclos[6]),
        .I5(ciclos[7]),
        .O(\ciclos[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \ciclos[7]_i_2 
       (.I0(\ciclos[7]_i_3_n_0 ),
        .I1(ciclos[6]),
        .I2(ciclos[4]),
        .I3(ciclos[3]),
        .I4(ciclos[2]),
        .I5(ciclos[7]),
        .O(data0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ciclos[7]_i_3 
       (.I0(ciclos[1]),
        .I1(ciclos[0]),
        .I2(ciclos[5]),
        .O(\ciclos[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ciclos_0),
        .Q(ciclos[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(ciclos[1]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[2]_i_1_n_0 ),
        .Q(ciclos[2]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(ciclos[3]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(ciclos[4]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(ciclos[5]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(ciclos[6]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(ciclos[7]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[7]_i_1_n_0 ),
        .Q(s_tick),
        .R(1'b0));
endmodule

module rx_module
   (rx_IBUF,
    s_tick,
    clk_IBUF_BUFG,
    button_OBUF);
  input rx_IBUF;
  input s_tick;
  input clk_IBUF_BUFG;
  input button_OBUF;

  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_5_n_0 ;
  wire button_OBUF;
  wire clk_IBUF_BUFG;
  wire n_next;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg[2]_i_3_n_0 ;
  wire rx_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[1]_i_2_n_0 ;
  wire \s_reg[2]_i_1__0_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire \s_reg[3]_i_3_n_0 ;
  wire \s_reg[3]_i_4_n_0 ;
  wire s_tick;
  wire [2:0]sel0;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg;

  LUT5 #(
    .INIT(32'h0BFF0B00)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(s_tick),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I4(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h62FF6200)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(s_tick),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I4(state_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAABBABBAAAB)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(rx_IBUF),
        .I4(s_tick),
        .I5(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00000080000000)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(\s_reg[3]_i_3_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_5_n_0 ),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(s_reg[2]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(s_reg[3]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state_reg[1]_i_5 
       (.I0(state_reg[1]),
        .I1(s_tick),
        .O(\FSM_sequential_state_reg[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(state_reg[1]),
        .I1(n_next),
        .I2(sel0[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F80)) 
    \n_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(sel0[0]),
        .I2(n_next),
        .I3(sel0[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \n_reg[2]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(state_reg[1]),
        .I3(n_next),
        .I4(sel0[2]),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0003000020000000)) 
    \n_reg[2]_i_2 
       (.I0(\n_reg[2]_i_3_n_0 ),
        .I1(\s_reg[3]_i_4_n_0 ),
        .I2(s_reg[3]),
        .I3(state_reg[1]),
        .I4(s_tick),
        .I5(state_reg[0]),
        .O(n_next));
  LUT3 #(
    .INIT(8'h7F)) 
    \n_reg[2]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\n_reg[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(sel0[2]));
  LUT5 #(
    .INIT(32'h444444F4)) 
    \s_reg[0]_i_1 
       (.I0(s_reg[0]),
        .I1(\s_reg[1]_i_2_n_0 ),
        .I2(rx_IBUF),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .O(\s_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010FF10FF101010)) 
    \s_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(rx_IBUF),
        .I3(\s_reg[1]_i_2_n_0 ),
        .I4(s_reg[1]),
        .I5(s_reg[0]),
        .O(\s_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF8AAAAAAA)) 
    \s_reg[1]_i_2 
       (.I0(state_reg[0]),
        .I1(s_reg[3]),
        .I2(s_reg[2]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .I5(state_reg[1]),
        .O(\s_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7777888877F088F0)) 
    \s_reg[2]_i_1__0 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(rx_IBUF),
        .I3(state_reg[0]),
        .I4(s_reg[2]),
        .I5(state_reg[1]),
        .O(\s_reg[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h5FBB0011)) 
    \s_reg[3]_i_1 
       (.I0(state_reg[0]),
        .I1(rx_IBUF),
        .I2(\s_reg[3]_i_3_n_0 ),
        .I3(state_reg[1]),
        .I4(s_tick),
        .O(s_next));
  LUT5 #(
    .INIT(32'hF00FE222)) 
    \s_reg[3]_i_2 
       (.I0(rx_IBUF),
        .I1(state_reg[0]),
        .I2(s_reg[3]),
        .I3(\s_reg[3]_i_4_n_0 ),
        .I4(state_reg[1]),
        .O(\s_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_reg[3]_i_3 
       (.I0(s_reg[3]),
        .I1(s_reg[2]),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .O(\s_reg[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \s_reg[3]_i_4 
       (.I0(s_reg[0]),
        .I1(s_reg[1]),
        .I2(s_reg[2]),
        .O(\s_reg[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(button_OBUF),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(button_OBUF),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(button_OBUF),
        .D(\s_reg[2]_i_1__0_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(button_OBUF),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]));
endmodule

module tx_module
   (tx_OBUF,
    clk_IBUF_BUFG,
    button_OBUF,
    s_tick);
  output tx_OBUF;
  input clk_IBUF_BUFG;
  input button_OBUF;
  input s_tick;

  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3__0_n_0 ;
  wire button_OBUF;
  wire clk_IBUF_BUFG;
  wire n_next;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg[2]_i_2__0_n_0 ;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1__0_n_0 ;
  wire \s_reg[1]_i_1__0_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[3]_i_2__0_n_0 ;
  wire s_tick;
  wire [2:0]sel0__0;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg;
  wire tx_OBUF;
  wire tx_next;

  LUT6 #(
    .INIT(64'h0FFFFFFF00200000)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I3(state_reg[0]),
        .I4(s_tick),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5FFFFFFF50200000)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I3(state_reg[0]),
        .I4(s_tick),
        .I5(state_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state_reg[1]_i_2__0 
       (.I0(sel0__0[0]),
        .I1(sel0__0[1]),
        .I2(sel0__0[2]),
        .O(\FSM_sequential_state_reg[1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state_reg[1]_i_3__0 
       (.I0(s_reg[3]),
        .I1(s_reg[2]),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(state_reg[1]));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(state_reg[1]),
        .I1(n_next),
        .I2(sel0__0[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \n_reg[1]_i_1 
       (.I0(sel0__0[0]),
        .I1(state_reg[1]),
        .I2(n_next),
        .I3(sel0__0[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A2AA0000000000)) 
    \n_reg[1]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I1(sel0__0[2]),
        .I2(\n_reg[2]_i_2__0_n_0 ),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(s_tick),
        .O(n_next));
  LUT6 #(
    .INIT(64'hCCCE44CCCCCCCCCC)) 
    \n_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I1(sel0__0[2]),
        .I2(\n_reg[2]_i_2__0_n_0 ),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(s_tick),
        .O(\n_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \n_reg[2]_i_2__0 
       (.I0(sel0__0[1]),
        .I1(sel0__0[0]),
        .O(\n_reg[2]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(sel0__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(sel0__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(sel0__0[2]));
  LUT3 #(
    .INIT(8'h0E)) 
    \s_reg[0]_i_1__0 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[0]),
        .O(\s_reg[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6660)) 
    \s_reg[1]_i_1__0 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .O(\s_reg[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h6A6A6A00)) 
    \s_reg[2]_i_1 
       (.I0(s_reg[2]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7A00)) 
    \s_reg[3]_i_1__0 
       (.I0(state_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I2(state_reg[1]),
        .I3(s_tick),
        .O(s_next));
  LUT6 #(
    .INIT(64'h6AAA6AAA6AAA0000)) 
    \s_reg[3]_i_2__0 
       (.I0(s_reg[3]),
        .I1(s_reg[2]),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(\s_reg[3]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(button_OBUF),
        .D(\s_reg[0]_i_1__0_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(button_OBUF),
        .D(\s_reg[1]_i_1__0_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(button_OBUF),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(button_OBUF),
        .D(\s_reg[3]_i_2__0_n_0 ),
        .Q(s_reg[3]));
  LUT2 #(
    .INIT(4'h9)) 
    tx_reg_i_1
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .O(tx_next));
  FDPE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_next),
        .PRE(button_OBUF),
        .Q(tx_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
