// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Mar 20 17:13:42 2019
// Host        : vlad-putin running 64-bit Arch Linux
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/vlad/Arquitectura2018/TP_BIP/TP_BIP.sim/sim_1/impl/timing/xsim/allTest_time_impl.v
// Design      : Top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ALU
   (data0,
    Q,
    DI,
    S,
    ram_name_reg,
    ram_name_reg_0,
    ram_name_reg_1);
  output [15:0]data0;
  input [14:0]Q;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]ram_name_reg;
  input [3:0]ram_name_reg_0;
  input [3:0]ram_name_reg_1;

  wire [0:0]DI;
  wire [14:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire [15:0]data0;
  wire [3:0]ram_name_reg;
  wire [3:0]ram_name_reg_0;
  wire [3:0]ram_name_reg_1;
  wire [2:0]\NLW__inferred__0/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\NLW__inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],DI}),
        .O(data0[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(data0[7:4]),
        .S(ram_name_reg));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\NLW__inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(data0[11:8]),
        .S(ram_name_reg_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO(\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O(data0[15:12]),
        .S(ram_name_reg_1));
endmodule

module CPU
   (data0,
    Q,
    out,
    finish_program,
    aux_finish_program_reg,
    DI,
    S,
    ram_name_reg,
    ram_name_reg_0,
    ram_name_reg_1,
    ram_name_reg_2,
    clk_IBUF_BUFG,
    reset_IBUF,
    DOADO,
    E,
    D,
    ena);
  output [15:0]data0;
  output [15:0]Q;
  output [10:0]out;
  output finish_program;
  output aux_finish_program_reg;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]ram_name_reg;
  input [3:0]ram_name_reg_0;
  input [3:0]ram_name_reg_1;
  input ram_name_reg_2;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [4:0]DOADO;
  input [0:0]E;
  input [15:0]D;
  input ena;

  wire [15:0]D;
  wire [0:0]DI;
  wire [4:0]DOADO;
  wire [0:0]E;
  wire [15:0]Q;
  wire [3:0]S;
  wire aux_finish_program_reg;
  wire clk_IBUF_BUFG;
  wire [15:0]data0;
  wire ena;
  wire finish_program;
  wire [10:0]out;
  wire [3:0]ram_name_reg;
  wire [3:0]ram_name_reg_0;
  wire [3:0]ram_name_reg_1;
  wire ram_name_reg_2;
  wire reset_IBUF;

  ControlUnit control
       (.DOADO(DOADO),
        .Q(out),
        .aux_finish_program_reg_0(aux_finish_program_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ena(ena),
        .finish_program(finish_program),
        .ram_name_reg(ram_name_reg_2),
        .reset_IBUF(reset_IBUF));
  Datapath datapath
       (.D(D),
        .DI(DI),
        .E(E),
        .Q(Q),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .ram_name_reg(ram_name_reg),
        .ram_name_reg_0(ram_name_reg_0),
        .ram_name_reg_1(ram_name_reg_1),
        .reset_IBUF(reset_IBUF));
endmodule

module ControlUnit
   (Q,
    finish_program,
    aux_finish_program_reg_0,
    ram_name_reg,
    clk_IBUF_BUFG,
    reset_IBUF,
    DOADO,
    ena);
  output [10:0]Q;
  output finish_program;
  output aux_finish_program_reg_0;
  input ram_name_reg;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [4:0]DOADO;
  input ena;

  wire [4:0]DOADO;
  wire [10:0]Q;
  wire aux_PC0_carry__0_n_0;
  wire aux_PC0_carry_i_1_n_0;
  wire aux_PC0_carry_n_0;
  wire aux_finish_program_i_3_n_0;
  wire aux_finish_program_i_4_n_0;
  wire aux_finish_program_reg_0;
  wire clk_IBUF_BUFG;
  wire ena;
  wire finish_program;
  wire [10:0]p_0_in;
  wire ram_name_reg;
  wire reset_IBUF;
  wire [2:0]NLW_aux_PC0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_aux_PC0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_aux_PC0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_aux_PC0_carry__1_O_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux_PC0_carry
       (.CI(1'b0),
        .CO({aux_PC0_carry_n_0,NLW_aux_PC0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O(p_0_in[3:0]),
        .S({Q[3:1],aux_PC0_carry_i_1_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux_PC0_carry__0
       (.CI(aux_PC0_carry_n_0),
        .CO({aux_PC0_carry__0_n_0,NLW_aux_PC0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[7:4]),
        .S(Q[7:4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux_PC0_carry__1
       (.CI(aux_PC0_carry__0_n_0),
        .CO(NLW_aux_PC0_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_aux_PC0_carry__1_O_UNCONNECTED[3],p_0_in[10:8]}),
        .S({1'b0,Q[10:8]}));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA5556)) 
    aux_PC0_carry_i_1
       (.I0(Q[0]),
        .I1(DOADO[2]),
        .I2(DOADO[1]),
        .I3(DOADO[0]),
        .I4(DOADO[3]),
        .I5(DOADO[4]),
        .O(aux_PC0_carry_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    aux_finish_program_i_2
       (.I0(DOADO[4]),
        .I1(DOADO[3]),
        .I2(aux_finish_program_i_3_n_0),
        .I3(Q[7]),
        .I4(Q[5]),
        .I5(Q[10]),
        .O(aux_finish_program_reg_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    aux_finish_program_i_3
       (.I0(Q[8]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(aux_finish_program_i_4_n_0),
        .O(aux_finish_program_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    aux_finish_program_i_4
       (.I0(Q[1]),
        .I1(Q[9]),
        .I2(Q[4]),
        .I3(Q[6]),
        .O(aux_finish_program_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    aux_finish_program_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(ram_name_reg),
        .Q(finish_program));
endmodule

module Data_memory
   (ram_data,
    clk,
    E,
    Addr,
    Q,
    WEA);
  output [15:0]ram_data;
  input clk;
  input [0:0]E;
  input [10:0]Addr;
  input [15:0]Q;
  input [0:0]WEA;

  wire [10:0]Addr;
  wire [0:0]E;
  wire [15:0]Q;
  wire [0:0]WEA;
  wire clk;
  wire [15:0]ram_data;
  wire NLW_ram_name_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_name_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_name_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_name_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_name_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_name_reg_SBITERR_UNCONNECTED;
  wire [31:16]NLW_ram_name_reg_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_name_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_name_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_name_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_name_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_name_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "ram_name" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "2047" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000000000000000000000000000000000000000000000000000000008000C),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b1),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_name_reg
       (.ADDRARDADDR({1'b1,Addr,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_ram_name_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_name_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_ram_name_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_ram_name_reg_DOADO_UNCONNECTED[31:16],ram_data}),
        .DOBDO(NLW_ram_name_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_name_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_name_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_name_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(E),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_ram_name_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_name_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_name_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_name_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module Datapath
   (data0,
    Q,
    DI,
    S,
    ram_name_reg,
    ram_name_reg_0,
    ram_name_reg_1,
    E,
    D,
    clk_IBUF_BUFG,
    reset_IBUF);
  output [15:0]data0;
  output [15:0]Q;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]ram_name_reg;
  input [3:0]ram_name_reg_0;
  input [3:0]ram_name_reg_1;
  input [0:0]E;
  input [15:0]D;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire [15:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [15:0]Q;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [15:0]data0;
  wire [3:0]ram_name_reg;
  wire [3:0]ram_name_reg_0;
  wire [3:0]ram_name_reg_1;
  wire reset_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[9]),
        .Q(Q[9]));
  ALU alu
       (.DI(DI),
        .Q(Q[14:0]),
        .S(S),
        .data0(data0),
        .ram_name_reg(ram_name_reg),
        .ram_name_reg_0(ram_name_reg_0),
        .ram_name_reg_1(ram_name_reg_1));
endmodule

module Program_memory
   (DOADO,
    E,
    D,
    DI,
    Wr,
    S,
    \ACC_reg[7] ,
    \ACC_reg[11] ,
    \ACC_reg[15] ,
    aux_finish_program_reg,
    clk_IBUF_BUFG,
    ena,
    Q,
    ram_data,
    data0,
    \ACC_reg[15]_0 ,
    ram_name_reg_0,
    finish_program);
  output [15:0]DOADO;
  output [0:0]E;
  output [15:0]D;
  output [0:0]DI;
  output Wr;
  output [3:0]S;
  output [3:0]\ACC_reg[7] ;
  output [3:0]\ACC_reg[11] ;
  output [3:0]\ACC_reg[15] ;
  output aux_finish_program_reg;
  input clk_IBUF_BUFG;
  input ena;
  input [10:0]Q;
  input [15:0]ram_data;
  input [15:0]data0;
  input [14:0]\ACC_reg[15]_0 ;
  input ram_name_reg_0;
  input finish_program;

  wire \ACC[10]_i_2_n_0 ;
  wire \ACC[15]_i_3_n_0 ;
  wire [3:0]\ACC_reg[11] ;
  wire [3:0]\ACC_reg[15] ;
  wire [14:0]\ACC_reg[15]_0 ;
  wire [3:0]\ACC_reg[7] ;
  wire [15:0]D;
  wire [0:0]DI;
  wire [15:0]DOADO;
  wire [0:0]E;
  wire [10:0]Q;
  wire [3:0]S;
  wire Wr;
  wire aux_finish_program_reg;
  wire clk_IBUF_BUFG;
  wire [15:0]data0;
  wire ena;
  wire finish_program;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire [15:0]ram_data;
  wire ram_name_reg_0;
  wire NLW_ram_name_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_name_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_name_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_name_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_name_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_name_reg_SBITERR_UNCONNECTED;
  wire [31:16]NLW_ram_name_reg_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_name_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_name_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_name_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_name_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_name_reg_RDADDRECC_UNCONNECTED;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[0]_i_1 
       (.I0(DOADO[0]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[0]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[10]_i_1 
       (.I0(DOADO[10]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[10]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[10]),
        .O(D[10]));
  LUT3 #(
    .INIT(8'hFD)) 
    \ACC[10]_i_2 
       (.I0(DOADO[13]),
        .I1(DOADO[15]),
        .I2(DOADO[14]),
        .O(\ACC[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \ACC[11]_i_1 
       (.I0(data0[11]),
        .I1(DOADO[13]),
        .I2(ram_data[11]),
        .I3(\ACC[15]_i_3_n_0 ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \ACC[12]_i_1 
       (.I0(data0[12]),
        .I1(DOADO[13]),
        .I2(ram_data[12]),
        .I3(\ACC[15]_i_3_n_0 ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \ACC[13]_i_1 
       (.I0(data0[13]),
        .I1(DOADO[13]),
        .I2(ram_data[13]),
        .I3(\ACC[15]_i_3_n_0 ),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \ACC[14]_i_1 
       (.I0(data0[14]),
        .I1(DOADO[13]),
        .I2(ram_data[14]),
        .I3(\ACC[15]_i_3_n_0 ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'h1110)) 
    \ACC[15]_i_1 
       (.I0(DOADO[15]),
        .I1(DOADO[14]),
        .I2(DOADO[13]),
        .I3(DOADO[12]),
        .O(E));
  LUT4 #(
    .INIT(16'h00E2)) 
    \ACC[15]_i_2 
       (.I0(ram_data[15]),
        .I1(DOADO[13]),
        .I2(data0[15]),
        .I3(\ACC[15]_i_3_n_0 ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ACC[15]_i_3 
       (.I0(DOADO[14]),
        .I1(DOADO[15]),
        .I2(DOADO[11]),
        .I3(DOADO[12]),
        .I4(DOADO[13]),
        .O(\ACC[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[1]_i_1 
       (.I0(DOADO[1]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[1]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[2]_i_1 
       (.I0(DOADO[2]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[2]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[3]_i_1 
       (.I0(DOADO[3]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[3]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[4]_i_1 
       (.I0(DOADO[4]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[4]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[5]_i_1 
       (.I0(DOADO[5]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[5]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[6]_i_1 
       (.I0(DOADO[6]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[6]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[7]_i_1 
       (.I0(DOADO[7]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[7]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[8]_i_1 
       (.I0(DOADO[8]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[8]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[9]_i_1 
       (.I0(DOADO[9]),
        .I1(\ACC[15]_i_3_n_0 ),
        .I2(ram_data[9]),
        .I3(\ACC[10]_i_2_n_0 ),
        .I4(data0[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    aux_finish_program_i_1
       (.I0(ram_name_reg_0),
        .I1(DOADO[13]),
        .I2(DOADO[12]),
        .I3(DOADO[11]),
        .I4(finish_program),
        .O(aux_finish_program_reg));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    i__carry__0_i_1__0
       (.I0(DOADO[7]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[7]),
        .I3(i__carry_i_7_n_0),
        .I4(\ACC_reg[15]_0 [6]),
        .O(\ACC_reg[7] [3]));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    i__carry__0_i_2__0
       (.I0(DOADO[6]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[6]),
        .I3(i__carry_i_7_n_0),
        .I4(\ACC_reg[15]_0 [5]),
        .O(\ACC_reg[7] [2]));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    i__carry__0_i_3__0
       (.I0(DOADO[5]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[5]),
        .I3(i__carry_i_7_n_0),
        .I4(\ACC_reg[15]_0 [4]),
        .O(\ACC_reg[7] [1]));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    i__carry__0_i_4__0
       (.I0(DOADO[4]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[4]),
        .I3(i__carry_i_7_n_0),
        .I4(\ACC_reg[15]_0 [3]),
        .O(\ACC_reg[7] [0]));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_1__0
       (.I0(ram_data[11]),
        .I1(i__carry_i_6_n_0),
        .I2(i__carry_i_7_n_0),
        .I3(\ACC_reg[15]_0 [10]),
        .O(\ACC_reg[11] [3]));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    i__carry__1_i_2__0
       (.I0(DOADO[10]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[10]),
        .I3(i__carry_i_7_n_0),
        .I4(\ACC_reg[15]_0 [9]),
        .O(\ACC_reg[11] [2]));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    i__carry__1_i_3__0
       (.I0(DOADO[9]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[9]),
        .I3(i__carry_i_7_n_0),
        .I4(\ACC_reg[15]_0 [8]),
        .O(\ACC_reg[11] [1]));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    i__carry__1_i_4__0
       (.I0(DOADO[8]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[8]),
        .I3(i__carry_i_7_n_0),
        .I4(\ACC_reg[15]_0 [7]),
        .O(\ACC_reg[11] [0]));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__2_i_1__0
       (.I0(ram_data[15]),
        .I1(i__carry_i_6_n_0),
        .I2(i__carry_i_7_n_0),
        .I3(\ACC_reg[15]_0 [14]),
        .O(\ACC_reg[15] [3]));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__2_i_2__0
       (.I0(ram_data[14]),
        .I1(i__carry_i_6_n_0),
        .I2(i__carry_i_7_n_0),
        .I3(\ACC_reg[15]_0 [13]),
        .O(\ACC_reg[15] [2]));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__2_i_3__0
       (.I0(ram_data[13]),
        .I1(i__carry_i_6_n_0),
        .I2(i__carry_i_7_n_0),
        .I3(\ACC_reg[15]_0 [12]),
        .O(\ACC_reg[15] [1]));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__2_i_4__0
       (.I0(ram_data[12]),
        .I1(i__carry_i_6_n_0),
        .I2(i__carry_i_7_n_0),
        .I3(\ACC_reg[15]_0 [11]),
        .O(\ACC_reg[15] [0]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    i__carry_i_1
       (.I0(DOADO[13]),
        .I1(DOADO[15]),
        .I2(DOADO[14]),
        .I3(DOADO[12]),
        .O(DI));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    i__carry_i_2__0
       (.I0(DOADO[3]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[3]),
        .I3(i__carry_i_7_n_0),
        .I4(\ACC_reg[15]_0 [2]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    i__carry_i_3__0
       (.I0(DOADO[2]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[2]),
        .I3(i__carry_i_7_n_0),
        .I4(\ACC_reg[15]_0 [1]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h47B8B847)) 
    i__carry_i_4__0
       (.I0(DOADO[1]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[1]),
        .I3(i__carry_i_7_n_0),
        .I4(\ACC_reg[15]_0 [0]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_5__0
       (.I0(DOADO[0]),
        .I1(i__carry_i_6_n_0),
        .I2(ram_data[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h0200)) 
    i__carry_i_6
       (.I0(DOADO[13]),
        .I1(DOADO[14]),
        .I2(DOADO[15]),
        .I3(DOADO[11]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    i__carry_i_7
       (.I0(DOADO[12]),
        .I1(DOADO[14]),
        .I2(DOADO[15]),
        .I3(DOADO[13]),
        .O(i__carry_i_7_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "ram_name" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "2047" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000200310020803281838063001080220001805),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_name_reg
       (.ADDRARDADDR({1'b1,Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_ram_name_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_name_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_ram_name_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_ram_name_reg_DOADO_UNCONNECTED[31:16],DOADO}),
        .DOBDO(NLW_ram_name_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_name_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_name_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_name_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_ram_name_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_name_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_name_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_name_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000010)) 
    ram_name_reg_i_2
       (.I0(DOADO[14]),
        .I1(DOADO[15]),
        .I2(DOADO[11]),
        .I3(DOADO[13]),
        .I4(DOADO[12]),
        .O(Wr));
endmodule

module Rx_interface
   (is_s,
    state_reg,
    ena,
    state_reg_reg_0,
    clk_IBUF_BUFG,
    reset_IBUF,
    tick_reg,
    is_s_reg_0);
  output is_s;
  output state_reg;
  output ena;
  input state_reg_reg_0;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input tick_reg;
  input is_s_reg_0;

  wire clk_IBUF_BUFG;
  wire ena;
  wire is_s;
  wire is_s_reg_0;
  wire reset_IBUF;
  wire state_reg;
  wire state_reg_reg_0;
  wire tick_reg;

  FDCE #(
    .INIT(1'b0)) 
    aux_BIP_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(is_s_reg_0),
        .Q(ena));
  FDCE #(
    .INIT(1'b0)) 
    is_s_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(state_reg_reg_0),
        .Q(is_s));
  FDCE #(
    .INIT(1'b0)) 
    state_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(tick_reg),
        .Q(state_reg));
endmodule

(* ECO_CHECKSUM = "d70a1a74" *) (* POWER_OPT_BRAM_CDC = "1" *) (* POWER_OPT_BRAM_SR_ADDR = "1" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Top_level
   (rx,
    clk,
    reset,
    tx);
  input rx;
  input clk;
  input reset;
  output tx;

  wire [15:0]A;
  wire BIP_enable;
  wire [15:0]In_Data;
  wire [15:0]Out_Data;
  wire [10:0]PC;
  wire [15:0]Program_Data;
  wire Program_memory_n_35;
  wire Program_memory_n_36;
  wire Program_memory_n_37;
  wire Program_memory_n_38;
  wire Program_memory_n_39;
  wire Program_memory_n_40;
  wire Program_memory_n_41;
  wire Program_memory_n_42;
  wire Program_memory_n_43;
  wire Program_memory_n_44;
  wire Program_memory_n_45;
  wire Program_memory_n_46;
  wire Program_memory_n_47;
  wire Program_memory_n_48;
  wire Program_memory_n_49;
  wire Program_memory_n_50;
  wire Program_memory_n_51;
  wire WrAcc;
  wire WrRAM;
  wire bip_n_44;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]data0;
  wire [1:1]\datapath/Operation ;
  wire finish_program;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire tx;
  wire tx_OBUF;

initial begin
 $sdf_annotate("allTest_time_impl.sdf",,,,"tool_control");
end
  Data_memory Data_memory
       (.Addr(Program_Data[10:0]),
        .E(BIP_enable),
        .Q(In_Data),
        .WEA(WrRAM),
        .clk(clk_IBUF_BUFG),
        .ram_data(Out_Data));
  Program_memory Program_memory
       (.\ACC_reg[11] ({Program_memory_n_43,Program_memory_n_44,Program_memory_n_45,Program_memory_n_46}),
        .\ACC_reg[15] ({Program_memory_n_47,Program_memory_n_48,Program_memory_n_49,Program_memory_n_50}),
        .\ACC_reg[15]_0 (In_Data[15:1]),
        .\ACC_reg[7] ({Program_memory_n_39,Program_memory_n_40,Program_memory_n_41,Program_memory_n_42}),
        .D(A),
        .DI(\datapath/Operation ),
        .DOADO(Program_Data),
        .E(WrAcc),
        .Q(PC),
        .S({Program_memory_n_35,Program_memory_n_36,Program_memory_n_37,Program_memory_n_38}),
        .Wr(WrRAM),
        .aux_finish_program_reg(Program_memory_n_51),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .ena(BIP_enable),
        .finish_program(finish_program),
        .ram_data(Out_Data),
        .ram_name_reg_0(bip_n_44));
  CPU bip
       (.D(A),
        .DI(\datapath/Operation ),
        .DOADO(Program_Data[15:11]),
        .E(WrAcc),
        .Q(In_Data),
        .S({Program_memory_n_35,Program_memory_n_36,Program_memory_n_37,Program_memory_n_38}),
        .aux_finish_program_reg(bip_n_44),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .ena(BIP_enable),
        .finish_program(finish_program),
        .out(PC),
        .ram_name_reg({Program_memory_n_39,Program_memory_n_40,Program_memory_n_41,Program_memory_n_42}),
        .ram_name_reg_0({Program_memory_n_43,Program_memory_n_44,Program_memory_n_45,Program_memory_n_46}),
        .ram_name_reg_1({Program_memory_n_47,Program_memory_n_48,Program_memory_n_49,Program_memory_n_50}),
        .ram_name_reg_2(Program_memory_n_51),
        .reset_IBUF(reset_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  UART uart
       (.D(PC),
        .In_Data(In_Data),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ena(BIP_enable),
        .finish_program(finish_program),
        .reset_IBUF(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .tx_OBUF(tx_OBUF));
endmodule

module Tx_interface
   (tx_start,
    Q,
    D,
    clk_IBUF_BUFG,
    reset_IBUF,
    tick_reg,
    finish_program,
    In_Data,
    out,
    \aux_PC_reg[10] );
  output tx_start;
  output [6:0]Q;
  output [0:0]D;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input tick_reg;
  input finish_program;
  input [15:0]In_Data;
  input [0:0]out;
  input [10:0]\aux_PC_reg[10] ;

  wire [0:0]D;
  wire [15:0]In_Data;
  wire [6:0]Q;
  wire acc_sended;
  wire acc_sended_i_1_n_0;
  wire acc_sended_i_2_n_0;
  wire acc_sended_i_3_n_0;
  wire aux0__0_i_10_n_0;
  wire aux0__0_i_11_n_0;
  wire aux0__0_i_12_n_0;
  wire aux0__0_i_13_n_0;
  wire aux0__0_i_1_n_0;
  wire aux0__0_i_2_n_0;
  wire aux0__0_i_3_n_0;
  wire aux0__0_i_4_n_0;
  wire aux0__0_i_5_n_0;
  wire aux0__0_i_6_n_0;
  wire aux0__0_i_7_n_0;
  wire aux0__0_i_8_n_0;
  wire aux0__0_i_9_n_0;
  wire aux0__0_n_0;
  wire aux0__0_n_4;
  wire aux0__0_n_5;
  wire aux0__0_n_6;
  wire aux0__0_n_7;
  wire aux0__10_i_1_n_0;
  wire aux0__10_i_2_n_0;
  wire aux0__10_i_3_n_0;
  wire aux0__10_i_4_n_0;
  wire aux0__10_n_0;
  wire aux0__10_n_4;
  wire aux0__10_n_5;
  wire aux0__10_n_6;
  wire aux0__10_n_7;
  wire aux0__11_i_1_n_0;
  wire aux0__11_i_2_n_0;
  wire aux0__11_i_3_n_0;
  wire aux0__11_i_4_n_0;
  wire aux0__11_n_0;
  wire aux0__11_n_4;
  wire aux0__11_n_5;
  wire aux0__11_n_6;
  wire aux0__11_n_7;
  wire aux0__12_i_1_n_0;
  wire aux0__12_i_2_n_0;
  wire aux0__12_i_3_n_0;
  wire aux0__12_i_4_n_0;
  wire aux0__12_n_0;
  wire aux0__12_n_4;
  wire aux0__12_n_5;
  wire aux0__12_n_6;
  wire aux0__12_n_7;
  wire aux0__13_i_1_n_0;
  wire aux0__13_i_2_n_0;
  wire aux0__13_n_2;
  wire aux0__13_n_7;
  wire aux0__14_i_2_n_0;
  wire aux0__14_i_3_n_0;
  wire aux0__14_i_4_n_0;
  wire aux0__14_i_5_n_0;
  wire aux0__14_n_0;
  wire aux0__14_n_4;
  wire aux0__14_n_5;
  wire aux0__14_n_6;
  wire aux0__14_n_7;
  wire aux0__15_i_1_n_0;
  wire aux0__15_i_2_n_0;
  wire aux0__15_i_3_n_0;
  wire aux0__15_i_4_n_0;
  wire aux0__15_n_0;
  wire aux0__15_n_4;
  wire aux0__15_n_5;
  wire aux0__15_n_6;
  wire aux0__15_n_7;
  wire aux0__16_i_1_n_0;
  wire aux0__16_i_2_n_0;
  wire aux0__16_i_3_n_0;
  wire aux0__16_i_4_n_0;
  wire aux0__16_n_0;
  wire aux0__16_n_4;
  wire aux0__16_n_5;
  wire aux0__16_n_6;
  wire aux0__16_n_7;
  wire aux0__17_i_1_n_0;
  wire aux0__17_i_2_n_0;
  wire aux0__17_i_3_n_0;
  wire aux0__17_i_4_n_0;
  wire aux0__17_n_0;
  wire aux0__17_n_4;
  wire aux0__17_n_5;
  wire aux0__17_n_6;
  wire aux0__17_n_7;
  wire aux0__18_i_1_n_0;
  wire aux0__18_i_2_n_0;
  wire aux0__18_n_2;
  wire aux0__18_n_7;
  wire aux0__19_i_2_n_0;
  wire aux0__19_i_3_n_0;
  wire aux0__19_i_4_n_0;
  wire aux0__19_i_5_n_0;
  wire aux0__19_n_0;
  wire aux0__19_n_4;
  wire aux0__19_n_5;
  wire aux0__19_n_6;
  wire aux0__19_n_7;
  wire aux0__1_i_10_n_0;
  wire aux0__1_i_11_n_0;
  wire aux0__1_i_12_n_0;
  wire aux0__1_i_13_n_0;
  wire aux0__1_i_1_n_0;
  wire aux0__1_i_2_n_0;
  wire aux0__1_i_3_n_0;
  wire aux0__1_i_4_n_0;
  wire aux0__1_i_5_n_0;
  wire aux0__1_i_6_n_0;
  wire aux0__1_i_7_n_0;
  wire aux0__1_i_8_n_0;
  wire aux0__1_i_9_n_0;
  wire aux0__1_n_0;
  wire aux0__1_n_4;
  wire aux0__1_n_5;
  wire aux0__1_n_6;
  wire aux0__1_n_7;
  wire aux0__20_i_1_n_0;
  wire aux0__20_i_2_n_0;
  wire aux0__20_i_3_n_0;
  wire aux0__20_i_4_n_0;
  wire aux0__20_n_0;
  wire aux0__20_n_4;
  wire aux0__20_n_5;
  wire aux0__20_n_6;
  wire aux0__20_n_7;
  wire aux0__21_i_1_n_0;
  wire aux0__21_i_2_n_0;
  wire aux0__21_i_3_n_0;
  wire aux0__21_i_4_n_0;
  wire aux0__21_n_0;
  wire aux0__21_n_4;
  wire aux0__21_n_5;
  wire aux0__21_n_6;
  wire aux0__21_n_7;
  wire aux0__22_i_1_n_0;
  wire aux0__22_i_2_n_0;
  wire aux0__22_i_3_n_0;
  wire aux0__22_i_4_n_0;
  wire aux0__22_n_0;
  wire aux0__22_n_4;
  wire aux0__22_n_5;
  wire aux0__22_n_6;
  wire aux0__22_n_7;
  wire aux0__23_i_1_n_0;
  wire aux0__23_i_2_n_0;
  wire aux0__23_n_2;
  wire aux0__23_n_7;
  wire aux0__24_i_2_n_0;
  wire aux0__24_i_3_n_0;
  wire aux0__24_i_4_n_0;
  wire aux0__24_i_5_n_0;
  wire aux0__24_n_0;
  wire aux0__24_n_4;
  wire aux0__24_n_5;
  wire aux0__24_n_6;
  wire aux0__24_n_7;
  wire aux0__25_i_1_n_0;
  wire aux0__25_i_2_n_0;
  wire aux0__25_i_3_n_0;
  wire aux0__25_i_4_n_0;
  wire aux0__25_n_0;
  wire aux0__25_n_4;
  wire aux0__25_n_5;
  wire aux0__25_n_6;
  wire aux0__25_n_7;
  wire aux0__26_i_1_n_0;
  wire aux0__26_i_2_n_0;
  wire aux0__26_i_3_n_0;
  wire aux0__26_i_4_n_0;
  wire aux0__26_n_0;
  wire aux0__26_n_4;
  wire aux0__26_n_5;
  wire aux0__26_n_6;
  wire aux0__26_n_7;
  wire aux0__27_i_1_n_0;
  wire aux0__27_i_2_n_0;
  wire aux0__27_i_3_n_0;
  wire aux0__27_i_4_n_0;
  wire aux0__27_n_0;
  wire aux0__27_n_4;
  wire aux0__27_n_5;
  wire aux0__27_n_6;
  wire aux0__27_n_7;
  wire aux0__28_i_1_n_0;
  wire aux0__28_i_2_n_0;
  wire aux0__28_n_2;
  wire aux0__28_n_7;
  wire aux0__29_i_2_n_0;
  wire aux0__29_i_3_n_0;
  wire aux0__29_i_4_n_0;
  wire aux0__29_i_5_n_0;
  wire aux0__29_n_0;
  wire aux0__29_n_4;
  wire aux0__29_n_5;
  wire aux0__29_n_6;
  wire aux0__29_n_7;
  wire aux0__2_i_10_n_0;
  wire aux0__2_i_1_n_0;
  wire aux0__2_i_2_n_0;
  wire aux0__2_i_3_n_0;
  wire aux0__2_i_4_n_0;
  wire aux0__2_i_5_n_0;
  wire aux0__2_i_6_n_0;
  wire aux0__2_i_7_n_0;
  wire aux0__2_i_8_n_0;
  wire aux0__2_n_0;
  wire aux0__2_n_4;
  wire aux0__2_n_5;
  wire aux0__2_n_6;
  wire aux0__2_n_7;
  wire aux0__30_i_1_n_0;
  wire aux0__30_i_2_n_0;
  wire aux0__30_i_3_n_0;
  wire aux0__30_i_4_n_0;
  wire aux0__30_n_0;
  wire aux0__30_n_4;
  wire aux0__30_n_5;
  wire aux0__30_n_6;
  wire aux0__30_n_7;
  wire aux0__31_i_1_n_0;
  wire aux0__31_i_2_n_0;
  wire aux0__31_i_3_n_0;
  wire aux0__31_i_4_n_0;
  wire aux0__31_n_0;
  wire aux0__31_n_4;
  wire aux0__31_n_5;
  wire aux0__31_n_6;
  wire aux0__31_n_7;
  wire aux0__32_i_1_n_0;
  wire aux0__32_i_2_n_0;
  wire aux0__32_i_3_n_0;
  wire aux0__32_i_4_n_0;
  wire aux0__32_n_0;
  wire aux0__32_n_4;
  wire aux0__32_n_5;
  wire aux0__32_n_6;
  wire aux0__32_n_7;
  wire aux0__33_i_1_n_0;
  wire aux0__33_i_2_n_0;
  wire aux0__33_n_2;
  wire aux0__33_n_7;
  wire aux0__34_i_2_n_0;
  wire aux0__34_i_3_n_0;
  wire aux0__34_i_4_n_0;
  wire aux0__34_i_5_n_0;
  wire aux0__34_n_0;
  wire aux0__34_n_4;
  wire aux0__34_n_5;
  wire aux0__34_n_6;
  wire aux0__34_n_7;
  wire aux0__35_i_1_n_0;
  wire aux0__35_i_2_n_0;
  wire aux0__35_i_3_n_0;
  wire aux0__35_i_4_n_0;
  wire aux0__35_n_0;
  wire aux0__35_n_4;
  wire aux0__35_n_5;
  wire aux0__35_n_6;
  wire aux0__35_n_7;
  wire aux0__36_i_1_n_0;
  wire aux0__36_i_2_n_0;
  wire aux0__36_i_3_n_0;
  wire aux0__36_i_4_n_0;
  wire aux0__36_n_0;
  wire aux0__36_n_4;
  wire aux0__36_n_5;
  wire aux0__36_n_6;
  wire aux0__36_n_7;
  wire aux0__37_i_1_n_0;
  wire aux0__37_i_2_n_0;
  wire aux0__37_i_3_n_0;
  wire aux0__37_i_4_n_0;
  wire aux0__37_n_0;
  wire aux0__37_n_4;
  wire aux0__37_n_5;
  wire aux0__37_n_6;
  wire aux0__37_n_7;
  wire aux0__38_i_1_n_0;
  wire aux0__38_i_2_n_0;
  wire aux0__38_n_2;
  wire aux0__38_n_7;
  wire aux0__39_i_2_n_0;
  wire aux0__39_i_3_n_0;
  wire aux0__39_i_4_n_0;
  wire aux0__39_i_5_n_0;
  wire aux0__39_n_0;
  wire aux0__39_n_4;
  wire aux0__39_n_5;
  wire aux0__39_n_6;
  wire aux0__39_n_7;
  wire aux0__3_i_1_n_0;
  wire aux0__3_i_2_n_0;
  wire aux0__3_i_3_n_0;
  wire aux0__3_i_4_n_0;
  wire aux0__3_n_1;
  wire aux0__3_n_6;
  wire aux0__3_n_7;
  wire aux0__40_i_1_n_0;
  wire aux0__40_i_2_n_0;
  wire aux0__40_i_3_n_0;
  wire aux0__40_i_4_n_0;
  wire aux0__40_n_0;
  wire aux0__40_n_4;
  wire aux0__40_n_5;
  wire aux0__40_n_6;
  wire aux0__40_n_7;
  wire aux0__41_i_1_n_0;
  wire aux0__41_i_2_n_0;
  wire aux0__41_i_3_n_0;
  wire aux0__41_i_4_n_0;
  wire aux0__41_n_0;
  wire aux0__41_n_4;
  wire aux0__41_n_5;
  wire aux0__41_n_6;
  wire aux0__41_n_7;
  wire aux0__42_i_1_n_0;
  wire aux0__42_i_2_n_0;
  wire aux0__42_i_3_n_0;
  wire aux0__42_i_4_n_0;
  wire aux0__42_n_0;
  wire aux0__42_n_4;
  wire aux0__42_n_5;
  wire aux0__42_n_6;
  wire aux0__42_n_7;
  wire aux0__43_i_1_n_0;
  wire aux0__43_i_2_n_0;
  wire aux0__43_n_2;
  wire aux0__43_n_7;
  wire aux0__44_i_2_n_0;
  wire aux0__44_i_3_n_0;
  wire aux0__44_i_4_n_0;
  wire aux0__44_i_5_n_0;
  wire aux0__44_n_0;
  wire aux0__44_n_4;
  wire aux0__44_n_5;
  wire aux0__44_n_6;
  wire aux0__44_n_7;
  wire aux0__45_i_1_n_0;
  wire aux0__45_i_2_n_0;
  wire aux0__45_i_3_n_0;
  wire aux0__45_i_4_n_0;
  wire aux0__45_n_0;
  wire aux0__45_n_4;
  wire aux0__45_n_5;
  wire aux0__45_n_6;
  wire aux0__45_n_7;
  wire aux0__46_i_1_n_0;
  wire aux0__46_i_2_n_0;
  wire aux0__46_i_3_n_0;
  wire aux0__46_i_4_n_0;
  wire aux0__46_n_0;
  wire aux0__46_n_4;
  wire aux0__46_n_5;
  wire aux0__46_n_6;
  wire aux0__46_n_7;
  wire aux0__47_i_1_n_0;
  wire aux0__47_i_2_n_0;
  wire aux0__47_i_3_n_0;
  wire aux0__47_i_4_n_0;
  wire aux0__47_n_0;
  wire aux0__47_n_4;
  wire aux0__47_n_5;
  wire aux0__47_n_6;
  wire aux0__47_n_7;
  wire aux0__48_i_1_n_0;
  wire aux0__48_i_2_n_0;
  wire aux0__48_n_2;
  wire aux0__48_n_7;
  wire aux0__49_i_2_n_0;
  wire aux0__49_i_3_n_0;
  wire aux0__49_i_4_n_0;
  wire aux0__49_i_5_n_0;
  wire aux0__49_n_0;
  wire aux0__49_n_4;
  wire aux0__49_n_5;
  wire aux0__49_n_6;
  wire aux0__49_n_7;
  wire aux0__4_i_1_n_0;
  wire aux0__4_i_2_n_0;
  wire aux0__4_i_3_n_0;
  wire aux0__4_i_4_n_0;
  wire aux0__4_n_0;
  wire aux0__4_n_4;
  wire aux0__4_n_5;
  wire aux0__4_n_6;
  wire aux0__4_n_7;
  wire aux0__50_i_1_n_0;
  wire aux0__50_i_2_n_0;
  wire aux0__50_i_3_n_0;
  wire aux0__50_i_4_n_0;
  wire aux0__50_n_0;
  wire aux0__50_n_4;
  wire aux0__50_n_5;
  wire aux0__50_n_6;
  wire aux0__50_n_7;
  wire aux0__51_i_1_n_0;
  wire aux0__51_i_2_n_0;
  wire aux0__51_i_3_n_0;
  wire aux0__51_i_4_n_0;
  wire aux0__51_n_0;
  wire aux0__51_n_4;
  wire aux0__51_n_5;
  wire aux0__51_n_6;
  wire aux0__51_n_7;
  wire aux0__52_i_1_n_0;
  wire aux0__52_i_2_n_0;
  wire aux0__52_i_3_n_0;
  wire aux0__52_i_4_n_0;
  wire aux0__52_n_0;
  wire aux0__52_n_4;
  wire aux0__52_n_5;
  wire aux0__52_n_6;
  wire aux0__52_n_7;
  wire aux0__53_i_1_n_0;
  wire aux0__53_i_2_n_0;
  wire aux0__53_n_2;
  wire aux0__53_n_7;
  wire aux0__54_i_2_n_0;
  wire aux0__54_i_3_n_0;
  wire aux0__54_i_4_n_0;
  wire aux0__54_i_5_n_0;
  wire aux0__54_n_0;
  wire aux0__54_n_4;
  wire aux0__54_n_5;
  wire aux0__54_n_6;
  wire aux0__54_n_7;
  wire aux0__55_i_1_n_0;
  wire aux0__55_i_2_n_0;
  wire aux0__55_i_3_n_0;
  wire aux0__55_i_4_n_0;
  wire aux0__55_n_0;
  wire aux0__55_n_4;
  wire aux0__55_n_5;
  wire aux0__55_n_6;
  wire aux0__55_n_7;
  wire aux0__56_i_1_n_0;
  wire aux0__56_i_2_n_0;
  wire aux0__56_i_3_n_0;
  wire aux0__56_i_4_n_0;
  wire aux0__56_n_0;
  wire aux0__56_n_4;
  wire aux0__56_n_5;
  wire aux0__56_n_6;
  wire aux0__56_n_7;
  wire aux0__57_i_1_n_0;
  wire aux0__57_i_2_n_0;
  wire aux0__57_i_3_n_0;
  wire aux0__57_i_4_n_0;
  wire aux0__57_n_0;
  wire aux0__57_n_4;
  wire aux0__57_n_5;
  wire aux0__57_n_6;
  wire aux0__57_n_7;
  wire aux0__58_i_1_n_0;
  wire aux0__58_i_2_n_0;
  wire aux0__58_n_2;
  wire aux0__58_n_7;
  wire aux0__59_i_2_n_0;
  wire aux0__59_i_3_n_0;
  wire aux0__59_i_4_n_0;
  wire aux0__59_i_5_n_0;
  wire aux0__59_n_0;
  wire aux0__59_n_4;
  wire aux0__59_n_5;
  wire aux0__59_n_6;
  wire aux0__59_n_7;
  wire aux0__5_i_1_n_0;
  wire aux0__5_i_2_n_0;
  wire aux0__5_i_3_n_0;
  wire aux0__5_i_4_n_0;
  wire aux0__5_n_0;
  wire aux0__5_n_4;
  wire aux0__5_n_5;
  wire aux0__5_n_6;
  wire aux0__5_n_7;
  wire aux0__60_i_1_n_0;
  wire aux0__60_i_2_n_0;
  wire aux0__60_i_3_n_0;
  wire aux0__60_i_4_n_0;
  wire aux0__60_n_0;
  wire aux0__60_n_4;
  wire aux0__60_n_5;
  wire aux0__60_n_6;
  wire aux0__60_n_7;
  wire aux0__61_i_1_n_0;
  wire aux0__61_i_2_n_0;
  wire aux0__61_i_3_n_0;
  wire aux0__61_i_4_n_0;
  wire aux0__61_n_0;
  wire aux0__61_n_4;
  wire aux0__61_n_5;
  wire aux0__61_n_6;
  wire aux0__61_n_7;
  wire aux0__62_i_1_n_0;
  wire aux0__62_i_2_n_0;
  wire aux0__62_i_3_n_0;
  wire aux0__62_i_4_n_0;
  wire aux0__62_n_0;
  wire aux0__62_n_4;
  wire aux0__62_n_5;
  wire aux0__62_n_6;
  wire aux0__62_n_7;
  wire aux0__63_i_1_n_0;
  wire aux0__63_i_2_n_0;
  wire aux0__63_n_2;
  wire aux0__63_n_7;
  wire aux0__64_i_2_n_0;
  wire aux0__64_i_3_n_0;
  wire aux0__64_i_4_n_0;
  wire aux0__64_i_5_n_0;
  wire aux0__64_n_0;
  wire aux0__64_n_4;
  wire aux0__64_n_5;
  wire aux0__64_n_6;
  wire aux0__64_n_7;
  wire aux0__65_i_1_n_0;
  wire aux0__65_i_2_n_0;
  wire aux0__65_i_3_n_0;
  wire aux0__65_i_4_n_0;
  wire aux0__65_n_0;
  wire aux0__65_n_4;
  wire aux0__65_n_5;
  wire aux0__65_n_6;
  wire aux0__65_n_7;
  wire aux0__66_i_1_n_0;
  wire aux0__66_i_2_n_0;
  wire aux0__66_i_3_n_0;
  wire aux0__66_i_4_n_0;
  wire aux0__66_n_0;
  wire aux0__66_n_4;
  wire aux0__66_n_5;
  wire aux0__66_n_6;
  wire aux0__66_n_7;
  wire aux0__67_i_1_n_0;
  wire aux0__67_i_2_n_0;
  wire aux0__67_i_3_n_0;
  wire aux0__67_i_4_n_0;
  wire aux0__67_n_0;
  wire aux0__67_n_4;
  wire aux0__67_n_5;
  wire aux0__67_n_6;
  wire aux0__67_n_7;
  wire aux0__68_i_1_n_0;
  wire aux0__68_i_2_n_0;
  wire aux0__68_n_2;
  wire aux0__68_n_7;
  wire aux0__69_i_2_n_0;
  wire aux0__69_i_3_n_0;
  wire aux0__69_i_4_n_0;
  wire aux0__69_i_5_n_0;
  wire aux0__69_n_0;
  wire aux0__69_n_4;
  wire aux0__69_n_5;
  wire aux0__69_n_6;
  wire aux0__69_n_7;
  wire aux0__6_i_1_n_0;
  wire aux0__6_i_2_n_0;
  wire aux0__6_i_3_n_0;
  wire aux0__6_i_4_n_0;
  wire aux0__6_n_0;
  wire aux0__6_n_4;
  wire aux0__6_n_5;
  wire aux0__6_n_6;
  wire aux0__6_n_7;
  wire aux0__70_i_1_n_0;
  wire aux0__70_i_2_n_0;
  wire aux0__70_i_3_n_0;
  wire aux0__70_i_4_n_0;
  wire aux0__70_n_0;
  wire aux0__70_n_4;
  wire aux0__70_n_5;
  wire aux0__70_n_6;
  wire aux0__70_n_7;
  wire aux0__71_i_1_n_0;
  wire aux0__71_i_2_n_0;
  wire aux0__71_i_3_n_0;
  wire aux0__71_i_4_n_0;
  wire aux0__71_n_0;
  wire aux0__71_n_4;
  wire aux0__71_n_5;
  wire aux0__71_n_6;
  wire aux0__71_n_7;
  wire aux0__72_i_1_n_0;
  wire aux0__72_i_2_n_0;
  wire aux0__72_i_3_n_0;
  wire aux0__72_i_4_n_0;
  wire aux0__72_n_0;
  wire aux0__72_n_4;
  wire aux0__72_n_5;
  wire aux0__72_n_6;
  wire aux0__72_n_7;
  wire aux0__73_i_1_n_0;
  wire aux0__73_i_2_n_0;
  wire aux0__73_n_2;
  wire aux0__73_n_7;
  wire aux0__74_i_2_n_0;
  wire aux0__74_i_3_n_0;
  wire aux0__74_i_4_n_0;
  wire aux0__74_i_5_n_0;
  wire aux0__74_n_0;
  wire aux0__74_n_4;
  wire aux0__74_n_5;
  wire aux0__74_n_6;
  wire aux0__74_n_7;
  wire aux0__75_i_1_n_0;
  wire aux0__75_i_2_n_0;
  wire aux0__75_i_3_n_0;
  wire aux0__75_i_4_n_0;
  wire aux0__75_n_0;
  wire aux0__75_n_4;
  wire aux0__75_n_5;
  wire aux0__75_n_6;
  wire aux0__75_n_7;
  wire aux0__76_i_1_n_0;
  wire aux0__76_i_2_n_0;
  wire aux0__76_i_3_n_0;
  wire aux0__76_i_4_n_0;
  wire aux0__76_n_0;
  wire aux0__76_n_4;
  wire aux0__76_n_5;
  wire aux0__76_n_6;
  wire aux0__76_n_7;
  wire aux0__77_i_1_n_0;
  wire aux0__77_i_2_n_0;
  wire aux0__77_i_3_n_0;
  wire aux0__77_i_4_n_0;
  wire aux0__77_n_0;
  wire aux0__77_n_5;
  wire aux0__77_n_6;
  wire aux0__77_n_7;
  wire aux0__78_i_1_n_0;
  wire aux0__78_i_2_n_0;
  wire aux0__78_n_2;
  wire aux0__7_i_1_n_0;
  wire aux0__7_i_2_n_0;
  wire aux0__7_i_3_n_0;
  wire aux0__7_i_4_n_0;
  wire aux0__7_n_0;
  wire aux0__7_n_4;
  wire aux0__7_n_5;
  wire aux0__7_n_6;
  wire aux0__7_n_7;
  wire aux0__8_i_1_n_0;
  wire aux0__8_i_2_n_0;
  wire aux0__8_n_2;
  wire aux0__8_n_7;
  wire aux0__9_i_2_n_0;
  wire aux0__9_i_3_n_0;
  wire aux0__9_i_4_n_0;
  wire aux0__9_i_5_n_0;
  wire aux0__9_n_0;
  wire aux0__9_n_4;
  wire aux0__9_n_5;
  wire aux0__9_n_6;
  wire aux0__9_n_7;
  wire aux0_i_10_n_0;
  wire aux0_i_11_n_0;
  wire aux0_i_1_n_0;
  wire aux0_i_2_n_0;
  wire aux0_i_3_n_0;
  wire aux0_i_4_n_0;
  wire aux0_i_5_n_0;
  wire aux0_i_6_n_0;
  wire aux0_i_7_n_0;
  wire aux0_i_8_n_0;
  wire aux0_i_9_n_0;
  wire aux0_n_0;
  wire aux0_n_4;
  wire aux0_n_5;
  wire aux0_n_6;
  wire aux0_n_7;
  wire [17:2]aux1;
  wire \aux[0]_i_1_n_0 ;
  wire \aux[10]_i_1_n_0 ;
  wire \aux[10]_i_2_n_0 ;
  wire \aux[11]_i_1_n_0 ;
  wire \aux[11]_i_3_n_0 ;
  wire \aux[12]_i_1_n_0 ;
  wire \aux[12]_i_2_n_0 ;
  wire \aux[12]_i_3_n_0 ;
  wire \aux[12]_i_4_n_0 ;
  wire \aux[12]_i_5_n_0 ;
  wire \aux[13]_i_1_n_0 ;
  wire \aux[13]_i_2_n_0 ;
  wire \aux[14]_i_1_n_0 ;
  wire \aux[15]_i_10_n_0 ;
  wire \aux[15]_i_11_n_0 ;
  wire \aux[15]_i_12_n_0 ;
  wire \aux[15]_i_1_n_0 ;
  wire \aux[15]_i_2_n_0 ;
  wire \aux[15]_i_3_n_0 ;
  wire \aux[15]_i_5_n_0 ;
  wire \aux[15]_i_6_n_0 ;
  wire \aux[15]_i_7_n_0 ;
  wire \aux[15]_i_8_n_0 ;
  wire \aux[15]_i_9_n_0 ;
  wire \aux[1]_i_1_n_0 ;
  wire \aux[1]_i_2_n_0 ;
  wire \aux[2]_i_1_n_0 ;
  wire \aux[3]_i_1_n_0 ;
  wire \aux[3]_i_3_n_0 ;
  wire \aux[4]_i_1_n_0 ;
  wire \aux[4]_i_2_n_0 ;
  wire \aux[5]_i_1_n_0 ;
  wire \aux[5]_i_3_n_0 ;
  wire \aux[6]_i_1_n_0 ;
  wire \aux[6]_i_2_n_0 ;
  wire \aux[7]_i_1_n_0 ;
  wire \aux[7]_i_3_n_0 ;
  wire \aux[8]_i_1_n_0 ;
  wire \aux[8]_i_2_n_0 ;
  wire \aux[8]_i_3_n_0 ;
  wire \aux[8]_i_4_n_0 ;
  wire \aux[8]_i_5_n_0 ;
  wire \aux[8]_i_6_n_0 ;
  wire \aux[9]_i_1_n_0 ;
  wire \aux[9]_i_2_n_0 ;
  wire \aux[9]_i_3_n_0 ;
  wire aux_Count;
  wire \aux_Count[14]_i_2_n_0 ;
  wire \aux_Count[14]_i_3_n_0 ;
  wire \aux_Count_reg_n_0_[0] ;
  wire \aux_Count_reg_n_0_[10] ;
  wire \aux_Count_reg_n_0_[14] ;
  wire \aux_Count_reg_n_0_[1] ;
  wire \aux_Count_reg_n_0_[2] ;
  wire \aux_Count_reg_n_0_[3] ;
  wire \aux_Count_reg_n_0_[4] ;
  wire \aux_Count_reg_n_0_[5] ;
  wire \aux_Count_reg_n_0_[6] ;
  wire \aux_Count_reg_n_0_[7] ;
  wire \aux_Count_reg_n_0_[8] ;
  wire \aux_Count_reg_n_0_[9] ;
  wire [10:0]\aux_PC_reg[10] ;
  wire \aux_reg_n_0_[0] ;
  wire \aux_reg_n_0_[10] ;
  wire \aux_reg_n_0_[11] ;
  wire \aux_reg_n_0_[12] ;
  wire \aux_reg_n_0_[13] ;
  wire \aux_reg_n_0_[14] ;
  wire \aux_reg_n_0_[15] ;
  wire \aux_reg_n_0_[1] ;
  wire \aux_reg_n_0_[2] ;
  wire \aux_reg_n_0_[3] ;
  wire \aux_reg_n_0_[4] ;
  wire \aux_reg_n_0_[5] ;
  wire \aux_reg_n_0_[6] ;
  wire \aux_reg_n_0_[7] ;
  wire \aux_reg_n_0_[8] ;
  wire \aux_reg_n_0_[9] ;
  wire clk_IBUF_BUFG;
  wire [15:2]data1;
  wire [7:7]din;
  wire div;
  wire \div[0]_i_1_n_0 ;
  wire \div[0]_i_2_n_0 ;
  wire \div[0]_i_3_n_0 ;
  wire \div[10]_i_1_n_0 ;
  wire \div[13]_i_2_n_0 ;
  wire \div[1]_i_1_n_0 ;
  wire \div[1]_i_2_n_0 ;
  wire \div[1]_i_3_n_0 ;
  wire \div[2]_i_1_n_0 ;
  wire \div[2]_i_2_n_0 ;
  wire \div[2]_i_3_n_0 ;
  wire \div[3]_i_1_n_0 ;
  wire \div[3]_i_2_n_0 ;
  wire \div[3]_i_3_n_0 ;
  wire \div[4]_i_1_n_0 ;
  wire \div[4]_i_2_n_0 ;
  wire \div[4]_i_3_n_0 ;
  wire \div[5]_i_1_n_0 ;
  wire \div[5]_i_2_n_0 ;
  wire \div[5]_i_3_n_0 ;
  wire \div[5]_i_4_n_0 ;
  wire \div[6]_i_1_n_0 ;
  wire \div[6]_i_2_n_0 ;
  wire \div[7]_i_1_n_0 ;
  wire \div[8]_i_1_n_0 ;
  wire \div[9]_i_1_n_0 ;
  wire \div_reg_n_0_[0] ;
  wire \div_reg_n_0_[10] ;
  wire \div_reg_n_0_[11] ;
  wire \div_reg_n_0_[13] ;
  wire \div_reg_n_0_[1] ;
  wire \div_reg_n_0_[2] ;
  wire \div_reg_n_0_[3] ;
  wire \div_reg_n_0_[4] ;
  wire \div_reg_n_0_[5] ;
  wire \div_reg_n_0_[6] ;
  wire \div_reg_n_0_[7] ;
  wire \div_reg_n_0_[8] ;
  wire \div_reg_n_0_[9] ;
  wire finish_program;
  wire first;
  wire first_i_1_n_0;
  wire i;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[4]_i_1_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[5]_i_2_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire \i[7]_i_2_n_0 ;
  wire \i[7]_i_4_n_0 ;
  wire i___839_carry__0_i_10_n_0;
  wire i___839_carry__0_i_11_n_0;
  wire i___839_carry__0_i_12_n_0;
  wire i___839_carry__0_i_13_n_0;
  wire i___839_carry__0_i_14_n_0;
  wire i___839_carry__0_i_1_n_0;
  wire i___839_carry__0_i_1_n_4;
  wire i___839_carry__0_i_1_n_5;
  wire i___839_carry__0_i_1_n_6;
  wire i___839_carry__0_i_1_n_7;
  wire i___839_carry__0_i_2_n_0;
  wire i___839_carry__0_i_3_n_0;
  wire i___839_carry__0_i_4_n_0;
  wire i___839_carry__0_i_5_n_0;
  wire i___839_carry__0_i_6_n_0;
  wire i___839_carry__0_i_6_n_4;
  wire i___839_carry__0_i_6_n_5;
  wire i___839_carry__0_i_6_n_6;
  wire i___839_carry__0_i_6_n_7;
  wire i___839_carry__0_i_7_n_0;
  wire i___839_carry__0_i_8_n_0;
  wire i___839_carry__0_i_9_n_0;
  wire i___839_carry__1_i_1_n_0;
  wire i___839_carry__1_i_1_n_4;
  wire i___839_carry__1_i_1_n_5;
  wire i___839_carry__1_i_1_n_6;
  wire i___839_carry__1_i_1_n_7;
  wire i___839_carry__1_i_2_n_0;
  wire i___839_carry__1_i_3_n_0;
  wire i___839_carry__1_i_4_n_0;
  wire i___839_carry__1_i_5_n_0;
  wire i___839_carry__1_i_6_n_0;
  wire i___839_carry__1_i_7_n_0;
  wire i___839_carry__1_i_8_n_0;
  wire i___839_carry__1_i_9_n_0;
  wire i___839_carry__2_i_1_n_0;
  wire i___839_carry__2_i_2_n_0;
  wire i___839_carry__2_i_3_n_0;
  wire i___839_carry_i_10_n_0;
  wire i___839_carry_i_11_n_0;
  wire i___839_carry_i_12_n_0;
  wire i___839_carry_i_12_n_4;
  wire i___839_carry_i_12_n_5;
  wire i___839_carry_i_12_n_6;
  wire i___839_carry_i_13_n_0;
  wire i___839_carry_i_14_n_0;
  wire i___839_carry_i_15_n_0;
  wire i___839_carry_i_16_n_0;
  wire i___839_carry_i_16_n_4;
  wire i___839_carry_i_16_n_5;
  wire i___839_carry_i_16_n_6;
  wire i___839_carry_i_16_n_7;
  wire i___839_carry_i_17_n_0;
  wire i___839_carry_i_18_n_0;
  wire i___839_carry_i_19_n_0;
  wire i___839_carry_i_1_n_0;
  wire i___839_carry_i_1_n_5;
  wire i___839_carry_i_1_n_6;
  wire i___839_carry_i_1_n_7;
  wire i___839_carry_i_20_n_0;
  wire i___839_carry_i_21_n_0;
  wire i___839_carry_i_21_n_4;
  wire i___839_carry_i_21_n_5;
  wire i___839_carry_i_21_n_6;
  wire i___839_carry_i_22_n_0;
  wire i___839_carry_i_23_n_0;
  wire i___839_carry_i_24_n_0;
  wire i___839_carry_i_25_n_0;
  wire i___839_carry_i_25_n_4;
  wire i___839_carry_i_25_n_5;
  wire i___839_carry_i_25_n_6;
  wire i___839_carry_i_26_n_0;
  wire i___839_carry_i_27_n_0;
  wire i___839_carry_i_28_n_0;
  wire i___839_carry_i_29_n_0;
  wire i___839_carry_i_2_n_0;
  wire i___839_carry_i_2_n_4;
  wire i___839_carry_i_2_n_5;
  wire i___839_carry_i_2_n_6;
  wire i___839_carry_i_30_n_0;
  wire i___839_carry_i_31_n_0;
  wire i___839_carry_i_32_n_0;
  wire i___839_carry_i_33_n_0;
  wire i___839_carry_i_34_n_0;
  wire i___839_carry_i_35_n_0;
  wire i___839_carry_i_3_n_0;
  wire i___839_carry_i_4_n_0;
  wire i___839_carry_i_5_n_0;
  wire i___839_carry_i_6_n_0;
  wire i___839_carry_i_7_n_0;
  wire i___839_carry_i_7_n_4;
  wire i___839_carry_i_7_n_5;
  wire i___839_carry_i_7_n_6;
  wire i___839_carry_i_7_n_7;
  wire i___839_carry_i_8_n_0;
  wire i___839_carry_i_9_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_7__0_n_0;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[3] ;
  wire \i_reg_n_0_[4] ;
  wire \i_reg_n_0_[5] ;
  wire \i_reg_n_0_[6] ;
  wire \i_reg_n_0_[7] ;
  wire [0:0]out;
  wire \out[0]_i_1_n_0 ;
  wire \out[0]_i_2_n_0 ;
  wire \out[0]_i_3_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[1]_i_3_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[2]_i_4_n_0 ;
  wire \out[2]_i_5_n_0 ;
  wire \out[2]_i_6_n_0 ;
  wire \out[2]_i_7_n_0 ;
  wire \out[2]_i_8_n_0 ;
  wire \out[3]_i_10_n_0 ;
  wire \out[3]_i_11_n_0 ;
  wire \out[3]_i_12_n_0 ;
  wire \out[3]_i_13_n_0 ;
  wire \out[3]_i_1_n_0 ;
  wire \out[3]_i_4_n_0 ;
  wire \out[3]_i_6_n_0 ;
  wire \out[3]_i_7_n_0 ;
  wire \out[3]_i_8_n_0 ;
  wire \out[3]_i_9_n_0 ;
  wire \out[4]_i_1_n_0 ;
  wire \out[4]_i_3_n_0 ;
  wire \out[5]_i_2_n_0 ;
  wire \out[5]_i_3_n_0 ;
  wire \out[6]_i_1_n_0 ;
  wire \out[6]_i_3_n_0 ;
  wire \out[6]_i_4_n_0 ;
  wire \out[7]_i_100_n_0 ;
  wire \out[7]_i_101_n_0 ;
  wire \out[7]_i_102_n_0 ;
  wire \out[7]_i_103_n_0 ;
  wire \out[7]_i_104_n_0 ;
  wire \out[7]_i_105_n_0 ;
  wire \out[7]_i_106_n_0 ;
  wire \out[7]_i_107_n_0 ;
  wire \out[7]_i_108_n_0 ;
  wire \out[7]_i_109_n_0 ;
  wire \out[7]_i_110_n_0 ;
  wire \out[7]_i_111_n_0 ;
  wire \out[7]_i_112_n_0 ;
  wire \out[7]_i_113_n_0 ;
  wire \out[7]_i_114_n_0 ;
  wire \out[7]_i_117_n_0 ;
  wire \out[7]_i_118_n_0 ;
  wire \out[7]_i_119_n_0 ;
  wire \out[7]_i_120_n_0 ;
  wire \out[7]_i_122_n_0 ;
  wire \out[7]_i_123_n_0 ;
  wire \out[7]_i_124_n_0 ;
  wire \out[7]_i_125_n_0 ;
  wire \out[7]_i_127_n_0 ;
  wire \out[7]_i_128_n_0 ;
  wire \out[7]_i_129_n_0 ;
  wire \out[7]_i_130_n_0 ;
  wire \out[7]_i_131_n_0 ;
  wire \out[7]_i_132_n_0 ;
  wire \out[7]_i_133_n_0 ;
  wire \out[7]_i_134_n_0 ;
  wire \out[7]_i_135_n_0 ;
  wire \out[7]_i_136_n_0 ;
  wire \out[7]_i_137_n_0 ;
  wire \out[7]_i_138_n_0 ;
  wire \out[7]_i_139_n_0 ;
  wire \out[7]_i_142_n_0 ;
  wire \out[7]_i_143_n_0 ;
  wire \out[7]_i_144_n_0 ;
  wire \out[7]_i_145_n_0 ;
  wire \out[7]_i_147_n_0 ;
  wire \out[7]_i_148_n_0 ;
  wire \out[7]_i_149_n_0 ;
  wire \out[7]_i_14_n_0 ;
  wire \out[7]_i_150_n_0 ;
  wire \out[7]_i_152_n_0 ;
  wire \out[7]_i_153_n_0 ;
  wire \out[7]_i_154_n_0 ;
  wire \out[7]_i_155_n_0 ;
  wire \out[7]_i_156_n_0 ;
  wire \out[7]_i_157_n_0 ;
  wire \out[7]_i_158_n_0 ;
  wire \out[7]_i_15_n_0 ;
  wire \out[7]_i_161_n_0 ;
  wire \out[7]_i_162_n_0 ;
  wire \out[7]_i_163_n_0 ;
  wire \out[7]_i_164_n_0 ;
  wire \out[7]_i_166_n_0 ;
  wire \out[7]_i_167_n_0 ;
  wire \out[7]_i_168_n_0 ;
  wire \out[7]_i_169_n_0 ;
  wire \out[7]_i_16_n_0 ;
  wire \out[7]_i_171_n_0 ;
  wire \out[7]_i_172_n_0 ;
  wire \out[7]_i_173_n_0 ;
  wire \out[7]_i_174_n_0 ;
  wire \out[7]_i_175_n_0 ;
  wire \out[7]_i_176_n_0 ;
  wire \out[7]_i_177_n_0 ;
  wire \out[7]_i_17_n_0 ;
  wire \out[7]_i_180_n_0 ;
  wire \out[7]_i_181_n_0 ;
  wire \out[7]_i_182_n_0 ;
  wire \out[7]_i_183_n_0 ;
  wire \out[7]_i_185_n_0 ;
  wire \out[7]_i_186_n_0 ;
  wire \out[7]_i_187_n_0 ;
  wire \out[7]_i_188_n_0 ;
  wire \out[7]_i_190_n_0 ;
  wire \out[7]_i_191_n_0 ;
  wire \out[7]_i_192_n_0 ;
  wire \out[7]_i_193_n_0 ;
  wire \out[7]_i_194_n_0 ;
  wire \out[7]_i_195_n_0 ;
  wire \out[7]_i_196_n_0 ;
  wire \out[7]_i_197_n_0 ;
  wire \out[7]_i_198_n_0 ;
  wire \out[7]_i_199_n_0 ;
  wire \out[7]_i_19_n_0 ;
  wire \out[7]_i_1_n_0 ;
  wire \out[7]_i_200_n_0 ;
  wire \out[7]_i_201_n_0 ;
  wire \out[7]_i_202_n_0 ;
  wire \out[7]_i_203_n_0 ;
  wire \out[7]_i_204_n_0 ;
  wire \out[7]_i_205_n_0 ;
  wire \out[7]_i_206_n_0 ;
  wire \out[7]_i_207_n_0 ;
  wire \out[7]_i_208_n_0 ;
  wire \out[7]_i_209_n_0 ;
  wire \out[7]_i_20_n_0 ;
  wire \out[7]_i_210_n_0 ;
  wire \out[7]_i_211_n_0 ;
  wire \out[7]_i_21_n_0 ;
  wire \out[7]_i_22_n_0 ;
  wire \out[7]_i_24_n_0 ;
  wire \out[7]_i_25_n_0 ;
  wire \out[7]_i_26_n_0 ;
  wire \out[7]_i_27_n_0 ;
  wire \out[7]_i_29_n_0 ;
  wire \out[7]_i_2_n_0 ;
  wire \out[7]_i_30_n_0 ;
  wire \out[7]_i_31_n_0 ;
  wire \out[7]_i_32_n_0 ;
  wire \out[7]_i_35_n_0 ;
  wire \out[7]_i_36_n_0 ;
  wire \out[7]_i_37_n_0 ;
  wire \out[7]_i_38_n_0 ;
  wire \out[7]_i_3_n_0 ;
  wire \out[7]_i_41_n_0 ;
  wire \out[7]_i_42_n_0 ;
  wire \out[7]_i_43_n_0 ;
  wire \out[7]_i_44_n_0 ;
  wire \out[7]_i_46_n_0 ;
  wire \out[7]_i_47_n_0 ;
  wire \out[7]_i_48_n_0 ;
  wire \out[7]_i_49_n_0 ;
  wire \out[7]_i_4_n_0 ;
  wire \out[7]_i_51_n_0 ;
  wire \out[7]_i_52_n_0 ;
  wire \out[7]_i_53_n_0 ;
  wire \out[7]_i_54_n_0 ;
  wire \out[7]_i_56_n_0 ;
  wire \out[7]_i_57_n_0 ;
  wire \out[7]_i_58_n_0 ;
  wire \out[7]_i_59_n_0 ;
  wire \out[7]_i_5_n_0 ;
  wire \out[7]_i_61_n_0 ;
  wire \out[7]_i_62_n_0 ;
  wire \out[7]_i_63_n_0 ;
  wire \out[7]_i_64_n_0 ;
  wire \out[7]_i_67_n_0 ;
  wire \out[7]_i_68_n_0 ;
  wire \out[7]_i_69_n_0 ;
  wire \out[7]_i_6_n_0 ;
  wire \out[7]_i_70_n_0 ;
  wire \out[7]_i_72_n_0 ;
  wire \out[7]_i_73_n_0 ;
  wire \out[7]_i_74_n_0 ;
  wire \out[7]_i_75_n_0 ;
  wire \out[7]_i_78_n_0 ;
  wire \out[7]_i_79_n_0 ;
  wire \out[7]_i_80_n_0 ;
  wire \out[7]_i_81_n_0 ;
  wire \out[7]_i_83_n_0 ;
  wire \out[7]_i_84_n_0 ;
  wire \out[7]_i_85_n_0 ;
  wire \out[7]_i_86_n_0 ;
  wire \out[7]_i_88_n_0 ;
  wire \out[7]_i_89_n_0 ;
  wire \out[7]_i_90_n_0 ;
  wire \out[7]_i_91_n_0 ;
  wire \out[7]_i_93_n_0 ;
  wire \out[7]_i_94_n_0 ;
  wire \out[7]_i_95_n_0 ;
  wire \out[7]_i_96_n_0 ;
  wire \out[7]_i_98_n_0 ;
  wire \out[7]_i_99_n_0 ;
  wire \out_reg[2]_i_2_n_0 ;
  wire \out_reg[2]_i_2_n_5 ;
  wire \out_reg[2]_i_2_n_6 ;
  wire \out_reg[2]_i_2_n_7 ;
  wire \out_reg[3]_i_2_n_0 ;
  wire \out_reg[3]_i_2_n_5 ;
  wire \out_reg[3]_i_2_n_6 ;
  wire \out_reg[3]_i_2_n_7 ;
  wire \out_reg[3]_i_5_n_0 ;
  wire \out_reg[3]_i_5_n_4 ;
  wire \out_reg[3]_i_5_n_5 ;
  wire \out_reg[3]_i_5_n_6 ;
  wire \out_reg[3]_i_5_n_7 ;
  wire \out_reg[5]_i_1_n_0 ;
  wire \out_reg[6]_i_2_n_0 ;
  wire \out_reg[7]_i_10_n_0 ;
  wire \out_reg[7]_i_10_n_5 ;
  wire \out_reg[7]_i_10_n_6 ;
  wire \out_reg[7]_i_10_n_7 ;
  wire \out_reg[7]_i_115_n_0 ;
  wire \out_reg[7]_i_115_n_5 ;
  wire \out_reg[7]_i_115_n_6 ;
  wire \out_reg[7]_i_115_n_7 ;
  wire \out_reg[7]_i_116_n_0 ;
  wire \out_reg[7]_i_116_n_4 ;
  wire \out_reg[7]_i_116_n_5 ;
  wire \out_reg[7]_i_116_n_6 ;
  wire \out_reg[7]_i_116_n_7 ;
  wire \out_reg[7]_i_11_n_0 ;
  wire \out_reg[7]_i_11_n_4 ;
  wire \out_reg[7]_i_11_n_5 ;
  wire \out_reg[7]_i_11_n_6 ;
  wire \out_reg[7]_i_11_n_7 ;
  wire \out_reg[7]_i_121_n_0 ;
  wire \out_reg[7]_i_121_n_4 ;
  wire \out_reg[7]_i_121_n_5 ;
  wire \out_reg[7]_i_121_n_6 ;
  wire \out_reg[7]_i_121_n_7 ;
  wire \out_reg[7]_i_126_n_0 ;
  wire \out_reg[7]_i_126_n_4 ;
  wire \out_reg[7]_i_126_n_5 ;
  wire \out_reg[7]_i_126_n_6 ;
  wire \out_reg[7]_i_12_n_0 ;
  wire \out_reg[7]_i_12_n_5 ;
  wire \out_reg[7]_i_12_n_6 ;
  wire \out_reg[7]_i_12_n_7 ;
  wire \out_reg[7]_i_13_n_0 ;
  wire \out_reg[7]_i_13_n_4 ;
  wire \out_reg[7]_i_13_n_5 ;
  wire \out_reg[7]_i_13_n_6 ;
  wire \out_reg[7]_i_13_n_7 ;
  wire \out_reg[7]_i_140_n_0 ;
  wire \out_reg[7]_i_140_n_5 ;
  wire \out_reg[7]_i_140_n_6 ;
  wire \out_reg[7]_i_140_n_7 ;
  wire \out_reg[7]_i_141_n_0 ;
  wire \out_reg[7]_i_141_n_4 ;
  wire \out_reg[7]_i_141_n_5 ;
  wire \out_reg[7]_i_141_n_6 ;
  wire \out_reg[7]_i_141_n_7 ;
  wire \out_reg[7]_i_146_n_0 ;
  wire \out_reg[7]_i_146_n_4 ;
  wire \out_reg[7]_i_146_n_5 ;
  wire \out_reg[7]_i_146_n_6 ;
  wire \out_reg[7]_i_146_n_7 ;
  wire \out_reg[7]_i_151_n_0 ;
  wire \out_reg[7]_i_151_n_4 ;
  wire \out_reg[7]_i_151_n_5 ;
  wire \out_reg[7]_i_151_n_6 ;
  wire \out_reg[7]_i_159_n_0 ;
  wire \out_reg[7]_i_159_n_5 ;
  wire \out_reg[7]_i_159_n_6 ;
  wire \out_reg[7]_i_159_n_7 ;
  wire \out_reg[7]_i_160_n_0 ;
  wire \out_reg[7]_i_160_n_4 ;
  wire \out_reg[7]_i_160_n_5 ;
  wire \out_reg[7]_i_160_n_6 ;
  wire \out_reg[7]_i_160_n_7 ;
  wire \out_reg[7]_i_165_n_0 ;
  wire \out_reg[7]_i_165_n_4 ;
  wire \out_reg[7]_i_165_n_5 ;
  wire \out_reg[7]_i_165_n_6 ;
  wire \out_reg[7]_i_165_n_7 ;
  wire \out_reg[7]_i_170_n_0 ;
  wire \out_reg[7]_i_170_n_4 ;
  wire \out_reg[7]_i_170_n_5 ;
  wire \out_reg[7]_i_170_n_6 ;
  wire \out_reg[7]_i_178_n_0 ;
  wire \out_reg[7]_i_178_n_5 ;
  wire \out_reg[7]_i_178_n_6 ;
  wire \out_reg[7]_i_178_n_7 ;
  wire \out_reg[7]_i_179_n_0 ;
  wire \out_reg[7]_i_179_n_4 ;
  wire \out_reg[7]_i_179_n_5 ;
  wire \out_reg[7]_i_179_n_6 ;
  wire \out_reg[7]_i_179_n_7 ;
  wire \out_reg[7]_i_184_n_0 ;
  wire \out_reg[7]_i_184_n_4 ;
  wire \out_reg[7]_i_184_n_5 ;
  wire \out_reg[7]_i_184_n_6 ;
  wire \out_reg[7]_i_184_n_7 ;
  wire \out_reg[7]_i_189_n_0 ;
  wire \out_reg[7]_i_189_n_4 ;
  wire \out_reg[7]_i_189_n_5 ;
  wire \out_reg[7]_i_189_n_6 ;
  wire \out_reg[7]_i_18_n_0 ;
  wire \out_reg[7]_i_18_n_4 ;
  wire \out_reg[7]_i_18_n_5 ;
  wire \out_reg[7]_i_18_n_6 ;
  wire \out_reg[7]_i_18_n_7 ;
  wire \out_reg[7]_i_23_n_0 ;
  wire \out_reg[7]_i_23_n_4 ;
  wire \out_reg[7]_i_23_n_5 ;
  wire \out_reg[7]_i_23_n_6 ;
  wire \out_reg[7]_i_23_n_7 ;
  wire \out_reg[7]_i_28_n_0 ;
  wire \out_reg[7]_i_28_n_4 ;
  wire \out_reg[7]_i_28_n_5 ;
  wire \out_reg[7]_i_28_n_6 ;
  wire \out_reg[7]_i_28_n_7 ;
  wire \out_reg[7]_i_33_n_0 ;
  wire \out_reg[7]_i_33_n_4 ;
  wire \out_reg[7]_i_33_n_5 ;
  wire \out_reg[7]_i_33_n_6 ;
  wire \out_reg[7]_i_33_n_7 ;
  wire \out_reg[7]_i_34_n_0 ;
  wire \out_reg[7]_i_34_n_4 ;
  wire \out_reg[7]_i_34_n_5 ;
  wire \out_reg[7]_i_34_n_6 ;
  wire \out_reg[7]_i_34_n_7 ;
  wire \out_reg[7]_i_39_n_0 ;
  wire \out_reg[7]_i_39_n_5 ;
  wire \out_reg[7]_i_39_n_6 ;
  wire \out_reg[7]_i_39_n_7 ;
  wire \out_reg[7]_i_40_n_0 ;
  wire \out_reg[7]_i_40_n_4 ;
  wire \out_reg[7]_i_40_n_5 ;
  wire \out_reg[7]_i_40_n_6 ;
  wire \out_reg[7]_i_40_n_7 ;
  wire \out_reg[7]_i_45_n_0 ;
  wire \out_reg[7]_i_45_n_4 ;
  wire \out_reg[7]_i_45_n_5 ;
  wire \out_reg[7]_i_45_n_6 ;
  wire \out_reg[7]_i_45_n_7 ;
  wire \out_reg[7]_i_50_n_0 ;
  wire \out_reg[7]_i_50_n_4 ;
  wire \out_reg[7]_i_50_n_5 ;
  wire \out_reg[7]_i_50_n_6 ;
  wire \out_reg[7]_i_50_n_7 ;
  wire \out_reg[7]_i_55_n_0 ;
  wire \out_reg[7]_i_55_n_4 ;
  wire \out_reg[7]_i_55_n_5 ;
  wire \out_reg[7]_i_55_n_6 ;
  wire \out_reg[7]_i_55_n_7 ;
  wire \out_reg[7]_i_60_n_0 ;
  wire \out_reg[7]_i_60_n_4 ;
  wire \out_reg[7]_i_60_n_5 ;
  wire \out_reg[7]_i_60_n_6 ;
  wire \out_reg[7]_i_60_n_7 ;
  wire \out_reg[7]_i_65_n_0 ;
  wire \out_reg[7]_i_65_n_4 ;
  wire \out_reg[7]_i_65_n_5 ;
  wire \out_reg[7]_i_65_n_6 ;
  wire \out_reg[7]_i_66_n_0 ;
  wire \out_reg[7]_i_66_n_4 ;
  wire \out_reg[7]_i_66_n_5 ;
  wire \out_reg[7]_i_66_n_6 ;
  wire \out_reg[7]_i_71_n_0 ;
  wire \out_reg[7]_i_71_n_4 ;
  wire \out_reg[7]_i_71_n_5 ;
  wire \out_reg[7]_i_71_n_6 ;
  wire \out_reg[7]_i_76_n_0 ;
  wire \out_reg[7]_i_76_n_5 ;
  wire \out_reg[7]_i_76_n_6 ;
  wire \out_reg[7]_i_76_n_7 ;
  wire \out_reg[7]_i_77_n_0 ;
  wire \out_reg[7]_i_77_n_4 ;
  wire \out_reg[7]_i_77_n_5 ;
  wire \out_reg[7]_i_77_n_6 ;
  wire \out_reg[7]_i_77_n_7 ;
  wire \out_reg[7]_i_7_n_0 ;
  wire \out_reg[7]_i_7_n_5 ;
  wire \out_reg[7]_i_7_n_6 ;
  wire \out_reg[7]_i_7_n_7 ;
  wire \out_reg[7]_i_82_n_0 ;
  wire \out_reg[7]_i_82_n_4 ;
  wire \out_reg[7]_i_82_n_5 ;
  wire \out_reg[7]_i_82_n_6 ;
  wire \out_reg[7]_i_82_n_7 ;
  wire \out_reg[7]_i_87_n_0 ;
  wire \out_reg[7]_i_87_n_4 ;
  wire \out_reg[7]_i_87_n_5 ;
  wire \out_reg[7]_i_87_n_6 ;
  wire \out_reg[7]_i_8_n_0 ;
  wire \out_reg[7]_i_8_n_5 ;
  wire \out_reg[7]_i_8_n_6 ;
  wire \out_reg[7]_i_8_n_7 ;
  wire \out_reg[7]_i_92_n_0 ;
  wire \out_reg[7]_i_92_n_4 ;
  wire \out_reg[7]_i_92_n_5 ;
  wire \out_reg[7]_i_92_n_6 ;
  wire \out_reg[7]_i_97_n_0 ;
  wire \out_reg[7]_i_97_n_4 ;
  wire \out_reg[7]_i_97_n_5 ;
  wire \out_reg[7]_i_97_n_6 ;
  wire \out_reg[7]_i_9_n_0 ;
  wire \out_reg[7]_i_9_n_5 ;
  wire \out_reg[7]_i_9_n_6 ;
  wire \out_reg[7]_i_9_n_7 ;
  wire \p_0_out_inferred__0/out[1]_i_2_n_0 ;
  wire \p_0_out_inferred__0/out[2]_i_3_n_0 ;
  wire \p_0_out_inferred__0/out[3]_i_3_n_0 ;
  wire \p_0_out_inferred__0/out[4]_i_2_n_0 ;
  wire \p_0_out_inferred__0/out[5]_i_4_n_0 ;
  wire reset_IBUF;
  wire \state_reg2_inferred__0/i___839_carry__0_n_0 ;
  wire \state_reg2_inferred__0/i___839_carry__1_n_0 ;
  wire \state_reg2_inferred__0/i___839_carry__2_n_1 ;
  wire \state_reg2_inferred__0/i___839_carry_n_0 ;
  wire \state_reg2_inferred__0/i__carry__0_n_0 ;
  wire \state_reg2_inferred__0/i__carry__0_n_4 ;
  wire \state_reg2_inferred__0/i__carry__0_n_5 ;
  wire \state_reg2_inferred__0/i__carry__0_n_6 ;
  wire \state_reg2_inferred__0/i__carry__0_n_7 ;
  wire \state_reg2_inferred__0/i__carry__1_n_0 ;
  wire \state_reg2_inferred__0/i__carry__1_n_4 ;
  wire \state_reg2_inferred__0/i__carry__1_n_5 ;
  wire \state_reg2_inferred__0/i__carry__1_n_6 ;
  wire \state_reg2_inferred__0/i__carry__1_n_7 ;
  wire \state_reg2_inferred__0/i__carry__2_n_1 ;
  wire \state_reg2_inferred__0/i__carry__2_n_6 ;
  wire \state_reg2_inferred__0/i__carry__2_n_7 ;
  wire \state_reg2_inferred__0/i__carry_n_0 ;
  wire \state_reg2_inferred__0/i__carry_n_4 ;
  wire \state_reg2_inferred__0/i__carry_n_5 ;
  wire \state_reg2_inferred__0/i__carry_n_6 ;
  wire \state_reg2_inferred__0/i__carry_n_7 ;
  wire \state_reg[0]_i_1_n_0 ;
  wire \state_reg[0]_i_2_n_0 ;
  wire \state_reg[0]_i_3_n_0 ;
  wire \state_reg[0]_i_4_n_0 ;
  wire \state_reg[0]_i_5_n_0 ;
  wire \state_reg[1]_i_1_n_0 ;
  wire \state_reg[2]_i_10_n_0 ;
  wire \state_reg[2]_i_11_n_0 ;
  wire \state_reg[2]_i_1_n_0 ;
  wire \state_reg[2]_i_2_n_0 ;
  wire \state_reg[2]_i_3_n_0 ;
  wire \state_reg[2]_i_4_n_0 ;
  wire \state_reg[2]_i_5_n_0 ;
  wire \state_reg[2]_i_6_n_0 ;
  wire \state_reg[2]_i_7_n_0 ;
  wire \state_reg[2]_i_8_n_0 ;
  wire \state_reg[2]_i_9_n_0 ;
  wire \state_reg_reg_n_0_[0] ;
  wire \state_reg_reg_n_0_[1] ;
  wire \state_reg_reg_n_0_[2] ;
  wire tick_reg;
  wire tx_start;
  wire tx_start_aux_i_1_n_0;
  wire z_flag_i_1_n_0;
  wire z_flag_i_2_n_0;
  wire z_flag_i_3_n_0;
  wire z_flag_reg_n_0;
  wire [2:0]NLW_aux0_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__0_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__0_i_9_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__1_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__10_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__11_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__12_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__13_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__13_O_UNCONNECTED;
  wire [2:0]NLW_aux0__14_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__15_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__16_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__17_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__18_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__18_O_UNCONNECTED;
  wire [2:0]NLW_aux0__19_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__1_i_9_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__2_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__20_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__21_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__22_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__23_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__23_O_UNCONNECTED;
  wire [2:0]NLW_aux0__24_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__25_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__26_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__27_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__28_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__28_O_UNCONNECTED;
  wire [2:0]NLW_aux0__29_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__2_i_9_CO_UNCONNECTED;
  wire [3:3]NLW_aux0__2_i_9_O_UNCONNECTED;
  wire [3:0]NLW_aux0__3_CO_UNCONNECTED;
  wire [3:2]NLW_aux0__3_O_UNCONNECTED;
  wire [2:0]NLW_aux0__30_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__31_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__32_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__33_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__33_O_UNCONNECTED;
  wire [2:0]NLW_aux0__34_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__35_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__36_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__37_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__38_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__38_O_UNCONNECTED;
  wire [2:0]NLW_aux0__39_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__4_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__40_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__41_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__42_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__43_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__43_O_UNCONNECTED;
  wire [2:0]NLW_aux0__44_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__45_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__46_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__47_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__48_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__48_O_UNCONNECTED;
  wire [2:0]NLW_aux0__49_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__5_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__50_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__51_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__52_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__53_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__53_O_UNCONNECTED;
  wire [2:0]NLW_aux0__54_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__55_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__56_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__57_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__58_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__58_O_UNCONNECTED;
  wire [2:0]NLW_aux0__59_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__6_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__60_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__61_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__62_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__63_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__63_O_UNCONNECTED;
  wire [2:0]NLW_aux0__64_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__65_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__66_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__67_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__68_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__68_O_UNCONNECTED;
  wire [2:0]NLW_aux0__69_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__7_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__70_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__71_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__72_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__73_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__73_O_UNCONNECTED;
  wire [2:0]NLW_aux0__74_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__75_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__76_CO_UNCONNECTED;
  wire [2:0]NLW_aux0__77_CO_UNCONNECTED;
  wire [3:3]NLW_aux0__77_O_UNCONNECTED;
  wire [3:0]NLW_aux0__78_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__78_O_UNCONNECTED;
  wire [3:0]NLW_aux0__8_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__8_O_UNCONNECTED;
  wire [2:0]NLW_aux0__9_CO_UNCONNECTED;
  wire [2:0]NLW_aux0_i_8_CO_UNCONNECTED;
  wire [2:0]NLW_i___839_carry__0_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_i___839_carry__0_i_6_CO_UNCONNECTED;
  wire [2:0]NLW_i___839_carry__1_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_i___839_carry_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_i___839_carry_i_1_O_UNCONNECTED;
  wire [2:0]NLW_i___839_carry_i_12_CO_UNCONNECTED;
  wire [0:0]NLW_i___839_carry_i_12_O_UNCONNECTED;
  wire [2:0]NLW_i___839_carry_i_16_CO_UNCONNECTED;
  wire [2:0]NLW_i___839_carry_i_2_CO_UNCONNECTED;
  wire [0:0]NLW_i___839_carry_i_2_O_UNCONNECTED;
  wire [2:0]NLW_i___839_carry_i_21_CO_UNCONNECTED;
  wire [0:0]NLW_i___839_carry_i_21_O_UNCONNECTED;
  wire [2:0]NLW_i___839_carry_i_25_CO_UNCONNECTED;
  wire [0:0]NLW_i___839_carry_i_25_O_UNCONNECTED;
  wire [2:0]NLW_i___839_carry_i_7_CO_UNCONNECTED;
  wire [2:0]\NLW_out_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[2]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[3]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[3]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[3]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_115_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_115_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_116_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_12_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_121_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_126_CO_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_i_126_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_13_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_140_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_140_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_141_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_146_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_151_CO_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_i_151_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_159_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_159_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_160_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_165_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_170_CO_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_i_170_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_178_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_178_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_179_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_184_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_189_CO_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_i_189_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_23_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_28_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_33_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_34_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_39_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_39_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_40_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_45_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_50_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_55_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_60_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_65_CO_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_i_65_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_66_CO_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_i_66_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_71_CO_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_i_71_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_76_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_76_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_77_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_82_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_87_CO_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_i_87_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_i_9_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_92_CO_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_i_92_O_UNCONNECTED ;
  wire [2:0]\NLW_out_reg[7]_i_97_CO_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_i_97_O_UNCONNECTED ;
  wire [2:0]\NLW_state_reg2_inferred__0/i___839_carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_state_reg2_inferred__0/i___839_carry_O_UNCONNECTED ;
  wire [2:0]\NLW_state_reg2_inferred__0/i___839_carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_state_reg2_inferred__0/i___839_carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_state_reg2_inferred__0/i___839_carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_state_reg2_inferred__0/i___839_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_state_reg2_inferred__0/i___839_carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_state_reg2_inferred__0/i___839_carry__2_O_UNCONNECTED ;
  wire [2:0]\NLW_state_reg2_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW_state_reg2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_state_reg2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_state_reg2_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_state_reg2_inferred__0/i__carry__2_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0B08)) 
    acc_sended_i_1
       (.I0(tick_reg),
        .I1(acc_sended_i_2_n_0),
        .I2(acc_sended_i_3_n_0),
        .I3(acc_sended),
        .O(acc_sended_i_1_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    acc_sended_i_2
       (.I0(\state_reg_reg_n_0_[0] ),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\state_reg_reg_n_0_[1] ),
        .I3(reset_IBUF),
        .I4(tick_reg),
        .I5(\aux[15]_i_3_n_0 ),
        .O(acc_sended_i_2_n_0));
  LUT5 #(
    .INIT(32'h00004000)) 
    acc_sended_i_3
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(first),
        .I3(finish_program),
        .I4(\state_reg_reg_n_0_[0] ),
        .O(acc_sended_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    acc_sended_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(acc_sended_i_1_n_0),
        .Q(acc_sended));
  CARRY4 aux0
       (.CI(1'b0),
        .CO({aux0_n_0,NLW_aux0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({aux0_i_1_n_0,aux0_i_2_n_0,aux0_i_3_n_0,1'b1}),
        .O({aux0_n_4,aux0_n_5,aux0_n_6,aux0_n_7}),
        .S({aux0_i_4_n_0,aux0_i_5_n_0,aux0_i_6_n_0,aux0_i_7_n_0}));
  CARRY4 aux0__0
       (.CI(aux0_n_0),
        .CO({aux0__0_n_0,NLW_aux0__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__0_i_1_n_0,aux0__0_i_2_n_0,aux0__0_i_3_n_0,aux0__0_i_4_n_0}),
        .O({aux0__0_n_4,aux0__0_n_5,aux0__0_n_6,aux0__0_n_7}),
        .S({aux0__0_i_5_n_0,aux0__0_i_6_n_0,aux0__0_i_7_n_0,aux0__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__0_i_1
       (.I0(aux1[7]),
        .O(aux0__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__0_i_10
       (.I0(\div_reg_n_0_[8] ),
        .I1(\div_reg_n_0_[6] ),
        .O(aux0__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__0_i_11
       (.I0(\div_reg_n_0_[7] ),
        .I1(\div_reg_n_0_[5] ),
        .O(aux0__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__0_i_12
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[4] ),
        .O(aux0__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__0_i_13
       (.I0(\div_reg_n_0_[5] ),
        .I1(\div_reg_n_0_[3] ),
        .O(aux0__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__0_i_2
       (.I0(aux1[6]),
        .O(aux0__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__0_i_3
       (.I0(aux1[5]),
        .O(aux0__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__0_i_4
       (.I0(aux1[4]),
        .O(aux0__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__0_i_5
       (.I0(aux1[7]),
        .O(aux0__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__0_i_6
       (.I0(aux1[6]),
        .O(aux0__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__0_i_7
       (.I0(aux1[5]),
        .O(aux0__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__0_i_8
       (.I0(aux1[4]),
        .O(aux0__0_i_8_n_0));
  CARRY4 aux0__0_i_9
       (.CI(aux0_i_8_n_0),
        .CO({aux0__0_i_9_n_0,NLW_aux0__0_i_9_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\div_reg_n_0_[8] ,\div_reg_n_0_[7] ,\div_reg_n_0_[6] ,\div_reg_n_0_[5] }),
        .O(aux1[9:6]),
        .S({aux0__0_i_10_n_0,aux0__0_i_11_n_0,aux0__0_i_12_n_0,aux0__0_i_13_n_0}));
  CARRY4 aux0__1
       (.CI(aux0__0_n_0),
        .CO({aux0__1_n_0,NLW_aux0__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__1_i_1_n_0,aux0__1_i_2_n_0,aux0__1_i_3_n_0,aux0__1_i_4_n_0}),
        .O({aux0__1_n_4,aux0__1_n_5,aux0__1_n_6,aux0__1_n_7}),
        .S({aux0__1_i_5_n_0,aux0__1_i_6_n_0,aux0__1_i_7_n_0,aux0__1_i_8_n_0}));
  CARRY4 aux0__10
       (.CI(aux0__9_n_0),
        .CO({aux0__10_n_0,NLW_aux0__10_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__5_n_5,aux0__5_n_6,aux0__5_n_7,aux0__4_n_4}),
        .O({aux0__10_n_4,aux0__10_n_5,aux0__10_n_6,aux0__10_n_7}),
        .S({aux0__10_i_1_n_0,aux0__10_i_2_n_0,aux0__10_i_3_n_0,aux0__10_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__10_i_1
       (.I0(aux0__8_n_2),
        .I1(aux1[8]),
        .I2(aux0__5_n_5),
        .O(aux0__10_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__10_i_2
       (.I0(aux0__8_n_2),
        .I1(aux1[7]),
        .I2(aux0__5_n_6),
        .O(aux0__10_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__10_i_3
       (.I0(aux0__8_n_2),
        .I1(aux1[6]),
        .I2(aux0__5_n_7),
        .O(aux0__10_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__10_i_4
       (.I0(aux0__8_n_2),
        .I1(aux1[5]),
        .I2(aux0__4_n_4),
        .O(aux0__10_i_4_n_0));
  CARRY4 aux0__11
       (.CI(aux0__10_n_0),
        .CO({aux0__11_n_0,NLW_aux0__11_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__6_n_5,aux0__6_n_6,aux0__6_n_7,aux0__5_n_4}),
        .O({aux0__11_n_4,aux0__11_n_5,aux0__11_n_6,aux0__11_n_7}),
        .S({aux0__11_i_1_n_0,aux0__11_i_2_n_0,aux0__11_i_3_n_0,aux0__11_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__11_i_1
       (.I0(aux0__8_n_2),
        .I1(aux1[12]),
        .I2(aux0__6_n_5),
        .O(aux0__11_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__11_i_2
       (.I0(aux0__8_n_2),
        .I1(aux1[11]),
        .I2(aux0__6_n_6),
        .O(aux0__11_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__11_i_3
       (.I0(aux0__8_n_2),
        .I1(aux1[10]),
        .I2(aux0__6_n_7),
        .O(aux0__11_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__11_i_4
       (.I0(aux0__8_n_2),
        .I1(aux1[9]),
        .I2(aux0__5_n_4),
        .O(aux0__11_i_4_n_0));
  CARRY4 aux0__12
       (.CI(aux0__11_n_0),
        .CO({aux0__12_n_0,NLW_aux0__12_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__7_n_5,aux0__7_n_6,aux0__7_n_7,aux0__6_n_4}),
        .O({aux0__12_n_4,aux0__12_n_5,aux0__12_n_6,aux0__12_n_7}),
        .S({aux0__12_i_1_n_0,aux0__12_i_2_n_0,aux0__12_i_3_n_0,aux0__12_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__12_i_1
       (.I0(aux0__8_n_2),
        .I1(aux1[16]),
        .I2(aux0__7_n_5),
        .O(aux0__12_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__12_i_2
       (.I0(aux0__8_n_2),
        .I1(aux1[15]),
        .I2(aux0__7_n_6),
        .O(aux0__12_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__12_i_3
       (.I0(aux0__8_n_2),
        .I1(aux1[14]),
        .I2(aux0__7_n_7),
        .O(aux0__12_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__12_i_4
       (.I0(aux0__8_n_2),
        .I1(aux1[13]),
        .I2(aux0__6_n_4),
        .O(aux0__12_i_4_n_0));
  CARRY4 aux0__13
       (.CI(aux0__12_n_0),
        .CO({NLW_aux0__13_CO_UNCONNECTED[3:2],aux0__13_n_2,NLW_aux0__13_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__8_n_2,aux0__7_n_4}),
        .O({NLW_aux0__13_O_UNCONNECTED[3:1],aux0__13_n_7}),
        .S({1'b0,1'b0,aux0__13_i_1_n_0,aux0__13_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__13_i_1
       (.I0(aux0__8_n_2),
        .I1(aux0__8_n_7),
        .O(aux0__13_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__13_i_2
       (.I0(aux0__8_n_2),
        .I1(aux1[17]),
        .I2(aux0__7_n_4),
        .O(aux0__13_i_2_n_0));
  CARRY4 aux0__14
       (.CI(1'b0),
        .CO({aux0__14_n_0,NLW_aux0__14_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__13_n_2),
        .DI({aux0__9_n_5,aux0__9_n_6,aux0__9_n_7,\aux_reg_n_0_[13] }),
        .O({aux0__14_n_4,aux0__14_n_5,aux0__14_n_6,aux0__14_n_7}),
        .S({aux0__14_i_2_n_0,aux0__14_i_3_n_0,aux0__14_i_4_n_0,aux0__14_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__14_i_2
       (.I0(aux0__13_n_2),
        .I1(aux1[4]),
        .I2(aux0__9_n_5),
        .O(aux0__14_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__14_i_3
       (.I0(aux0__13_n_2),
        .I1(aux1[3]),
        .I2(aux0__9_n_6),
        .O(aux0__14_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__14_i_4
       (.I0(aux0__13_n_2),
        .I1(aux1[2]),
        .I2(aux0__9_n_7),
        .O(aux0__14_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__14_i_5
       (.I0(aux0__13_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[13] ),
        .O(aux0__14_i_5_n_0));
  CARRY4 aux0__15
       (.CI(aux0__14_n_0),
        .CO({aux0__15_n_0,NLW_aux0__15_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__10_n_5,aux0__10_n_6,aux0__10_n_7,aux0__9_n_4}),
        .O({aux0__15_n_4,aux0__15_n_5,aux0__15_n_6,aux0__15_n_7}),
        .S({aux0__15_i_1_n_0,aux0__15_i_2_n_0,aux0__15_i_3_n_0,aux0__15_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__15_i_1
       (.I0(aux0__13_n_2),
        .I1(aux1[8]),
        .I2(aux0__10_n_5),
        .O(aux0__15_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__15_i_2
       (.I0(aux0__13_n_2),
        .I1(aux1[7]),
        .I2(aux0__10_n_6),
        .O(aux0__15_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__15_i_3
       (.I0(aux0__13_n_2),
        .I1(aux1[6]),
        .I2(aux0__10_n_7),
        .O(aux0__15_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__15_i_4
       (.I0(aux0__13_n_2),
        .I1(aux1[5]),
        .I2(aux0__9_n_4),
        .O(aux0__15_i_4_n_0));
  CARRY4 aux0__16
       (.CI(aux0__15_n_0),
        .CO({aux0__16_n_0,NLW_aux0__16_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__11_n_5,aux0__11_n_6,aux0__11_n_7,aux0__10_n_4}),
        .O({aux0__16_n_4,aux0__16_n_5,aux0__16_n_6,aux0__16_n_7}),
        .S({aux0__16_i_1_n_0,aux0__16_i_2_n_0,aux0__16_i_3_n_0,aux0__16_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__16_i_1
       (.I0(aux0__13_n_2),
        .I1(aux1[12]),
        .I2(aux0__11_n_5),
        .O(aux0__16_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__16_i_2
       (.I0(aux0__13_n_2),
        .I1(aux1[11]),
        .I2(aux0__11_n_6),
        .O(aux0__16_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__16_i_3
       (.I0(aux0__13_n_2),
        .I1(aux1[10]),
        .I2(aux0__11_n_7),
        .O(aux0__16_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__16_i_4
       (.I0(aux0__13_n_2),
        .I1(aux1[9]),
        .I2(aux0__10_n_4),
        .O(aux0__16_i_4_n_0));
  CARRY4 aux0__17
       (.CI(aux0__16_n_0),
        .CO({aux0__17_n_0,NLW_aux0__17_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__12_n_5,aux0__12_n_6,aux0__12_n_7,aux0__11_n_4}),
        .O({aux0__17_n_4,aux0__17_n_5,aux0__17_n_6,aux0__17_n_7}),
        .S({aux0__17_i_1_n_0,aux0__17_i_2_n_0,aux0__17_i_3_n_0,aux0__17_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__17_i_1
       (.I0(aux0__13_n_2),
        .I1(aux1[16]),
        .I2(aux0__12_n_5),
        .O(aux0__17_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__17_i_2
       (.I0(aux0__13_n_2),
        .I1(aux1[15]),
        .I2(aux0__12_n_6),
        .O(aux0__17_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__17_i_3
       (.I0(aux0__13_n_2),
        .I1(aux1[14]),
        .I2(aux0__12_n_7),
        .O(aux0__17_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__17_i_4
       (.I0(aux0__13_n_2),
        .I1(aux1[13]),
        .I2(aux0__11_n_4),
        .O(aux0__17_i_4_n_0));
  CARRY4 aux0__18
       (.CI(aux0__17_n_0),
        .CO({NLW_aux0__18_CO_UNCONNECTED[3:2],aux0__18_n_2,NLW_aux0__18_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__13_n_2,aux0__12_n_4}),
        .O({NLW_aux0__18_O_UNCONNECTED[3:1],aux0__18_n_7}),
        .S({1'b0,1'b0,aux0__18_i_1_n_0,aux0__18_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__18_i_1
       (.I0(aux0__13_n_2),
        .I1(aux0__13_n_7),
        .O(aux0__18_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__18_i_2
       (.I0(aux0__13_n_2),
        .I1(aux1[17]),
        .I2(aux0__12_n_4),
        .O(aux0__18_i_2_n_0));
  CARRY4 aux0__19
       (.CI(1'b0),
        .CO({aux0__19_n_0,NLW_aux0__19_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__18_n_2),
        .DI({aux0__14_n_5,aux0__14_n_6,aux0__14_n_7,\aux_reg_n_0_[12] }),
        .O({aux0__19_n_4,aux0__19_n_5,aux0__19_n_6,aux0__19_n_7}),
        .S({aux0__19_i_2_n_0,aux0__19_i_3_n_0,aux0__19_i_4_n_0,aux0__19_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__19_i_2
       (.I0(aux0__18_n_2),
        .I1(aux1[4]),
        .I2(aux0__14_n_5),
        .O(aux0__19_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__19_i_3
       (.I0(aux0__18_n_2),
        .I1(aux1[3]),
        .I2(aux0__14_n_6),
        .O(aux0__19_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__19_i_4
       (.I0(aux0__18_n_2),
        .I1(aux1[2]),
        .I2(aux0__14_n_7),
        .O(aux0__19_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__19_i_5
       (.I0(aux0__18_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[12] ),
        .O(aux0__19_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__1_i_1
       (.I0(aux1[11]),
        .O(aux0__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__1_i_10
       (.I0(\div_reg_n_0_[11] ),
        .I1(\div_reg_n_0_[10] ),
        .O(aux0__1_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__1_i_11
       (.I0(\div_reg_n_0_[11] ),
        .I1(\div_reg_n_0_[9] ),
        .O(aux0__1_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__1_i_12
       (.I0(\div_reg_n_0_[10] ),
        .I1(\div_reg_n_0_[8] ),
        .O(aux0__1_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__1_i_13
       (.I0(\div_reg_n_0_[9] ),
        .I1(\div_reg_n_0_[7] ),
        .O(aux0__1_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__1_i_2
       (.I0(aux1[10]),
        .O(aux0__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__1_i_3
       (.I0(aux1[9]),
        .O(aux0__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__1_i_4
       (.I0(aux1[8]),
        .O(aux0__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__1_i_5
       (.I0(aux1[11]),
        .O(aux0__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__1_i_6
       (.I0(aux1[10]),
        .O(aux0__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__1_i_7
       (.I0(aux1[9]),
        .O(aux0__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__1_i_8
       (.I0(aux1[8]),
        .O(aux0__1_i_8_n_0));
  CARRY4 aux0__1_i_9
       (.CI(aux0__0_i_9_n_0),
        .CO({aux0__1_i_9_n_0,NLW_aux0__1_i_9_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\div_reg_n_0_[11] ,\div_reg_n_0_[11] ,\div_reg_n_0_[10] ,\div_reg_n_0_[9] }),
        .O(aux1[13:10]),
        .S({aux0__1_i_10_n_0,aux0__1_i_11_n_0,aux0__1_i_12_n_0,aux0__1_i_13_n_0}));
  CARRY4 aux0__2
       (.CI(aux0__1_n_0),
        .CO({aux0__2_n_0,NLW_aux0__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__2_i_1_n_0,aux0__2_i_2_n_0,aux0__2_i_3_n_0,aux0__2_i_4_n_0}),
        .O({aux0__2_n_4,aux0__2_n_5,aux0__2_n_6,aux0__2_n_7}),
        .S({aux0__2_i_5_n_0,aux0__2_i_6_n_0,aux0__2_i_7_n_0,aux0__2_i_8_n_0}));
  CARRY4 aux0__20
       (.CI(aux0__19_n_0),
        .CO({aux0__20_n_0,NLW_aux0__20_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__15_n_5,aux0__15_n_6,aux0__15_n_7,aux0__14_n_4}),
        .O({aux0__20_n_4,aux0__20_n_5,aux0__20_n_6,aux0__20_n_7}),
        .S({aux0__20_i_1_n_0,aux0__20_i_2_n_0,aux0__20_i_3_n_0,aux0__20_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__20_i_1
       (.I0(aux0__18_n_2),
        .I1(aux1[8]),
        .I2(aux0__15_n_5),
        .O(aux0__20_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__20_i_2
       (.I0(aux0__18_n_2),
        .I1(aux1[7]),
        .I2(aux0__15_n_6),
        .O(aux0__20_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__20_i_3
       (.I0(aux0__18_n_2),
        .I1(aux1[6]),
        .I2(aux0__15_n_7),
        .O(aux0__20_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__20_i_4
       (.I0(aux0__18_n_2),
        .I1(aux1[5]),
        .I2(aux0__14_n_4),
        .O(aux0__20_i_4_n_0));
  CARRY4 aux0__21
       (.CI(aux0__20_n_0),
        .CO({aux0__21_n_0,NLW_aux0__21_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__16_n_5,aux0__16_n_6,aux0__16_n_7,aux0__15_n_4}),
        .O({aux0__21_n_4,aux0__21_n_5,aux0__21_n_6,aux0__21_n_7}),
        .S({aux0__21_i_1_n_0,aux0__21_i_2_n_0,aux0__21_i_3_n_0,aux0__21_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__21_i_1
       (.I0(aux0__18_n_2),
        .I1(aux1[12]),
        .I2(aux0__16_n_5),
        .O(aux0__21_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__21_i_2
       (.I0(aux0__18_n_2),
        .I1(aux1[11]),
        .I2(aux0__16_n_6),
        .O(aux0__21_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__21_i_3
       (.I0(aux0__18_n_2),
        .I1(aux1[10]),
        .I2(aux0__16_n_7),
        .O(aux0__21_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__21_i_4
       (.I0(aux0__18_n_2),
        .I1(aux1[9]),
        .I2(aux0__15_n_4),
        .O(aux0__21_i_4_n_0));
  CARRY4 aux0__22
       (.CI(aux0__21_n_0),
        .CO({aux0__22_n_0,NLW_aux0__22_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__17_n_5,aux0__17_n_6,aux0__17_n_7,aux0__16_n_4}),
        .O({aux0__22_n_4,aux0__22_n_5,aux0__22_n_6,aux0__22_n_7}),
        .S({aux0__22_i_1_n_0,aux0__22_i_2_n_0,aux0__22_i_3_n_0,aux0__22_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__22_i_1
       (.I0(aux0__18_n_2),
        .I1(aux1[16]),
        .I2(aux0__17_n_5),
        .O(aux0__22_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__22_i_2
       (.I0(aux0__18_n_2),
        .I1(aux1[15]),
        .I2(aux0__17_n_6),
        .O(aux0__22_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__22_i_3
       (.I0(aux0__18_n_2),
        .I1(aux1[14]),
        .I2(aux0__17_n_7),
        .O(aux0__22_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__22_i_4
       (.I0(aux0__18_n_2),
        .I1(aux1[13]),
        .I2(aux0__16_n_4),
        .O(aux0__22_i_4_n_0));
  CARRY4 aux0__23
       (.CI(aux0__22_n_0),
        .CO({NLW_aux0__23_CO_UNCONNECTED[3:2],aux0__23_n_2,NLW_aux0__23_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__18_n_2,aux0__17_n_4}),
        .O({NLW_aux0__23_O_UNCONNECTED[3:1],aux0__23_n_7}),
        .S({1'b0,1'b0,aux0__23_i_1_n_0,aux0__23_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__23_i_1
       (.I0(aux0__18_n_2),
        .I1(aux0__18_n_7),
        .O(aux0__23_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__23_i_2
       (.I0(aux0__18_n_2),
        .I1(aux1[17]),
        .I2(aux0__17_n_4),
        .O(aux0__23_i_2_n_0));
  CARRY4 aux0__24
       (.CI(1'b0),
        .CO({aux0__24_n_0,NLW_aux0__24_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__23_n_2),
        .DI({aux0__19_n_5,aux0__19_n_6,aux0__19_n_7,\aux_reg_n_0_[11] }),
        .O({aux0__24_n_4,aux0__24_n_5,aux0__24_n_6,aux0__24_n_7}),
        .S({aux0__24_i_2_n_0,aux0__24_i_3_n_0,aux0__24_i_4_n_0,aux0__24_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__24_i_2
       (.I0(aux0__23_n_2),
        .I1(aux1[4]),
        .I2(aux0__19_n_5),
        .O(aux0__24_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__24_i_3
       (.I0(aux0__23_n_2),
        .I1(aux1[3]),
        .I2(aux0__19_n_6),
        .O(aux0__24_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__24_i_4
       (.I0(aux0__23_n_2),
        .I1(aux1[2]),
        .I2(aux0__19_n_7),
        .O(aux0__24_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__24_i_5
       (.I0(aux0__23_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[11] ),
        .O(aux0__24_i_5_n_0));
  CARRY4 aux0__25
       (.CI(aux0__24_n_0),
        .CO({aux0__25_n_0,NLW_aux0__25_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__20_n_5,aux0__20_n_6,aux0__20_n_7,aux0__19_n_4}),
        .O({aux0__25_n_4,aux0__25_n_5,aux0__25_n_6,aux0__25_n_7}),
        .S({aux0__25_i_1_n_0,aux0__25_i_2_n_0,aux0__25_i_3_n_0,aux0__25_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__25_i_1
       (.I0(aux0__23_n_2),
        .I1(aux1[8]),
        .I2(aux0__20_n_5),
        .O(aux0__25_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__25_i_2
       (.I0(aux0__23_n_2),
        .I1(aux1[7]),
        .I2(aux0__20_n_6),
        .O(aux0__25_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__25_i_3
       (.I0(aux0__23_n_2),
        .I1(aux1[6]),
        .I2(aux0__20_n_7),
        .O(aux0__25_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__25_i_4
       (.I0(aux0__23_n_2),
        .I1(aux1[5]),
        .I2(aux0__19_n_4),
        .O(aux0__25_i_4_n_0));
  CARRY4 aux0__26
       (.CI(aux0__25_n_0),
        .CO({aux0__26_n_0,NLW_aux0__26_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__21_n_5,aux0__21_n_6,aux0__21_n_7,aux0__20_n_4}),
        .O({aux0__26_n_4,aux0__26_n_5,aux0__26_n_6,aux0__26_n_7}),
        .S({aux0__26_i_1_n_0,aux0__26_i_2_n_0,aux0__26_i_3_n_0,aux0__26_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__26_i_1
       (.I0(aux0__23_n_2),
        .I1(aux1[12]),
        .I2(aux0__21_n_5),
        .O(aux0__26_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__26_i_2
       (.I0(aux0__23_n_2),
        .I1(aux1[11]),
        .I2(aux0__21_n_6),
        .O(aux0__26_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__26_i_3
       (.I0(aux0__23_n_2),
        .I1(aux1[10]),
        .I2(aux0__21_n_7),
        .O(aux0__26_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__26_i_4
       (.I0(aux0__23_n_2),
        .I1(aux1[9]),
        .I2(aux0__20_n_4),
        .O(aux0__26_i_4_n_0));
  CARRY4 aux0__27
       (.CI(aux0__26_n_0),
        .CO({aux0__27_n_0,NLW_aux0__27_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__22_n_5,aux0__22_n_6,aux0__22_n_7,aux0__21_n_4}),
        .O({aux0__27_n_4,aux0__27_n_5,aux0__27_n_6,aux0__27_n_7}),
        .S({aux0__27_i_1_n_0,aux0__27_i_2_n_0,aux0__27_i_3_n_0,aux0__27_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__27_i_1
       (.I0(aux0__23_n_2),
        .I1(aux1[16]),
        .I2(aux0__22_n_5),
        .O(aux0__27_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__27_i_2
       (.I0(aux0__23_n_2),
        .I1(aux1[15]),
        .I2(aux0__22_n_6),
        .O(aux0__27_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__27_i_3
       (.I0(aux0__23_n_2),
        .I1(aux1[14]),
        .I2(aux0__22_n_7),
        .O(aux0__27_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__27_i_4
       (.I0(aux0__23_n_2),
        .I1(aux1[13]),
        .I2(aux0__21_n_4),
        .O(aux0__27_i_4_n_0));
  CARRY4 aux0__28
       (.CI(aux0__27_n_0),
        .CO({NLW_aux0__28_CO_UNCONNECTED[3:2],aux0__28_n_2,NLW_aux0__28_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__23_n_2,aux0__22_n_4}),
        .O({NLW_aux0__28_O_UNCONNECTED[3:1],aux0__28_n_7}),
        .S({1'b0,1'b0,aux0__28_i_1_n_0,aux0__28_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__28_i_1
       (.I0(aux0__23_n_2),
        .I1(aux0__23_n_7),
        .O(aux0__28_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__28_i_2
       (.I0(aux0__23_n_2),
        .I1(aux1[17]),
        .I2(aux0__22_n_4),
        .O(aux0__28_i_2_n_0));
  CARRY4 aux0__29
       (.CI(1'b0),
        .CO({aux0__29_n_0,NLW_aux0__29_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__28_n_2),
        .DI({aux0__24_n_5,aux0__24_n_6,aux0__24_n_7,\aux_reg_n_0_[10] }),
        .O({aux0__29_n_4,aux0__29_n_5,aux0__29_n_6,aux0__29_n_7}),
        .S({aux0__29_i_2_n_0,aux0__29_i_3_n_0,aux0__29_i_4_n_0,aux0__29_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__29_i_2
       (.I0(aux0__28_n_2),
        .I1(aux1[4]),
        .I2(aux0__24_n_5),
        .O(aux0__29_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__29_i_3
       (.I0(aux0__28_n_2),
        .I1(aux1[3]),
        .I2(aux0__24_n_6),
        .O(aux0__29_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__29_i_4
       (.I0(aux0__28_n_2),
        .I1(aux1[2]),
        .I2(aux0__24_n_7),
        .O(aux0__29_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__29_i_5
       (.I0(aux0__28_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[10] ),
        .O(aux0__29_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__2_i_1
       (.I0(aux1[15]),
        .O(aux0__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__2_i_10
       (.I0(\div_reg_n_0_[13] ),
        .I1(\div_reg_n_0_[11] ),
        .O(aux0__2_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__2_i_2
       (.I0(aux1[14]),
        .O(aux0__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__2_i_3
       (.I0(aux1[13]),
        .O(aux0__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__2_i_4
       (.I0(aux1[12]),
        .O(aux0__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__2_i_5
       (.I0(aux1[15]),
        .O(aux0__2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__2_i_6
       (.I0(aux1[14]),
        .O(aux0__2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__2_i_7
       (.I0(aux1[13]),
        .O(aux0__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__2_i_8
       (.I0(aux1[12]),
        .O(aux0__2_i_8_n_0));
  CARRY4 aux0__2_i_9
       (.CI(aux0__1_i_9_n_0),
        .CO({aux1[17],NLW_aux0__2_i_9_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\div_reg_n_0_[13] }),
        .O({NLW_aux0__2_i_9_O_UNCONNECTED[3],aux1[16:14]}),
        .S({1'b1,\div_reg_n_0_[13] ,\div_reg_n_0_[11] ,aux0__2_i_10_n_0}));
  CARRY4 aux0__3
       (.CI(aux0__2_n_0),
        .CO({NLW_aux0__3_CO_UNCONNECTED[3],aux0__3_n_1,NLW_aux0__3_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__3_i_1_n_0,aux0__3_i_2_n_0}),
        .O({NLW_aux0__3_O_UNCONNECTED[3:2],aux0__3_n_6,aux0__3_n_7}),
        .S({1'b0,1'b1,aux0__3_i_3_n_0,aux0__3_i_4_n_0}));
  CARRY4 aux0__30
       (.CI(aux0__29_n_0),
        .CO({aux0__30_n_0,NLW_aux0__30_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__25_n_5,aux0__25_n_6,aux0__25_n_7,aux0__24_n_4}),
        .O({aux0__30_n_4,aux0__30_n_5,aux0__30_n_6,aux0__30_n_7}),
        .S({aux0__30_i_1_n_0,aux0__30_i_2_n_0,aux0__30_i_3_n_0,aux0__30_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__30_i_1
       (.I0(aux0__28_n_2),
        .I1(aux1[8]),
        .I2(aux0__25_n_5),
        .O(aux0__30_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__30_i_2
       (.I0(aux0__28_n_2),
        .I1(aux1[7]),
        .I2(aux0__25_n_6),
        .O(aux0__30_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__30_i_3
       (.I0(aux0__28_n_2),
        .I1(aux1[6]),
        .I2(aux0__25_n_7),
        .O(aux0__30_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__30_i_4
       (.I0(aux0__28_n_2),
        .I1(aux1[5]),
        .I2(aux0__24_n_4),
        .O(aux0__30_i_4_n_0));
  CARRY4 aux0__31
       (.CI(aux0__30_n_0),
        .CO({aux0__31_n_0,NLW_aux0__31_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__26_n_5,aux0__26_n_6,aux0__26_n_7,aux0__25_n_4}),
        .O({aux0__31_n_4,aux0__31_n_5,aux0__31_n_6,aux0__31_n_7}),
        .S({aux0__31_i_1_n_0,aux0__31_i_2_n_0,aux0__31_i_3_n_0,aux0__31_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__31_i_1
       (.I0(aux0__28_n_2),
        .I1(aux1[12]),
        .I2(aux0__26_n_5),
        .O(aux0__31_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__31_i_2
       (.I0(aux0__28_n_2),
        .I1(aux1[11]),
        .I2(aux0__26_n_6),
        .O(aux0__31_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__31_i_3
       (.I0(aux0__28_n_2),
        .I1(aux1[10]),
        .I2(aux0__26_n_7),
        .O(aux0__31_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__31_i_4
       (.I0(aux0__28_n_2),
        .I1(aux1[9]),
        .I2(aux0__25_n_4),
        .O(aux0__31_i_4_n_0));
  CARRY4 aux0__32
       (.CI(aux0__31_n_0),
        .CO({aux0__32_n_0,NLW_aux0__32_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__27_n_5,aux0__27_n_6,aux0__27_n_7,aux0__26_n_4}),
        .O({aux0__32_n_4,aux0__32_n_5,aux0__32_n_6,aux0__32_n_7}),
        .S({aux0__32_i_1_n_0,aux0__32_i_2_n_0,aux0__32_i_3_n_0,aux0__32_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_i_1
       (.I0(aux0__28_n_2),
        .I1(aux1[16]),
        .I2(aux0__27_n_5),
        .O(aux0__32_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_i_2
       (.I0(aux0__28_n_2),
        .I1(aux1[15]),
        .I2(aux0__27_n_6),
        .O(aux0__32_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_i_3
       (.I0(aux0__28_n_2),
        .I1(aux1[14]),
        .I2(aux0__27_n_7),
        .O(aux0__32_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_i_4
       (.I0(aux0__28_n_2),
        .I1(aux1[13]),
        .I2(aux0__26_n_4),
        .O(aux0__32_i_4_n_0));
  CARRY4 aux0__33
       (.CI(aux0__32_n_0),
        .CO({NLW_aux0__33_CO_UNCONNECTED[3:2],aux0__33_n_2,NLW_aux0__33_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__28_n_2,aux0__27_n_4}),
        .O({NLW_aux0__33_O_UNCONNECTED[3:1],aux0__33_n_7}),
        .S({1'b0,1'b0,aux0__33_i_1_n_0,aux0__33_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__33_i_1
       (.I0(aux0__28_n_2),
        .I1(aux0__28_n_7),
        .O(aux0__33_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__33_i_2
       (.I0(aux0__28_n_2),
        .I1(aux1[17]),
        .I2(aux0__27_n_4),
        .O(aux0__33_i_2_n_0));
  CARRY4 aux0__34
       (.CI(1'b0),
        .CO({aux0__34_n_0,NLW_aux0__34_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__33_n_2),
        .DI({aux0__29_n_5,aux0__29_n_6,aux0__29_n_7,\aux_reg_n_0_[9] }),
        .O({aux0__34_n_4,aux0__34_n_5,aux0__34_n_6,aux0__34_n_7}),
        .S({aux0__34_i_2_n_0,aux0__34_i_3_n_0,aux0__34_i_4_n_0,aux0__34_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__34_i_2
       (.I0(aux0__33_n_2),
        .I1(aux1[4]),
        .I2(aux0__29_n_5),
        .O(aux0__34_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__34_i_3
       (.I0(aux0__33_n_2),
        .I1(aux1[3]),
        .I2(aux0__29_n_6),
        .O(aux0__34_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__34_i_4
       (.I0(aux0__33_n_2),
        .I1(aux1[2]),
        .I2(aux0__29_n_7),
        .O(aux0__34_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__34_i_5
       (.I0(aux0__33_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[9] ),
        .O(aux0__34_i_5_n_0));
  CARRY4 aux0__35
       (.CI(aux0__34_n_0),
        .CO({aux0__35_n_0,NLW_aux0__35_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__30_n_5,aux0__30_n_6,aux0__30_n_7,aux0__29_n_4}),
        .O({aux0__35_n_4,aux0__35_n_5,aux0__35_n_6,aux0__35_n_7}),
        .S({aux0__35_i_1_n_0,aux0__35_i_2_n_0,aux0__35_i_3_n_0,aux0__35_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__35_i_1
       (.I0(aux0__33_n_2),
        .I1(aux1[8]),
        .I2(aux0__30_n_5),
        .O(aux0__35_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__35_i_2
       (.I0(aux0__33_n_2),
        .I1(aux1[7]),
        .I2(aux0__30_n_6),
        .O(aux0__35_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__35_i_3
       (.I0(aux0__33_n_2),
        .I1(aux1[6]),
        .I2(aux0__30_n_7),
        .O(aux0__35_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__35_i_4
       (.I0(aux0__33_n_2),
        .I1(aux1[5]),
        .I2(aux0__29_n_4),
        .O(aux0__35_i_4_n_0));
  CARRY4 aux0__36
       (.CI(aux0__35_n_0),
        .CO({aux0__36_n_0,NLW_aux0__36_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__31_n_5,aux0__31_n_6,aux0__31_n_7,aux0__30_n_4}),
        .O({aux0__36_n_4,aux0__36_n_5,aux0__36_n_6,aux0__36_n_7}),
        .S({aux0__36_i_1_n_0,aux0__36_i_2_n_0,aux0__36_i_3_n_0,aux0__36_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__36_i_1
       (.I0(aux0__33_n_2),
        .I1(aux1[12]),
        .I2(aux0__31_n_5),
        .O(aux0__36_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__36_i_2
       (.I0(aux0__33_n_2),
        .I1(aux1[11]),
        .I2(aux0__31_n_6),
        .O(aux0__36_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__36_i_3
       (.I0(aux0__33_n_2),
        .I1(aux1[10]),
        .I2(aux0__31_n_7),
        .O(aux0__36_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__36_i_4
       (.I0(aux0__33_n_2),
        .I1(aux1[9]),
        .I2(aux0__30_n_4),
        .O(aux0__36_i_4_n_0));
  CARRY4 aux0__37
       (.CI(aux0__36_n_0),
        .CO({aux0__37_n_0,NLW_aux0__37_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__32_n_5,aux0__32_n_6,aux0__32_n_7,aux0__31_n_4}),
        .O({aux0__37_n_4,aux0__37_n_5,aux0__37_n_6,aux0__37_n_7}),
        .S({aux0__37_i_1_n_0,aux0__37_i_2_n_0,aux0__37_i_3_n_0,aux0__37_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__37_i_1
       (.I0(aux0__33_n_2),
        .I1(aux1[16]),
        .I2(aux0__32_n_5),
        .O(aux0__37_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__37_i_2
       (.I0(aux0__33_n_2),
        .I1(aux1[15]),
        .I2(aux0__32_n_6),
        .O(aux0__37_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__37_i_3
       (.I0(aux0__33_n_2),
        .I1(aux1[14]),
        .I2(aux0__32_n_7),
        .O(aux0__37_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__37_i_4
       (.I0(aux0__33_n_2),
        .I1(aux1[13]),
        .I2(aux0__31_n_4),
        .O(aux0__37_i_4_n_0));
  CARRY4 aux0__38
       (.CI(aux0__37_n_0),
        .CO({NLW_aux0__38_CO_UNCONNECTED[3:2],aux0__38_n_2,NLW_aux0__38_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__33_n_2,aux0__32_n_4}),
        .O({NLW_aux0__38_O_UNCONNECTED[3:1],aux0__38_n_7}),
        .S({1'b0,1'b0,aux0__38_i_1_n_0,aux0__38_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__38_i_1
       (.I0(aux0__33_n_2),
        .I1(aux0__33_n_7),
        .O(aux0__38_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__38_i_2
       (.I0(aux0__33_n_2),
        .I1(aux1[17]),
        .I2(aux0__32_n_4),
        .O(aux0__38_i_2_n_0));
  CARRY4 aux0__39
       (.CI(1'b0),
        .CO({aux0__39_n_0,NLW_aux0__39_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__38_n_2),
        .DI({aux0__34_n_5,aux0__34_n_6,aux0__34_n_7,\aux_reg_n_0_[8] }),
        .O({aux0__39_n_4,aux0__39_n_5,aux0__39_n_6,aux0__39_n_7}),
        .S({aux0__39_i_2_n_0,aux0__39_i_3_n_0,aux0__39_i_4_n_0,aux0__39_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__39_i_2
       (.I0(aux0__38_n_2),
        .I1(aux1[4]),
        .I2(aux0__34_n_5),
        .O(aux0__39_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__39_i_3
       (.I0(aux0__38_n_2),
        .I1(aux1[3]),
        .I2(aux0__34_n_6),
        .O(aux0__39_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__39_i_4
       (.I0(aux0__38_n_2),
        .I1(aux1[2]),
        .I2(aux0__34_n_7),
        .O(aux0__39_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__39_i_5
       (.I0(aux0__38_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[8] ),
        .O(aux0__39_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__3_i_1
       (.I0(aux1[17]),
        .O(aux0__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__3_i_2
       (.I0(aux1[16]),
        .O(aux0__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__3_i_3
       (.I0(aux1[17]),
        .O(aux0__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__3_i_4
       (.I0(aux1[16]),
        .O(aux0__3_i_4_n_0));
  CARRY4 aux0__4
       (.CI(1'b0),
        .CO({aux0__4_n_0,NLW_aux0__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__3_n_1),
        .DI({aux0_n_4,aux0_n_5,aux0_n_6,aux0_n_7}),
        .O({aux0__4_n_4,aux0__4_n_5,aux0__4_n_6,aux0__4_n_7}),
        .S({aux0__4_i_1_n_0,aux0__4_i_2_n_0,aux0__4_i_3_n_0,aux0__4_i_4_n_0}));
  CARRY4 aux0__40
       (.CI(aux0__39_n_0),
        .CO({aux0__40_n_0,NLW_aux0__40_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__35_n_5,aux0__35_n_6,aux0__35_n_7,aux0__34_n_4}),
        .O({aux0__40_n_4,aux0__40_n_5,aux0__40_n_6,aux0__40_n_7}),
        .S({aux0__40_i_1_n_0,aux0__40_i_2_n_0,aux0__40_i_3_n_0,aux0__40_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__40_i_1
       (.I0(aux0__38_n_2),
        .I1(aux1[8]),
        .I2(aux0__35_n_5),
        .O(aux0__40_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__40_i_2
       (.I0(aux0__38_n_2),
        .I1(aux1[7]),
        .I2(aux0__35_n_6),
        .O(aux0__40_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__40_i_3
       (.I0(aux0__38_n_2),
        .I1(aux1[6]),
        .I2(aux0__35_n_7),
        .O(aux0__40_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__40_i_4
       (.I0(aux0__38_n_2),
        .I1(aux1[5]),
        .I2(aux0__34_n_4),
        .O(aux0__40_i_4_n_0));
  CARRY4 aux0__41
       (.CI(aux0__40_n_0),
        .CO({aux0__41_n_0,NLW_aux0__41_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__36_n_5,aux0__36_n_6,aux0__36_n_7,aux0__35_n_4}),
        .O({aux0__41_n_4,aux0__41_n_5,aux0__41_n_6,aux0__41_n_7}),
        .S({aux0__41_i_1_n_0,aux0__41_i_2_n_0,aux0__41_i_3_n_0,aux0__41_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__41_i_1
       (.I0(aux0__38_n_2),
        .I1(aux1[12]),
        .I2(aux0__36_n_5),
        .O(aux0__41_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__41_i_2
       (.I0(aux0__38_n_2),
        .I1(aux1[11]),
        .I2(aux0__36_n_6),
        .O(aux0__41_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__41_i_3
       (.I0(aux0__38_n_2),
        .I1(aux1[10]),
        .I2(aux0__36_n_7),
        .O(aux0__41_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__41_i_4
       (.I0(aux0__38_n_2),
        .I1(aux1[9]),
        .I2(aux0__35_n_4),
        .O(aux0__41_i_4_n_0));
  CARRY4 aux0__42
       (.CI(aux0__41_n_0),
        .CO({aux0__42_n_0,NLW_aux0__42_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__37_n_5,aux0__37_n_6,aux0__37_n_7,aux0__36_n_4}),
        .O({aux0__42_n_4,aux0__42_n_5,aux0__42_n_6,aux0__42_n_7}),
        .S({aux0__42_i_1_n_0,aux0__42_i_2_n_0,aux0__42_i_3_n_0,aux0__42_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__42_i_1
       (.I0(aux0__38_n_2),
        .I1(aux1[16]),
        .I2(aux0__37_n_5),
        .O(aux0__42_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__42_i_2
       (.I0(aux0__38_n_2),
        .I1(aux1[15]),
        .I2(aux0__37_n_6),
        .O(aux0__42_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__42_i_3
       (.I0(aux0__38_n_2),
        .I1(aux1[14]),
        .I2(aux0__37_n_7),
        .O(aux0__42_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__42_i_4
       (.I0(aux0__38_n_2),
        .I1(aux1[13]),
        .I2(aux0__36_n_4),
        .O(aux0__42_i_4_n_0));
  CARRY4 aux0__43
       (.CI(aux0__42_n_0),
        .CO({NLW_aux0__43_CO_UNCONNECTED[3:2],aux0__43_n_2,NLW_aux0__43_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__38_n_2,aux0__37_n_4}),
        .O({NLW_aux0__43_O_UNCONNECTED[3:1],aux0__43_n_7}),
        .S({1'b0,1'b0,aux0__43_i_1_n_0,aux0__43_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__43_i_1
       (.I0(aux0__38_n_2),
        .I1(aux0__38_n_7),
        .O(aux0__43_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__43_i_2
       (.I0(aux0__38_n_2),
        .I1(aux1[17]),
        .I2(aux0__37_n_4),
        .O(aux0__43_i_2_n_0));
  CARRY4 aux0__44
       (.CI(1'b0),
        .CO({aux0__44_n_0,NLW_aux0__44_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__43_n_2),
        .DI({aux0__39_n_5,aux0__39_n_6,aux0__39_n_7,\aux_reg_n_0_[7] }),
        .O({aux0__44_n_4,aux0__44_n_5,aux0__44_n_6,aux0__44_n_7}),
        .S({aux0__44_i_2_n_0,aux0__44_i_3_n_0,aux0__44_i_4_n_0,aux0__44_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__44_i_2
       (.I0(aux0__43_n_2),
        .I1(aux1[4]),
        .I2(aux0__39_n_5),
        .O(aux0__44_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__44_i_3
       (.I0(aux0__43_n_2),
        .I1(aux1[3]),
        .I2(aux0__39_n_6),
        .O(aux0__44_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__44_i_4
       (.I0(aux0__43_n_2),
        .I1(aux1[2]),
        .I2(aux0__39_n_7),
        .O(aux0__44_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__44_i_5
       (.I0(aux0__43_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[7] ),
        .O(aux0__44_i_5_n_0));
  CARRY4 aux0__45
       (.CI(aux0__44_n_0),
        .CO({aux0__45_n_0,NLW_aux0__45_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__40_n_5,aux0__40_n_6,aux0__40_n_7,aux0__39_n_4}),
        .O({aux0__45_n_4,aux0__45_n_5,aux0__45_n_6,aux0__45_n_7}),
        .S({aux0__45_i_1_n_0,aux0__45_i_2_n_0,aux0__45_i_3_n_0,aux0__45_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__45_i_1
       (.I0(aux0__43_n_2),
        .I1(aux1[8]),
        .I2(aux0__40_n_5),
        .O(aux0__45_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__45_i_2
       (.I0(aux0__43_n_2),
        .I1(aux1[7]),
        .I2(aux0__40_n_6),
        .O(aux0__45_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__45_i_3
       (.I0(aux0__43_n_2),
        .I1(aux1[6]),
        .I2(aux0__40_n_7),
        .O(aux0__45_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__45_i_4
       (.I0(aux0__43_n_2),
        .I1(aux1[5]),
        .I2(aux0__39_n_4),
        .O(aux0__45_i_4_n_0));
  CARRY4 aux0__46
       (.CI(aux0__45_n_0),
        .CO({aux0__46_n_0,NLW_aux0__46_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__41_n_5,aux0__41_n_6,aux0__41_n_7,aux0__40_n_4}),
        .O({aux0__46_n_4,aux0__46_n_5,aux0__46_n_6,aux0__46_n_7}),
        .S({aux0__46_i_1_n_0,aux0__46_i_2_n_0,aux0__46_i_3_n_0,aux0__46_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__46_i_1
       (.I0(aux0__43_n_2),
        .I1(aux1[12]),
        .I2(aux0__41_n_5),
        .O(aux0__46_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__46_i_2
       (.I0(aux0__43_n_2),
        .I1(aux1[11]),
        .I2(aux0__41_n_6),
        .O(aux0__46_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__46_i_3
       (.I0(aux0__43_n_2),
        .I1(aux1[10]),
        .I2(aux0__41_n_7),
        .O(aux0__46_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__46_i_4
       (.I0(aux0__43_n_2),
        .I1(aux1[9]),
        .I2(aux0__40_n_4),
        .O(aux0__46_i_4_n_0));
  CARRY4 aux0__47
       (.CI(aux0__46_n_0),
        .CO({aux0__47_n_0,NLW_aux0__47_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__42_n_5,aux0__42_n_6,aux0__42_n_7,aux0__41_n_4}),
        .O({aux0__47_n_4,aux0__47_n_5,aux0__47_n_6,aux0__47_n_7}),
        .S({aux0__47_i_1_n_0,aux0__47_i_2_n_0,aux0__47_i_3_n_0,aux0__47_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__47_i_1
       (.I0(aux0__43_n_2),
        .I1(aux1[16]),
        .I2(aux0__42_n_5),
        .O(aux0__47_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__47_i_2
       (.I0(aux0__43_n_2),
        .I1(aux1[15]),
        .I2(aux0__42_n_6),
        .O(aux0__47_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__47_i_3
       (.I0(aux0__43_n_2),
        .I1(aux1[14]),
        .I2(aux0__42_n_7),
        .O(aux0__47_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__47_i_4
       (.I0(aux0__43_n_2),
        .I1(aux1[13]),
        .I2(aux0__41_n_4),
        .O(aux0__47_i_4_n_0));
  CARRY4 aux0__48
       (.CI(aux0__47_n_0),
        .CO({NLW_aux0__48_CO_UNCONNECTED[3:2],aux0__48_n_2,NLW_aux0__48_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__43_n_2,aux0__42_n_4}),
        .O({NLW_aux0__48_O_UNCONNECTED[3:1],aux0__48_n_7}),
        .S({1'b0,1'b0,aux0__48_i_1_n_0,aux0__48_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__48_i_1
       (.I0(aux0__43_n_2),
        .I1(aux0__43_n_7),
        .O(aux0__48_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__48_i_2
       (.I0(aux0__43_n_2),
        .I1(aux1[17]),
        .I2(aux0__42_n_4),
        .O(aux0__48_i_2_n_0));
  CARRY4 aux0__49
       (.CI(1'b0),
        .CO({aux0__49_n_0,NLW_aux0__49_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__48_n_2),
        .DI({aux0__44_n_5,aux0__44_n_6,aux0__44_n_7,\aux_reg_n_0_[6] }),
        .O({aux0__49_n_4,aux0__49_n_5,aux0__49_n_6,aux0__49_n_7}),
        .S({aux0__49_i_2_n_0,aux0__49_i_3_n_0,aux0__49_i_4_n_0,aux0__49_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__49_i_2
       (.I0(aux0__48_n_2),
        .I1(aux1[4]),
        .I2(aux0__44_n_5),
        .O(aux0__49_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__49_i_3
       (.I0(aux0__48_n_2),
        .I1(aux1[3]),
        .I2(aux0__44_n_6),
        .O(aux0__49_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__49_i_4
       (.I0(aux0__48_n_2),
        .I1(aux1[2]),
        .I2(aux0__44_n_7),
        .O(aux0__49_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__49_i_5
       (.I0(aux0__48_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[6] ),
        .O(aux0__49_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__4_i_1
       (.I0(aux0__3_n_1),
        .I1(aux1[4]),
        .I2(aux0_n_4),
        .O(aux0__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__4_i_2
       (.I0(aux0__3_n_1),
        .I1(aux1[3]),
        .I2(aux0_n_5),
        .O(aux0__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__4_i_3
       (.I0(aux0__3_n_1),
        .I1(aux1[2]),
        .I2(aux0_n_6),
        .O(aux0__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__4_i_4
       (.I0(aux0__3_n_1),
        .I1(\div_reg_n_0_[0] ),
        .I2(aux0_n_7),
        .O(aux0__4_i_4_n_0));
  CARRY4 aux0__5
       (.CI(aux0__4_n_0),
        .CO({aux0__5_n_0,NLW_aux0__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__0_n_4,aux0__0_n_5,aux0__0_n_6,aux0__0_n_7}),
        .O({aux0__5_n_4,aux0__5_n_5,aux0__5_n_6,aux0__5_n_7}),
        .S({aux0__5_i_1_n_0,aux0__5_i_2_n_0,aux0__5_i_3_n_0,aux0__5_i_4_n_0}));
  CARRY4 aux0__50
       (.CI(aux0__49_n_0),
        .CO({aux0__50_n_0,NLW_aux0__50_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__45_n_5,aux0__45_n_6,aux0__45_n_7,aux0__44_n_4}),
        .O({aux0__50_n_4,aux0__50_n_5,aux0__50_n_6,aux0__50_n_7}),
        .S({aux0__50_i_1_n_0,aux0__50_i_2_n_0,aux0__50_i_3_n_0,aux0__50_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__50_i_1
       (.I0(aux0__48_n_2),
        .I1(aux1[8]),
        .I2(aux0__45_n_5),
        .O(aux0__50_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__50_i_2
       (.I0(aux0__48_n_2),
        .I1(aux1[7]),
        .I2(aux0__45_n_6),
        .O(aux0__50_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__50_i_3
       (.I0(aux0__48_n_2),
        .I1(aux1[6]),
        .I2(aux0__45_n_7),
        .O(aux0__50_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__50_i_4
       (.I0(aux0__48_n_2),
        .I1(aux1[5]),
        .I2(aux0__44_n_4),
        .O(aux0__50_i_4_n_0));
  CARRY4 aux0__51
       (.CI(aux0__50_n_0),
        .CO({aux0__51_n_0,NLW_aux0__51_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__46_n_5,aux0__46_n_6,aux0__46_n_7,aux0__45_n_4}),
        .O({aux0__51_n_4,aux0__51_n_5,aux0__51_n_6,aux0__51_n_7}),
        .S({aux0__51_i_1_n_0,aux0__51_i_2_n_0,aux0__51_i_3_n_0,aux0__51_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__51_i_1
       (.I0(aux0__48_n_2),
        .I1(aux1[12]),
        .I2(aux0__46_n_5),
        .O(aux0__51_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__51_i_2
       (.I0(aux0__48_n_2),
        .I1(aux1[11]),
        .I2(aux0__46_n_6),
        .O(aux0__51_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__51_i_3
       (.I0(aux0__48_n_2),
        .I1(aux1[10]),
        .I2(aux0__46_n_7),
        .O(aux0__51_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__51_i_4
       (.I0(aux0__48_n_2),
        .I1(aux1[9]),
        .I2(aux0__45_n_4),
        .O(aux0__51_i_4_n_0));
  CARRY4 aux0__52
       (.CI(aux0__51_n_0),
        .CO({aux0__52_n_0,NLW_aux0__52_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__47_n_5,aux0__47_n_6,aux0__47_n_7,aux0__46_n_4}),
        .O({aux0__52_n_4,aux0__52_n_5,aux0__52_n_6,aux0__52_n_7}),
        .S({aux0__52_i_1_n_0,aux0__52_i_2_n_0,aux0__52_i_3_n_0,aux0__52_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__52_i_1
       (.I0(aux0__48_n_2),
        .I1(aux1[16]),
        .I2(aux0__47_n_5),
        .O(aux0__52_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__52_i_2
       (.I0(aux0__48_n_2),
        .I1(aux1[15]),
        .I2(aux0__47_n_6),
        .O(aux0__52_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__52_i_3
       (.I0(aux0__48_n_2),
        .I1(aux1[14]),
        .I2(aux0__47_n_7),
        .O(aux0__52_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__52_i_4
       (.I0(aux0__48_n_2),
        .I1(aux1[13]),
        .I2(aux0__46_n_4),
        .O(aux0__52_i_4_n_0));
  CARRY4 aux0__53
       (.CI(aux0__52_n_0),
        .CO({NLW_aux0__53_CO_UNCONNECTED[3:2],aux0__53_n_2,NLW_aux0__53_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__48_n_2,aux0__47_n_4}),
        .O({NLW_aux0__53_O_UNCONNECTED[3:1],aux0__53_n_7}),
        .S({1'b0,1'b0,aux0__53_i_1_n_0,aux0__53_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__53_i_1
       (.I0(aux0__48_n_2),
        .I1(aux0__48_n_7),
        .O(aux0__53_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__53_i_2
       (.I0(aux0__48_n_2),
        .I1(aux1[17]),
        .I2(aux0__47_n_4),
        .O(aux0__53_i_2_n_0));
  CARRY4 aux0__54
       (.CI(1'b0),
        .CO({aux0__54_n_0,NLW_aux0__54_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__53_n_2),
        .DI({aux0__49_n_5,aux0__49_n_6,aux0__49_n_7,\aux_reg_n_0_[5] }),
        .O({aux0__54_n_4,aux0__54_n_5,aux0__54_n_6,aux0__54_n_7}),
        .S({aux0__54_i_2_n_0,aux0__54_i_3_n_0,aux0__54_i_4_n_0,aux0__54_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__54_i_2
       (.I0(aux0__53_n_2),
        .I1(aux1[4]),
        .I2(aux0__49_n_5),
        .O(aux0__54_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__54_i_3
       (.I0(aux0__53_n_2),
        .I1(aux1[3]),
        .I2(aux0__49_n_6),
        .O(aux0__54_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__54_i_4
       (.I0(aux0__53_n_2),
        .I1(aux1[2]),
        .I2(aux0__49_n_7),
        .O(aux0__54_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__54_i_5
       (.I0(aux0__53_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[5] ),
        .O(aux0__54_i_5_n_0));
  CARRY4 aux0__55
       (.CI(aux0__54_n_0),
        .CO({aux0__55_n_0,NLW_aux0__55_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__50_n_5,aux0__50_n_6,aux0__50_n_7,aux0__49_n_4}),
        .O({aux0__55_n_4,aux0__55_n_5,aux0__55_n_6,aux0__55_n_7}),
        .S({aux0__55_i_1_n_0,aux0__55_i_2_n_0,aux0__55_i_3_n_0,aux0__55_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__55_i_1
       (.I0(aux0__53_n_2),
        .I1(aux1[8]),
        .I2(aux0__50_n_5),
        .O(aux0__55_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__55_i_2
       (.I0(aux0__53_n_2),
        .I1(aux1[7]),
        .I2(aux0__50_n_6),
        .O(aux0__55_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__55_i_3
       (.I0(aux0__53_n_2),
        .I1(aux1[6]),
        .I2(aux0__50_n_7),
        .O(aux0__55_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__55_i_4
       (.I0(aux0__53_n_2),
        .I1(aux1[5]),
        .I2(aux0__49_n_4),
        .O(aux0__55_i_4_n_0));
  CARRY4 aux0__56
       (.CI(aux0__55_n_0),
        .CO({aux0__56_n_0,NLW_aux0__56_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__51_n_5,aux0__51_n_6,aux0__51_n_7,aux0__50_n_4}),
        .O({aux0__56_n_4,aux0__56_n_5,aux0__56_n_6,aux0__56_n_7}),
        .S({aux0__56_i_1_n_0,aux0__56_i_2_n_0,aux0__56_i_3_n_0,aux0__56_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__56_i_1
       (.I0(aux0__53_n_2),
        .I1(aux1[12]),
        .I2(aux0__51_n_5),
        .O(aux0__56_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__56_i_2
       (.I0(aux0__53_n_2),
        .I1(aux1[11]),
        .I2(aux0__51_n_6),
        .O(aux0__56_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__56_i_3
       (.I0(aux0__53_n_2),
        .I1(aux1[10]),
        .I2(aux0__51_n_7),
        .O(aux0__56_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__56_i_4
       (.I0(aux0__53_n_2),
        .I1(aux1[9]),
        .I2(aux0__50_n_4),
        .O(aux0__56_i_4_n_0));
  CARRY4 aux0__57
       (.CI(aux0__56_n_0),
        .CO({aux0__57_n_0,NLW_aux0__57_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__52_n_5,aux0__52_n_6,aux0__52_n_7,aux0__51_n_4}),
        .O({aux0__57_n_4,aux0__57_n_5,aux0__57_n_6,aux0__57_n_7}),
        .S({aux0__57_i_1_n_0,aux0__57_i_2_n_0,aux0__57_i_3_n_0,aux0__57_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__57_i_1
       (.I0(aux0__53_n_2),
        .I1(aux1[16]),
        .I2(aux0__52_n_5),
        .O(aux0__57_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__57_i_2
       (.I0(aux0__53_n_2),
        .I1(aux1[15]),
        .I2(aux0__52_n_6),
        .O(aux0__57_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__57_i_3
       (.I0(aux0__53_n_2),
        .I1(aux1[14]),
        .I2(aux0__52_n_7),
        .O(aux0__57_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__57_i_4
       (.I0(aux0__53_n_2),
        .I1(aux1[13]),
        .I2(aux0__51_n_4),
        .O(aux0__57_i_4_n_0));
  CARRY4 aux0__58
       (.CI(aux0__57_n_0),
        .CO({NLW_aux0__58_CO_UNCONNECTED[3:2],aux0__58_n_2,NLW_aux0__58_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__53_n_2,aux0__52_n_4}),
        .O({NLW_aux0__58_O_UNCONNECTED[3:1],aux0__58_n_7}),
        .S({1'b0,1'b0,aux0__58_i_1_n_0,aux0__58_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__58_i_1
       (.I0(aux0__53_n_2),
        .I1(aux0__53_n_7),
        .O(aux0__58_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__58_i_2
       (.I0(aux0__53_n_2),
        .I1(aux1[17]),
        .I2(aux0__52_n_4),
        .O(aux0__58_i_2_n_0));
  CARRY4 aux0__59
       (.CI(1'b0),
        .CO({aux0__59_n_0,NLW_aux0__59_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__58_n_2),
        .DI({aux0__54_n_5,aux0__54_n_6,aux0__54_n_7,\aux_reg_n_0_[4] }),
        .O({aux0__59_n_4,aux0__59_n_5,aux0__59_n_6,aux0__59_n_7}),
        .S({aux0__59_i_2_n_0,aux0__59_i_3_n_0,aux0__59_i_4_n_0,aux0__59_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__59_i_2
       (.I0(aux0__58_n_2),
        .I1(aux1[4]),
        .I2(aux0__54_n_5),
        .O(aux0__59_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__59_i_3
       (.I0(aux0__58_n_2),
        .I1(aux1[3]),
        .I2(aux0__54_n_6),
        .O(aux0__59_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__59_i_4
       (.I0(aux0__58_n_2),
        .I1(aux1[2]),
        .I2(aux0__54_n_7),
        .O(aux0__59_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__59_i_5
       (.I0(aux0__58_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[4] ),
        .O(aux0__59_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__5_i_1
       (.I0(aux0__3_n_1),
        .I1(aux1[8]),
        .I2(aux0__0_n_4),
        .O(aux0__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__5_i_2
       (.I0(aux0__3_n_1),
        .I1(aux1[7]),
        .I2(aux0__0_n_5),
        .O(aux0__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__5_i_3
       (.I0(aux0__3_n_1),
        .I1(aux1[6]),
        .I2(aux0__0_n_6),
        .O(aux0__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__5_i_4
       (.I0(aux0__3_n_1),
        .I1(aux1[5]),
        .I2(aux0__0_n_7),
        .O(aux0__5_i_4_n_0));
  CARRY4 aux0__6
       (.CI(aux0__5_n_0),
        .CO({aux0__6_n_0,NLW_aux0__6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__1_n_4,aux0__1_n_5,aux0__1_n_6,aux0__1_n_7}),
        .O({aux0__6_n_4,aux0__6_n_5,aux0__6_n_6,aux0__6_n_7}),
        .S({aux0__6_i_1_n_0,aux0__6_i_2_n_0,aux0__6_i_3_n_0,aux0__6_i_4_n_0}));
  CARRY4 aux0__60
       (.CI(aux0__59_n_0),
        .CO({aux0__60_n_0,NLW_aux0__60_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__55_n_5,aux0__55_n_6,aux0__55_n_7,aux0__54_n_4}),
        .O({aux0__60_n_4,aux0__60_n_5,aux0__60_n_6,aux0__60_n_7}),
        .S({aux0__60_i_1_n_0,aux0__60_i_2_n_0,aux0__60_i_3_n_0,aux0__60_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__60_i_1
       (.I0(aux0__58_n_2),
        .I1(aux1[8]),
        .I2(aux0__55_n_5),
        .O(aux0__60_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__60_i_2
       (.I0(aux0__58_n_2),
        .I1(aux1[7]),
        .I2(aux0__55_n_6),
        .O(aux0__60_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__60_i_3
       (.I0(aux0__58_n_2),
        .I1(aux1[6]),
        .I2(aux0__55_n_7),
        .O(aux0__60_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__60_i_4
       (.I0(aux0__58_n_2),
        .I1(aux1[5]),
        .I2(aux0__54_n_4),
        .O(aux0__60_i_4_n_0));
  CARRY4 aux0__61
       (.CI(aux0__60_n_0),
        .CO({aux0__61_n_0,NLW_aux0__61_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__56_n_5,aux0__56_n_6,aux0__56_n_7,aux0__55_n_4}),
        .O({aux0__61_n_4,aux0__61_n_5,aux0__61_n_6,aux0__61_n_7}),
        .S({aux0__61_i_1_n_0,aux0__61_i_2_n_0,aux0__61_i_3_n_0,aux0__61_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__61_i_1
       (.I0(aux0__58_n_2),
        .I1(aux1[12]),
        .I2(aux0__56_n_5),
        .O(aux0__61_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__61_i_2
       (.I0(aux0__58_n_2),
        .I1(aux1[11]),
        .I2(aux0__56_n_6),
        .O(aux0__61_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__61_i_3
       (.I0(aux0__58_n_2),
        .I1(aux1[10]),
        .I2(aux0__56_n_7),
        .O(aux0__61_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__61_i_4
       (.I0(aux0__58_n_2),
        .I1(aux1[9]),
        .I2(aux0__55_n_4),
        .O(aux0__61_i_4_n_0));
  CARRY4 aux0__62
       (.CI(aux0__61_n_0),
        .CO({aux0__62_n_0,NLW_aux0__62_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__57_n_5,aux0__57_n_6,aux0__57_n_7,aux0__56_n_4}),
        .O({aux0__62_n_4,aux0__62_n_5,aux0__62_n_6,aux0__62_n_7}),
        .S({aux0__62_i_1_n_0,aux0__62_i_2_n_0,aux0__62_i_3_n_0,aux0__62_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__62_i_1
       (.I0(aux0__58_n_2),
        .I1(aux1[16]),
        .I2(aux0__57_n_5),
        .O(aux0__62_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__62_i_2
       (.I0(aux0__58_n_2),
        .I1(aux1[15]),
        .I2(aux0__57_n_6),
        .O(aux0__62_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__62_i_3
       (.I0(aux0__58_n_2),
        .I1(aux1[14]),
        .I2(aux0__57_n_7),
        .O(aux0__62_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__62_i_4
       (.I0(aux0__58_n_2),
        .I1(aux1[13]),
        .I2(aux0__56_n_4),
        .O(aux0__62_i_4_n_0));
  CARRY4 aux0__63
       (.CI(aux0__62_n_0),
        .CO({NLW_aux0__63_CO_UNCONNECTED[3:2],aux0__63_n_2,NLW_aux0__63_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__58_n_2,aux0__57_n_4}),
        .O({NLW_aux0__63_O_UNCONNECTED[3:1],aux0__63_n_7}),
        .S({1'b0,1'b0,aux0__63_i_1_n_0,aux0__63_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__63_i_1
       (.I0(aux0__58_n_2),
        .I1(aux0__58_n_7),
        .O(aux0__63_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__63_i_2
       (.I0(aux0__58_n_2),
        .I1(aux1[17]),
        .I2(aux0__57_n_4),
        .O(aux0__63_i_2_n_0));
  CARRY4 aux0__64
       (.CI(1'b0),
        .CO({aux0__64_n_0,NLW_aux0__64_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__63_n_2),
        .DI({aux0__59_n_5,aux0__59_n_6,aux0__59_n_7,\aux_reg_n_0_[3] }),
        .O({aux0__64_n_4,aux0__64_n_5,aux0__64_n_6,aux0__64_n_7}),
        .S({aux0__64_i_2_n_0,aux0__64_i_3_n_0,aux0__64_i_4_n_0,aux0__64_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__64_i_2
       (.I0(aux0__63_n_2),
        .I1(aux1[4]),
        .I2(aux0__59_n_5),
        .O(aux0__64_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__64_i_3
       (.I0(aux0__63_n_2),
        .I1(aux1[3]),
        .I2(aux0__59_n_6),
        .O(aux0__64_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__64_i_4
       (.I0(aux0__63_n_2),
        .I1(aux1[2]),
        .I2(aux0__59_n_7),
        .O(aux0__64_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__64_i_5
       (.I0(aux0__63_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[3] ),
        .O(aux0__64_i_5_n_0));
  CARRY4 aux0__65
       (.CI(aux0__64_n_0),
        .CO({aux0__65_n_0,NLW_aux0__65_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__60_n_5,aux0__60_n_6,aux0__60_n_7,aux0__59_n_4}),
        .O({aux0__65_n_4,aux0__65_n_5,aux0__65_n_6,aux0__65_n_7}),
        .S({aux0__65_i_1_n_0,aux0__65_i_2_n_0,aux0__65_i_3_n_0,aux0__65_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__65_i_1
       (.I0(aux0__63_n_2),
        .I1(aux1[8]),
        .I2(aux0__60_n_5),
        .O(aux0__65_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__65_i_2
       (.I0(aux0__63_n_2),
        .I1(aux1[7]),
        .I2(aux0__60_n_6),
        .O(aux0__65_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__65_i_3
       (.I0(aux0__63_n_2),
        .I1(aux1[6]),
        .I2(aux0__60_n_7),
        .O(aux0__65_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__65_i_4
       (.I0(aux0__63_n_2),
        .I1(aux1[5]),
        .I2(aux0__59_n_4),
        .O(aux0__65_i_4_n_0));
  CARRY4 aux0__66
       (.CI(aux0__65_n_0),
        .CO({aux0__66_n_0,NLW_aux0__66_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__61_n_5,aux0__61_n_6,aux0__61_n_7,aux0__60_n_4}),
        .O({aux0__66_n_4,aux0__66_n_5,aux0__66_n_6,aux0__66_n_7}),
        .S({aux0__66_i_1_n_0,aux0__66_i_2_n_0,aux0__66_i_3_n_0,aux0__66_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__66_i_1
       (.I0(aux0__63_n_2),
        .I1(aux1[12]),
        .I2(aux0__61_n_5),
        .O(aux0__66_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__66_i_2
       (.I0(aux0__63_n_2),
        .I1(aux1[11]),
        .I2(aux0__61_n_6),
        .O(aux0__66_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__66_i_3
       (.I0(aux0__63_n_2),
        .I1(aux1[10]),
        .I2(aux0__61_n_7),
        .O(aux0__66_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__66_i_4
       (.I0(aux0__63_n_2),
        .I1(aux1[9]),
        .I2(aux0__60_n_4),
        .O(aux0__66_i_4_n_0));
  CARRY4 aux0__67
       (.CI(aux0__66_n_0),
        .CO({aux0__67_n_0,NLW_aux0__67_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__62_n_5,aux0__62_n_6,aux0__62_n_7,aux0__61_n_4}),
        .O({aux0__67_n_4,aux0__67_n_5,aux0__67_n_6,aux0__67_n_7}),
        .S({aux0__67_i_1_n_0,aux0__67_i_2_n_0,aux0__67_i_3_n_0,aux0__67_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__67_i_1
       (.I0(aux0__63_n_2),
        .I1(aux1[16]),
        .I2(aux0__62_n_5),
        .O(aux0__67_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__67_i_2
       (.I0(aux0__63_n_2),
        .I1(aux1[15]),
        .I2(aux0__62_n_6),
        .O(aux0__67_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__67_i_3
       (.I0(aux0__63_n_2),
        .I1(aux1[14]),
        .I2(aux0__62_n_7),
        .O(aux0__67_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__67_i_4
       (.I0(aux0__63_n_2),
        .I1(aux1[13]),
        .I2(aux0__61_n_4),
        .O(aux0__67_i_4_n_0));
  CARRY4 aux0__68
       (.CI(aux0__67_n_0),
        .CO({NLW_aux0__68_CO_UNCONNECTED[3:2],aux0__68_n_2,NLW_aux0__68_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__63_n_2,aux0__62_n_4}),
        .O({NLW_aux0__68_O_UNCONNECTED[3:1],aux0__68_n_7}),
        .S({1'b0,1'b0,aux0__68_i_1_n_0,aux0__68_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__68_i_1
       (.I0(aux0__63_n_2),
        .I1(aux0__63_n_7),
        .O(aux0__68_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__68_i_2
       (.I0(aux0__63_n_2),
        .I1(aux1[17]),
        .I2(aux0__62_n_4),
        .O(aux0__68_i_2_n_0));
  CARRY4 aux0__69
       (.CI(1'b0),
        .CO({aux0__69_n_0,NLW_aux0__69_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__68_n_2),
        .DI({aux0__64_n_5,aux0__64_n_6,aux0__64_n_7,\aux_reg_n_0_[2] }),
        .O({aux0__69_n_4,aux0__69_n_5,aux0__69_n_6,aux0__69_n_7}),
        .S({aux0__69_i_2_n_0,aux0__69_i_3_n_0,aux0__69_i_4_n_0,aux0__69_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__69_i_2
       (.I0(aux0__68_n_2),
        .I1(aux1[4]),
        .I2(aux0__64_n_5),
        .O(aux0__69_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__69_i_3
       (.I0(aux0__68_n_2),
        .I1(aux1[3]),
        .I2(aux0__64_n_6),
        .O(aux0__69_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__69_i_4
       (.I0(aux0__68_n_2),
        .I1(aux1[2]),
        .I2(aux0__64_n_7),
        .O(aux0__69_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__69_i_5
       (.I0(aux0__68_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[2] ),
        .O(aux0__69_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__6_i_1
       (.I0(aux0__3_n_1),
        .I1(aux1[12]),
        .I2(aux0__1_n_4),
        .O(aux0__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__6_i_2
       (.I0(aux0__3_n_1),
        .I1(aux1[11]),
        .I2(aux0__1_n_5),
        .O(aux0__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__6_i_3
       (.I0(aux0__3_n_1),
        .I1(aux1[10]),
        .I2(aux0__1_n_6),
        .O(aux0__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__6_i_4
       (.I0(aux0__3_n_1),
        .I1(aux1[9]),
        .I2(aux0__1_n_7),
        .O(aux0__6_i_4_n_0));
  CARRY4 aux0__7
       (.CI(aux0__6_n_0),
        .CO({aux0__7_n_0,NLW_aux0__7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__2_n_4,aux0__2_n_5,aux0__2_n_6,aux0__2_n_7}),
        .O({aux0__7_n_4,aux0__7_n_5,aux0__7_n_6,aux0__7_n_7}),
        .S({aux0__7_i_1_n_0,aux0__7_i_2_n_0,aux0__7_i_3_n_0,aux0__7_i_4_n_0}));
  CARRY4 aux0__70
       (.CI(aux0__69_n_0),
        .CO({aux0__70_n_0,NLW_aux0__70_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__65_n_5,aux0__65_n_6,aux0__65_n_7,aux0__64_n_4}),
        .O({aux0__70_n_4,aux0__70_n_5,aux0__70_n_6,aux0__70_n_7}),
        .S({aux0__70_i_1_n_0,aux0__70_i_2_n_0,aux0__70_i_3_n_0,aux0__70_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__70_i_1
       (.I0(aux0__68_n_2),
        .I1(aux1[8]),
        .I2(aux0__65_n_5),
        .O(aux0__70_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__70_i_2
       (.I0(aux0__68_n_2),
        .I1(aux1[7]),
        .I2(aux0__65_n_6),
        .O(aux0__70_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__70_i_3
       (.I0(aux0__68_n_2),
        .I1(aux1[6]),
        .I2(aux0__65_n_7),
        .O(aux0__70_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__70_i_4
       (.I0(aux0__68_n_2),
        .I1(aux1[5]),
        .I2(aux0__64_n_4),
        .O(aux0__70_i_4_n_0));
  CARRY4 aux0__71
       (.CI(aux0__70_n_0),
        .CO({aux0__71_n_0,NLW_aux0__71_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__66_n_5,aux0__66_n_6,aux0__66_n_7,aux0__65_n_4}),
        .O({aux0__71_n_4,aux0__71_n_5,aux0__71_n_6,aux0__71_n_7}),
        .S({aux0__71_i_1_n_0,aux0__71_i_2_n_0,aux0__71_i_3_n_0,aux0__71_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__71_i_1
       (.I0(aux0__68_n_2),
        .I1(aux1[12]),
        .I2(aux0__66_n_5),
        .O(aux0__71_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__71_i_2
       (.I0(aux0__68_n_2),
        .I1(aux1[11]),
        .I2(aux0__66_n_6),
        .O(aux0__71_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__71_i_3
       (.I0(aux0__68_n_2),
        .I1(aux1[10]),
        .I2(aux0__66_n_7),
        .O(aux0__71_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__71_i_4
       (.I0(aux0__68_n_2),
        .I1(aux1[9]),
        .I2(aux0__65_n_4),
        .O(aux0__71_i_4_n_0));
  CARRY4 aux0__72
       (.CI(aux0__71_n_0),
        .CO({aux0__72_n_0,NLW_aux0__72_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__67_n_5,aux0__67_n_6,aux0__67_n_7,aux0__66_n_4}),
        .O({aux0__72_n_4,aux0__72_n_5,aux0__72_n_6,aux0__72_n_7}),
        .S({aux0__72_i_1_n_0,aux0__72_i_2_n_0,aux0__72_i_3_n_0,aux0__72_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__72_i_1
       (.I0(aux0__68_n_2),
        .I1(aux1[16]),
        .I2(aux0__67_n_5),
        .O(aux0__72_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__72_i_2
       (.I0(aux0__68_n_2),
        .I1(aux1[15]),
        .I2(aux0__67_n_6),
        .O(aux0__72_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__72_i_3
       (.I0(aux0__68_n_2),
        .I1(aux1[14]),
        .I2(aux0__67_n_7),
        .O(aux0__72_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__72_i_4
       (.I0(aux0__68_n_2),
        .I1(aux1[13]),
        .I2(aux0__66_n_4),
        .O(aux0__72_i_4_n_0));
  CARRY4 aux0__73
       (.CI(aux0__72_n_0),
        .CO({NLW_aux0__73_CO_UNCONNECTED[3:2],aux0__73_n_2,NLW_aux0__73_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__68_n_2,aux0__67_n_4}),
        .O({NLW_aux0__73_O_UNCONNECTED[3:1],aux0__73_n_7}),
        .S({1'b0,1'b0,aux0__73_i_1_n_0,aux0__73_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__73_i_1
       (.I0(aux0__68_n_2),
        .I1(aux0__68_n_7),
        .O(aux0__73_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__73_i_2
       (.I0(aux0__68_n_2),
        .I1(aux1[17]),
        .I2(aux0__67_n_4),
        .O(aux0__73_i_2_n_0));
  CARRY4 aux0__74
       (.CI(1'b0),
        .CO({aux0__74_n_0,NLW_aux0__74_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__73_n_2),
        .DI({aux0__69_n_5,aux0__69_n_6,aux0__69_n_7,\aux_reg_n_0_[1] }),
        .O({aux0__74_n_4,aux0__74_n_5,aux0__74_n_6,aux0__74_n_7}),
        .S({aux0__74_i_2_n_0,aux0__74_i_3_n_0,aux0__74_i_4_n_0,aux0__74_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__74_i_2
       (.I0(aux0__73_n_2),
        .I1(aux1[4]),
        .I2(aux0__69_n_5),
        .O(aux0__74_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__74_i_3
       (.I0(aux0__73_n_2),
        .I1(aux1[3]),
        .I2(aux0__69_n_6),
        .O(aux0__74_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__74_i_4
       (.I0(aux0__73_n_2),
        .I1(aux1[2]),
        .I2(aux0__69_n_7),
        .O(aux0__74_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__74_i_5
       (.I0(aux0__73_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[1] ),
        .O(aux0__74_i_5_n_0));
  CARRY4 aux0__75
       (.CI(aux0__74_n_0),
        .CO({aux0__75_n_0,NLW_aux0__75_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__70_n_5,aux0__70_n_6,aux0__70_n_7,aux0__69_n_4}),
        .O({aux0__75_n_4,aux0__75_n_5,aux0__75_n_6,aux0__75_n_7}),
        .S({aux0__75_i_1_n_0,aux0__75_i_2_n_0,aux0__75_i_3_n_0,aux0__75_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_i_1
       (.I0(aux0__73_n_2),
        .I1(aux1[8]),
        .I2(aux0__70_n_5),
        .O(aux0__75_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_i_2
       (.I0(aux0__73_n_2),
        .I1(aux1[7]),
        .I2(aux0__70_n_6),
        .O(aux0__75_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_i_3
       (.I0(aux0__73_n_2),
        .I1(aux1[6]),
        .I2(aux0__70_n_7),
        .O(aux0__75_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__75_i_4
       (.I0(aux0__73_n_2),
        .I1(aux1[5]),
        .I2(aux0__69_n_4),
        .O(aux0__75_i_4_n_0));
  CARRY4 aux0__76
       (.CI(aux0__75_n_0),
        .CO({aux0__76_n_0,NLW_aux0__76_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__71_n_5,aux0__71_n_6,aux0__71_n_7,aux0__70_n_4}),
        .O({aux0__76_n_4,aux0__76_n_5,aux0__76_n_6,aux0__76_n_7}),
        .S({aux0__76_i_1_n_0,aux0__76_i_2_n_0,aux0__76_i_3_n_0,aux0__76_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__76_i_1
       (.I0(aux0__73_n_2),
        .I1(aux1[12]),
        .I2(aux0__71_n_5),
        .O(aux0__76_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__76_i_2
       (.I0(aux0__73_n_2),
        .I1(aux1[11]),
        .I2(aux0__71_n_6),
        .O(aux0__76_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__76_i_3
       (.I0(aux0__73_n_2),
        .I1(aux1[10]),
        .I2(aux0__71_n_7),
        .O(aux0__76_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__76_i_4
       (.I0(aux0__73_n_2),
        .I1(aux1[9]),
        .I2(aux0__70_n_4),
        .O(aux0__76_i_4_n_0));
  CARRY4 aux0__77
       (.CI(aux0__76_n_0),
        .CO({aux0__77_n_0,NLW_aux0__77_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({aux0__72_n_5,aux0__72_n_6,aux0__72_n_7,aux0__71_n_4}),
        .O({NLW_aux0__77_O_UNCONNECTED[3],aux0__77_n_5,aux0__77_n_6,aux0__77_n_7}),
        .S({aux0__77_i_1_n_0,aux0__77_i_2_n_0,aux0__77_i_3_n_0,aux0__77_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__77_i_1
       (.I0(aux0__73_n_2),
        .I1(aux1[16]),
        .I2(aux0__72_n_5),
        .O(aux0__77_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__77_i_2
       (.I0(aux0__73_n_2),
        .I1(aux1[15]),
        .I2(aux0__72_n_6),
        .O(aux0__77_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__77_i_3
       (.I0(aux0__73_n_2),
        .I1(aux1[14]),
        .I2(aux0__72_n_7),
        .O(aux0__77_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__77_i_4
       (.I0(aux0__73_n_2),
        .I1(aux1[13]),
        .I2(aux0__71_n_4),
        .O(aux0__77_i_4_n_0));
  CARRY4 aux0__78
       (.CI(aux0__77_n_0),
        .CO({NLW_aux0__78_CO_UNCONNECTED[3:2],aux0__78_n_2,NLW_aux0__78_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__73_n_2,aux0__72_n_4}),
        .O(NLW_aux0__78_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,aux0__78_i_1_n_0,aux0__78_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__78_i_1
       (.I0(aux0__73_n_2),
        .I1(aux0__73_n_7),
        .O(aux0__78_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__78_i_2
       (.I0(aux0__73_n_2),
        .I1(aux1[17]),
        .I2(aux0__72_n_4),
        .O(aux0__78_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__7_i_1
       (.I0(aux0__3_n_1),
        .I1(aux1[16]),
        .I2(aux0__2_n_4),
        .O(aux0__7_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__7_i_2
       (.I0(aux0__3_n_1),
        .I1(aux1[15]),
        .I2(aux0__2_n_5),
        .O(aux0__7_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__7_i_3
       (.I0(aux0__3_n_1),
        .I1(aux1[14]),
        .I2(aux0__2_n_6),
        .O(aux0__7_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__7_i_4
       (.I0(aux0__3_n_1),
        .I1(aux1[13]),
        .I2(aux0__2_n_7),
        .O(aux0__7_i_4_n_0));
  CARRY4 aux0__8
       (.CI(aux0__7_n_0),
        .CO({NLW_aux0__8_CO_UNCONNECTED[3:2],aux0__8_n_2,NLW_aux0__8_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__3_n_1,aux0__3_n_7}),
        .O({NLW_aux0__8_O_UNCONNECTED[3:1],aux0__8_n_7}),
        .S({1'b0,1'b0,aux0__8_i_1_n_0,aux0__8_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__8_i_1
       (.I0(aux0__3_n_1),
        .I1(aux0__3_n_6),
        .O(aux0__8_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__8_i_2
       (.I0(aux0__3_n_1),
        .I1(aux1[17]),
        .I2(aux0__3_n_7),
        .O(aux0__8_i_2_n_0));
  CARRY4 aux0__9
       (.CI(1'b0),
        .CO({aux0__9_n_0,NLW_aux0__9_CO_UNCONNECTED[2:0]}),
        .CYINIT(aux0__8_n_2),
        .DI({aux0__4_n_5,aux0__4_n_6,aux0__4_n_7,\aux_reg_n_0_[14] }),
        .O({aux0__9_n_4,aux0__9_n_5,aux0__9_n_6,aux0__9_n_7}),
        .S({aux0__9_i_2_n_0,aux0__9_i_3_n_0,aux0__9_i_4_n_0,aux0__9_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__9_i_2
       (.I0(aux0__8_n_2),
        .I1(aux1[4]),
        .I2(aux0__4_n_5),
        .O(aux0__9_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__9_i_3
       (.I0(aux0__8_n_2),
        .I1(aux1[3]),
        .I2(aux0__4_n_6),
        .O(aux0__9_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__9_i_4
       (.I0(aux0__8_n_2),
        .I1(aux1[2]),
        .I2(aux0__4_n_7),
        .O(aux0__9_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__9_i_5
       (.I0(aux0__8_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[14] ),
        .O(aux0__9_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_i_1
       (.I0(aux1[3]),
        .O(aux0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0_i_10
       (.I0(\div_reg_n_0_[3] ),
        .I1(\div_reg_n_0_[1] ),
        .O(aux0_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0_i_11
       (.I0(\div_reg_n_0_[2] ),
        .I1(\div_reg_n_0_[0] ),
        .O(aux0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_i_2
       (.I0(aux1[2]),
        .O(aux0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_i_3
       (.I0(\div_reg_n_0_[0] ),
        .O(aux0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_i_4
       (.I0(aux1[3]),
        .O(aux0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_i_5
       (.I0(aux1[2]),
        .O(aux0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_i_6
       (.I0(\div_reg_n_0_[0] ),
        .O(aux0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0_i_7
       (.I0(\aux_reg_n_0_[15] ),
        .O(aux0_i_7_n_0));
  CARRY4 aux0_i_8
       (.CI(1'b0),
        .CO({aux0_i_8_n_0,NLW_aux0_i_8_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\div_reg_n_0_[4] ,\div_reg_n_0_[3] ,\div_reg_n_0_[2] ,1'b0}),
        .O(aux1[5:2]),
        .S({aux0_i_9_n_0,aux0_i_10_n_0,aux0_i_11_n_0,\div_reg_n_0_[1] }));
  LUT2 #(
    .INIT(4'h6)) 
    aux0_i_9
       (.I0(\div_reg_n_0_[4] ),
        .I1(\div_reg_n_0_[2] ),
        .O(aux0_i_9_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \aux[0]_i_1 
       (.I0(In_Data[0]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux_Count_reg_n_0_[0] ),
        .I3(\aux[15]_i_3_n_0 ),
        .I4(\aux_reg_n_0_[0] ),
        .O(\aux[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \aux[10]_i_1 
       (.I0(In_Data[10]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux[10]_i_2_n_0 ),
        .O(\aux[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB8B88BBB8888B)) 
    \aux[10]_i_2 
       (.I0(\aux_Count_reg_n_0_[10] ),
        .I1(\aux[15]_i_3_n_0 ),
        .I2(aux0__78_n_2),
        .I3(\aux[11]_i_3_n_0 ),
        .I4(aux0__76_n_6),
        .I5(aux1[10]),
        .O(\aux[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \aux[11]_i_1 
       (.I0(In_Data[11]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux_Count_reg_n_0_[14] ),
        .I3(\aux[15]_i_3_n_0 ),
        .I4(data1[11]),
        .O(\aux[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFE1501BFAB4054)) 
    \aux[11]_i_2 
       (.I0(aux0__78_n_2),
        .I1(aux0__76_n_6),
        .I2(aux1[10]),
        .I3(\aux[11]_i_3_n_0 ),
        .I4(aux0__76_n_5),
        .I5(aux1[11]),
        .O(data1[11]));
  LUT5 #(
    .INIT(32'h001717FF)) 
    \aux[11]_i_3 
       (.I0(\aux[8]_i_3_n_0 ),
        .I1(aux1[8]),
        .I2(aux0__75_n_4),
        .I3(aux0__76_n_7),
        .I4(aux1[9]),
        .O(\aux[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \aux[12]_i_1 
       (.I0(In_Data[12]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux[12]_i_2_n_0 ),
        .O(\aux[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB8B88BBB8888B)) 
    \aux[12]_i_2 
       (.I0(\aux_Count_reg_n_0_[14] ),
        .I1(\aux[15]_i_3_n_0 ),
        .I2(aux0__78_n_2),
        .I3(\aux[12]_i_3_n_0 ),
        .I4(aux0__76_n_4),
        .I5(aux1[12]),
        .O(\aux[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0303031303130333)) 
    \aux[12]_i_3 
       (.I0(\aux[8]_i_3_n_0 ),
        .I1(\aux[12]_i_4_n_0 ),
        .I2(\aux[15]_i_11_n_0 ),
        .I3(\aux[12]_i_5_n_0 ),
        .I4(aux1[8]),
        .I5(aux0__75_n_4),
        .O(\aux[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \aux[12]_i_4 
       (.I0(aux1[10]),
        .I1(aux0__76_n_6),
        .I2(aux1[11]),
        .I3(aux0__76_n_5),
        .O(\aux[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \aux[12]_i_5 
       (.I0(aux1[9]),
        .I1(aux0__76_n_7),
        .O(\aux[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \aux[13]_i_1 
       (.I0(In_Data[13]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux[13]_i_2_n_0 ),
        .O(\aux[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB88BBB88BB88B88B)) 
    \aux[13]_i_2 
       (.I0(\aux_Count_reg_n_0_[14] ),
        .I1(\aux[15]_i_3_n_0 ),
        .I2(aux0__78_n_2),
        .I3(aux0__77_n_7),
        .I4(\aux[15]_i_7_n_0 ),
        .I5(aux1[13]),
        .O(\aux[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \aux[14]_i_1 
       (.I0(In_Data[14]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux_Count_reg_n_0_[14] ),
        .I3(\aux[15]_i_3_n_0 ),
        .I4(data1[14]),
        .O(\aux[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFE1501BFAB4054)) 
    \aux[14]_i_2 
       (.I0(aux0__78_n_2),
        .I1(aux1[13]),
        .I2(aux0__77_n_7),
        .I3(\aux[15]_i_7_n_0 ),
        .I4(aux0__77_n_6),
        .I5(aux1[14]),
        .O(data1[14]));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \aux[15]_i_1 
       (.I0(aux_Count),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\state_reg_reg_n_0_[2] ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(reset_IBUF),
        .I5(tick_reg),
        .O(\aux[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \aux[15]_i_10 
       (.I0(aux1[8]),
        .I1(aux0__75_n_4),
        .O(\aux[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEE0EEE00000)) 
    \aux[15]_i_11 
       (.I0(aux0__76_n_7),
        .I1(aux1[9]),
        .I2(aux1[11]),
        .I3(aux0__76_n_5),
        .I4(aux1[10]),
        .I5(aux0__76_n_6),
        .O(\aux[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \aux[15]_i_12 
       (.I0(aux0__75_n_4),
        .I1(aux1[8]),
        .I2(aux0__76_n_7),
        .I3(aux1[9]),
        .I4(\aux[15]_i_11_n_0 ),
        .I5(\aux[12]_i_4_n_0 ),
        .O(\aux[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \aux[15]_i_2 
       (.I0(In_Data[15]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux_Count_reg_n_0_[14] ),
        .I3(\aux[15]_i_3_n_0 ),
        .I4(data1[15]),
        .O(\aux[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \aux[15]_i_3 
       (.I0(\aux[15]_i_5_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\div_reg_n_0_[11] ),
        .I3(\div_reg_n_0_[13] ),
        .I4(\aux[15]_i_6_n_0 ),
        .O(\aux[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99999CCCCCCCC999)) 
    \aux[15]_i_4 
       (.I0(aux0__78_n_2),
        .I1(aux0__77_n_5),
        .I2(\aux[15]_i_7_n_0 ),
        .I3(\aux[15]_i_8_n_0 ),
        .I4(\aux[15]_i_9_n_0 ),
        .I5(aux1[15]),
        .O(data1[15]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \aux[15]_i_5 
       (.I0(\div_reg_n_0_[7] ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\div_reg_n_0_[9] ),
        .I3(\div_reg_n_0_[8] ),
        .O(\aux[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \aux[15]_i_6 
       (.I0(\div_reg_n_0_[1] ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\div_reg_n_0_[2] ),
        .I3(\div_reg_n_0_[3] ),
        .I4(\div_reg_n_0_[5] ),
        .I5(\div_reg_n_0_[4] ),
        .O(\aux[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1111111171777777)) 
    \aux[15]_i_7 
       (.I0(aux1[12]),
        .I1(aux0__76_n_4),
        .I2(\aux[15]_i_10_n_0 ),
        .I3(\aux[15]_i_11_n_0 ),
        .I4(\aux[8]_i_3_n_0 ),
        .I5(\aux[15]_i_12_n_0 ),
        .O(\aux[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0770)) 
    \aux[15]_i_8 
       (.I0(aux0__77_n_6),
        .I1(aux1[14]),
        .I2(aux0__77_n_7),
        .I3(aux1[13]),
        .O(\aux[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \aux[15]_i_9 
       (.I0(aux1[13]),
        .I1(aux0__77_n_7),
        .I2(aux1[14]),
        .I3(aux0__77_n_6),
        .O(\aux[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \aux[1]_i_1 
       (.I0(In_Data[1]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux[1]_i_2_n_0 ),
        .O(\aux[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \aux[1]_i_2 
       (.I0(\aux_Count_reg_n_0_[1] ),
        .I1(\aux[15]_i_3_n_0 ),
        .I2(aux0__74_n_7),
        .I3(aux0__78_n_2),
        .I4(\div_reg_n_0_[0] ),
        .O(\aux[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \aux[2]_i_1 
       (.I0(In_Data[2]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux_Count_reg_n_0_[2] ),
        .I3(\aux[15]_i_3_n_0 ),
        .I4(data1[2]),
        .O(\aux[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC9999CCC)) 
    \aux[2]_i_2 
       (.I0(aux0__78_n_2),
        .I1(aux0__74_n_6),
        .I2(\div_reg_n_0_[0] ),
        .I3(aux0__74_n_7),
        .I4(aux1[2]),
        .O(data1[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \aux[3]_i_1 
       (.I0(In_Data[3]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux_Count_reg_n_0_[3] ),
        .I3(\aux[15]_i_3_n_0 ),
        .I4(data1[3]),
        .O(\aux[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBBB0444AEEE5111)) 
    \aux[3]_i_2 
       (.I0(aux0__78_n_2),
        .I1(\aux[3]_i_3_n_0 ),
        .I2(aux1[2]),
        .I3(aux0__74_n_6),
        .I4(aux0__74_n_5),
        .I5(aux1[3]),
        .O(data1[3]));
  LUT4 #(
    .INIT(16'h777F)) 
    \aux[3]_i_3 
       (.I0(aux0__74_n_7),
        .I1(\div_reg_n_0_[0] ),
        .I2(aux0__74_n_6),
        .I3(aux1[2]),
        .O(\aux[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \aux[4]_i_1 
       (.I0(In_Data[4]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux[4]_i_2_n_0 ),
        .O(\aux[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888BB8BB8B88)) 
    \aux[4]_i_2 
       (.I0(\aux_Count_reg_n_0_[4] ),
        .I1(\aux[15]_i_3_n_0 ),
        .I2(aux0__78_n_2),
        .I3(\aux[5]_i_3_n_0 ),
        .I4(aux0__74_n_4),
        .I5(aux1[4]),
        .O(\aux[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \aux[5]_i_1 
       (.I0(In_Data[5]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux_Count_reg_n_0_[5] ),
        .I3(\aux[15]_i_3_n_0 ),
        .I4(data1[5]),
        .O(\aux[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEA0115ABBF5440)) 
    \aux[5]_i_2 
       (.I0(aux0__78_n_2),
        .I1(aux1[4]),
        .I2(aux0__74_n_4),
        .I3(\aux[5]_i_3_n_0 ),
        .I4(aux0__75_n_7),
        .I5(aux1[5]),
        .O(data1[5]));
  LUT6 #(
    .INIT(64'hEEE8E888E888E888)) 
    \aux[5]_i_3 
       (.I0(aux0__74_n_5),
        .I1(aux1[3]),
        .I2(aux0__74_n_6),
        .I3(aux1[2]),
        .I4(aux0__74_n_7),
        .I5(\div_reg_n_0_[0] ),
        .O(\aux[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \aux[6]_i_1 
       (.I0(In_Data[6]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux[6]_i_2_n_0 ),
        .O(\aux[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB8B88BBB8888B)) 
    \aux[6]_i_2 
       (.I0(\aux_Count_reg_n_0_[6] ),
        .I1(\aux[15]_i_3_n_0 ),
        .I2(aux0__78_n_2),
        .I3(\aux[7]_i_3_n_0 ),
        .I4(aux0__75_n_6),
        .I5(aux1[6]),
        .O(\aux[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \aux[7]_i_1 
       (.I0(In_Data[7]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux_Count_reg_n_0_[7] ),
        .I3(\aux[15]_i_3_n_0 ),
        .I4(data1[7]),
        .O(\aux[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFE1501BFAB4054)) 
    \aux[7]_i_2 
       (.I0(aux0__78_n_2),
        .I1(aux0__75_n_6),
        .I2(aux1[6]),
        .I3(\aux[7]_i_3_n_0 ),
        .I4(aux0__75_n_5),
        .I5(aux1[7]),
        .O(data1[7]));
  LUT5 #(
    .INIT(32'h001717FF)) 
    \aux[7]_i_3 
       (.I0(\aux[5]_i_3_n_0 ),
        .I1(aux0__74_n_4),
        .I2(aux1[4]),
        .I3(aux0__75_n_7),
        .I4(aux1[5]),
        .O(\aux[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \aux[8]_i_1 
       (.I0(In_Data[8]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux[8]_i_2_n_0 ),
        .O(\aux[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888BB8BB8B88)) 
    \aux[8]_i_2 
       (.I0(\aux_Count_reg_n_0_[8] ),
        .I1(\aux[15]_i_3_n_0 ),
        .I2(aux0__78_n_2),
        .I3(\aux[8]_i_3_n_0 ),
        .I4(aux0__75_n_4),
        .I5(aux1[8]),
        .O(\aux[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FF00FFFFFF00)) 
    \aux[8]_i_3 
       (.I0(aux0__74_n_4),
        .I1(aux1[4]),
        .I2(\aux[5]_i_3_n_0 ),
        .I3(\aux[8]_i_4_n_0 ),
        .I4(\aux[8]_i_5_n_0 ),
        .I5(\aux[8]_i_6_n_0 ),
        .O(\aux[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \aux[8]_i_4 
       (.I0(aux1[6]),
        .I1(aux0__75_n_6),
        .I2(aux1[7]),
        .I3(aux0__75_n_5),
        .O(\aux[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEE0EEE00000)) 
    \aux[8]_i_5 
       (.I0(aux1[6]),
        .I1(aux0__75_n_6),
        .I2(aux1[7]),
        .I3(aux0__75_n_5),
        .I4(aux0__75_n_7),
        .I5(aux1[5]),
        .O(\aux[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \aux[8]_i_6 
       (.I0(aux0__74_n_4),
        .I1(aux1[4]),
        .I2(aux0__75_n_7),
        .I3(aux1[5]),
        .O(\aux[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \aux[9]_i_1 
       (.I0(In_Data[9]),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\aux[9]_i_2_n_0 ),
        .O(\aux[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB8B88BBB8888B)) 
    \aux[9]_i_2 
       (.I0(\aux_Count_reg_n_0_[9] ),
        .I1(\aux[15]_i_3_n_0 ),
        .I2(aux0__78_n_2),
        .I3(\aux[9]_i_3_n_0 ),
        .I4(aux0__76_n_7),
        .I5(aux1[9]),
        .O(\aux[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \aux[9]_i_3 
       (.I0(\aux[8]_i_3_n_0 ),
        .I1(aux1[8]),
        .I2(aux0__75_n_4),
        .O(\aux[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \aux_Count[14]_i_1 
       (.I0(acc_sended),
        .I1(\aux_Count[14]_i_2_n_0 ),
        .I2(tick_reg),
        .I3(\state_reg_reg_n_0_[2] ),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(reset_IBUF),
        .O(aux_Count));
  LUT4 #(
    .INIT(16'h0010)) 
    \aux_Count[14]_i_2 
       (.I0(din),
        .I1(Q[6]),
        .I2(\state_reg_reg_n_0_[0] ),
        .I3(\aux_Count[14]_i_3_n_0 ),
        .O(\aux_Count[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \aux_Count[14]_i_3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\aux_Count[14]_i_3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [0]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [10]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[10] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(1'b0),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[14] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [1]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [2]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [3]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [4]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [5]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [6]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[6] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [7]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[7] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [8]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[8] ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(aux_Count),
        .D(\aux_PC_reg[10] [9]),
        .PRE(reset_IBUF),
        .Q(\aux_Count_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[0]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[10]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[11]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[12]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[13]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[14]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[15]_i_2_n_0 ),
        .Q(\aux_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[1]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[2]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[3]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[4]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[5]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[6]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[7]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[8]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\aux[9]_i_1_n_0 ),
        .Q(\aux_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_2 
       (.I0(din),
        .I1(out),
        .O(D));
  LUT6 #(
    .INIT(64'h0202220223222323)) 
    \div[0]_i_1 
       (.I0(\div[0]_i_2_n_0 ),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\div[1]_i_2_n_0 ),
        .I3(\div_reg_n_0_[1] ),
        .I4(\div_reg_n_0_[2] ),
        .I5(\div[0]_i_3_n_0 ),
        .O(\div[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3C6969C3)) 
    \div[0]_i_2 
       (.I0(\div_reg_n_0_[2] ),
        .I1(\div[3]_i_2_n_0 ),
        .I2(\div_reg_n_0_[4] ),
        .I3(\div_reg_n_0_[3] ),
        .I4(\div[2]_i_2_n_0 ),
        .O(\div[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \div[0]_i_3 
       (.I0(\div_reg_n_0_[2] ),
        .I1(\div[2]_i_2_n_0 ),
        .I2(\div_reg_n_0_[3] ),
        .O(\div[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \div[10]_i_1 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\div_reg_n_0_[13] ),
        .O(\div[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0028)) 
    \div[13]_i_1 
       (.I0(\div[13]_i_2_n_0 ),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\state_reg_reg_n_0_[1] ),
        .I3(reset_IBUF),
        .O(div));
  LUT6 #(
    .INIT(64'hF22FF222F000F000)) 
    \div[13]_i_2 
       (.I0(\aux_Count[14]_i_2_n_0 ),
        .I1(acc_sended),
        .I2(\state_reg_reg_n_0_[0] ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\aux[15]_i_3_n_0 ),
        .I5(tick_reg),
        .O(\div[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \div[1]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\div[1]_i_2_n_0 ),
        .O(\div[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CF04C04DFCDF0CF)) 
    \div[1]_i_2 
       (.I0(\div_reg_n_0_[2] ),
        .I1(\div[2]_i_2_n_0 ),
        .I2(\div[3]_i_2_n_0 ),
        .I3(\div_reg_n_0_[4] ),
        .I4(\div_reg_n_0_[3] ),
        .I5(\div[1]_i_3_n_0 ),
        .O(\div[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \div[1]_i_3 
       (.I0(\div[4]_i_2_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\div_reg_n_0_[5] ),
        .O(\div[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \div[2]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\div[2]_i_2_n_0 ),
        .O(\div[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD4854E54D58D5ED4)) 
    \div[2]_i_2 
       (.I0(\div[2]_i_3_n_0 ),
        .I1(\div[3]_i_2_n_0 ),
        .I2(\div_reg_n_0_[5] ),
        .I3(\div_reg_n_0_[4] ),
        .I4(\div[4]_i_2_n_0 ),
        .I5(\div_reg_n_0_[3] ),
        .O(\div[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \div[2]_i_3 
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div[5]_i_2_n_0 ),
        .I2(\div_reg_n_0_[5] ),
        .O(\div[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \div[3]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\div[3]_i_2_n_0 ),
        .O(\div[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2200664D4D99FFBB)) 
    \div[3]_i_2 
       (.I0(\div[5]_i_2_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\div_reg_n_0_[4] ),
        .I3(\div_reg_n_0_[5] ),
        .I4(\div[4]_i_2_n_0 ),
        .I5(\div[3]_i_3_n_0 ),
        .O(\div[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \div[3]_i_3 
       (.I0(\div[6]_i_2_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\div_reg_n_0_[6] ),
        .O(\div[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \div[4]_i_1 
       (.I0(\div[4]_i_2_n_0 ),
        .I1(\state_reg_reg_n_0_[1] ),
        .O(\div[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB052BDF69042B5F2)) 
    \div[4]_i_2 
       (.I0(\div_reg_n_0_[7] ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\div[4]_i_3_n_0 ),
        .I3(\div[6]_i_2_n_0 ),
        .I4(\div[5]_i_2_n_0 ),
        .I5(\div_reg_n_0_[5] ),
        .O(\div[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5E7AA185A5975A68)) 
    \div[4]_i_3 
       (.I0(\div_reg_n_0_[11] ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\div_reg_n_0_[10] ),
        .I3(\div_reg_n_0_[9] ),
        .I4(\div_reg_n_0_[7] ),
        .I5(\div_reg_n_0_[8] ),
        .O(\div[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \div[5]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\div[5]_i_2_n_0 ),
        .O(\div[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h624062D0F4B9FDB9)) 
    \div[5]_i_2 
       (.I0(\div[5]_i_3_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\div[6]_i_2_n_0 ),
        .I3(\div_reg_n_0_[7] ),
        .I4(\div_reg_n_0_[6] ),
        .I5(\div[5]_i_4_n_0 ),
        .O(\div[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0C1071F)) 
    \div[5]_i_3 
       (.I0(\div_reg_n_0_[8] ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\div_reg_n_0_[10] ),
        .I3(\div_reg_n_0_[13] ),
        .I4(\div_reg_n_0_[11] ),
        .O(\div[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h6AD5952A)) 
    \div[5]_i_4 
       (.I0(\div_reg_n_0_[13] ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\div_reg_n_0_[11] ),
        .I3(\div_reg_n_0_[9] ),
        .I4(\div_reg_n_0_[8] ),
        .O(\div[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \div[6]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\div[6]_i_2_n_0 ),
        .O(\div[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h311CC7737331CCC7)) 
    \div[6]_i_2 
       (.I0(\div_reg_n_0_[7] ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\div_reg_n_0_[10] ),
        .I3(\div_reg_n_0_[11] ),
        .I4(\div_reg_n_0_[9] ),
        .I5(\div_reg_n_0_[8] ),
        .O(\div[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1154154411441440)) 
    \div[7]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\div_reg_n_0_[13] ),
        .I3(\div_reg_n_0_[10] ),
        .I4(\div_reg_n_0_[9] ),
        .I5(\div_reg_n_0_[8] ),
        .O(\div[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5DF5F5F5)) 
    \div[8]_i_1 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\div_reg_n_0_[13] ),
        .I3(\div_reg_n_0_[10] ),
        .I4(\div_reg_n_0_[11] ),
        .O(\div[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDFF5)) 
    \div[9]_i_1 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\div_reg_n_0_[11] ),
        .I3(\div_reg_n_0_[13] ),
        .O(\div[9]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[0]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[10]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[10] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(1'b0),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[11] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\state_reg_reg_n_0_[2] ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[13] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[1]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[2]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[3]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[4]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[5]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[6]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[6] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[7]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[7] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[8]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[8] ));
  FDPE #(
    .INIT(1'b1)) 
    \div_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(div),
        .D(\div[9]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\div_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hF0F0B0F0)) 
    first_i_1
       (.I0(\state_reg_reg_n_0_[0] ),
        .I1(finish_program),
        .I2(first),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\state_reg_reg_n_0_[2] ),
        .O(first_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    first_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(first_i_1_n_0),
        .PRE(reset_IBUF),
        .Q(first));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \i[0]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .O(\i[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \i[1]_i_1 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\state_reg_reg_n_0_[2] ),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \i[2]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[2] ),
        .O(\i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7F80FFFF)) 
    \i[3]_i_1 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\state_reg_reg_n_0_[2] ),
        .O(\i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \i[4]_i_1 
       (.I0(\i_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[1] ),
        .I4(\i_reg_n_0_[4] ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[5]_i_1 
       (.I0(\i[5]_i_2_n_0 ),
        .I1(\state_reg_reg_n_0_[2] ),
        .O(\i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i[5]_i_2 
       (.I0(\i_reg_n_0_[5] ),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[1] ),
        .I5(\i_reg_n_0_[4] ),
        .O(\i[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \i[6]_i_1 
       (.I0(\i[7]_i_4_n_0 ),
        .I1(\i_reg_n_0_[6] ),
        .I2(\state_reg_reg_n_0_[2] ),
        .O(\i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000C0C00000A0000)) 
    \i[7]_i_1 
       (.I0(\state_reg[0]_i_3_n_0 ),
        .I1(tick_reg),
        .I2(reset_IBUF),
        .I3(\state_reg_reg_n_0_[0] ),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(i));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \i[7]_i_2 
       (.I0(\i_reg_n_0_[6] ),
        .I1(\i[7]_i_4_n_0 ),
        .I2(\i_reg_n_0_[7] ),
        .I3(\state_reg_reg_n_0_[2] ),
        .O(\i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i[7]_i_4 
       (.I0(\i_reg_n_0_[5] ),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[2] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[1] ),
        .I5(\i_reg_n_0_[4] ),
        .O(\i[7]_i_4_n_0 ));
  CARRY4 i___839_carry__0_i_1
       (.CI(i___839_carry_i_2_n_0),
        .CO({i___839_carry__0_i_1_n_0,NLW_i___839_carry__0_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({i___839_carry__0_i_6_n_5,i___839_carry__0_i_6_n_6,i___839_carry__0_i_6_n_7,i___839_carry_i_12_n_4}),
        .O({i___839_carry__0_i_1_n_4,i___839_carry__0_i_1_n_5,i___839_carry__0_i_1_n_6,i___839_carry__0_i_1_n_7}),
        .S({i___839_carry__0_i_7_n_0,i___839_carry__0_i_8_n_0,i___839_carry__0_i_9_n_0,i___839_carry__0_i_10_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_10
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(i___839_carry_i_12_n_4),
        .O(i___839_carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_11
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(i___839_carry_i_16_n_5),
        .O(i___839_carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_12
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(i___839_carry_i_16_n_6),
        .O(i___839_carry__0_i_12_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_13
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(i___839_carry_i_16_n_7),
        .O(i___839_carry__0_i_13_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_14
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(i___839_carry_i_21_n_4),
        .O(i___839_carry__0_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_2
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[7] ),
        .I2(i___839_carry__0_i_1_n_4),
        .O(i___839_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_3
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[6] ),
        .I2(i___839_carry__0_i_1_n_5),
        .O(i___839_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_4
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[5] ),
        .I2(i___839_carry__0_i_1_n_6),
        .O(i___839_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_5
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[4] ),
        .I2(i___839_carry__0_i_1_n_7),
        .O(i___839_carry__0_i_5_n_0));
  CARRY4 i___839_carry__0_i_6
       (.CI(i___839_carry_i_12_n_0),
        .CO({i___839_carry__0_i_6_n_0,NLW_i___839_carry__0_i_6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({i___839_carry_i_16_n_5,i___839_carry_i_16_n_6,i___839_carry_i_16_n_7,i___839_carry_i_21_n_4}),
        .O({i___839_carry__0_i_6_n_4,i___839_carry__0_i_6_n_5,i___839_carry__0_i_6_n_6,i___839_carry__0_i_6_n_7}),
        .S({i___839_carry__0_i_11_n_0,i___839_carry__0_i_12_n_0,i___839_carry__0_i_13_n_0,i___839_carry__0_i_14_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_7
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(i___839_carry__0_i_6_n_5),
        .O(i___839_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_8
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(i___839_carry__0_i_6_n_6),
        .O(i___839_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__0_i_9
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(i___839_carry__0_i_6_n_7),
        .O(i___839_carry__0_i_9_n_0));
  CARRY4 i___839_carry__1_i_1
       (.CI(i___839_carry__0_i_1_n_0),
        .CO({i___839_carry__1_i_1_n_0,NLW_i___839_carry__1_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({i___839_carry_i_7_n_5,i___839_carry_i_7_n_6,i___839_carry_i_7_n_7,i___839_carry__0_i_6_n_4}),
        .O({i___839_carry__1_i_1_n_4,i___839_carry__1_i_1_n_5,i___839_carry__1_i_1_n_6,i___839_carry__1_i_1_n_7}),
        .S({i___839_carry__1_i_6_n_0,i___839_carry__1_i_7_n_0,i___839_carry__1_i_8_n_0,i___839_carry__1_i_9_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__1_i_2
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[11] ),
        .I2(i___839_carry__1_i_1_n_4),
        .O(i___839_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__1_i_3
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[10] ),
        .I2(i___839_carry__1_i_1_n_5),
        .O(i___839_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__1_i_4
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[9] ),
        .I2(i___839_carry__1_i_1_n_6),
        .O(i___839_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__1_i_5
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[8] ),
        .I2(i___839_carry__1_i_1_n_7),
        .O(i___839_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__1_i_6
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(i___839_carry_i_7_n_5),
        .O(i___839_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__1_i_7
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(i___839_carry_i_7_n_6),
        .O(i___839_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__1_i_8
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(i___839_carry_i_7_n_7),
        .O(i___839_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__1_i_9
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(i___839_carry__0_i_6_n_4),
        .O(i___839_carry__1_i_9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___839_carry__2_i_1
       (.I0(i___839_carry_i_1_n_0),
        .I1(i___839_carry_i_1_n_5),
        .O(i___839_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__2_i_2
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[13] ),
        .I2(i___839_carry_i_1_n_6),
        .O(i___839_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry__2_i_3
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[11] ),
        .I2(i___839_carry_i_1_n_7),
        .O(i___839_carry__2_i_3_n_0));
  CARRY4 i___839_carry_i_1
       (.CI(i___839_carry__1_i_1_n_0),
        .CO({i___839_carry_i_1_n_0,NLW_i___839_carry_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[2]_i_2_n_0 ,\out_reg[2]_i_2_n_6 ,\out_reg[2]_i_2_n_7 ,i___839_carry_i_7_n_4}),
        .O({NLW_i___839_carry_i_1_O_UNCONNECTED[3],i___839_carry_i_1_n_5,i___839_carry_i_1_n_6,i___839_carry_i_1_n_7}),
        .S({i___839_carry_i_8_n_0,i___839_carry_i_9_n_0,i___839_carry_i_10_n_0,i___839_carry_i_11_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_10
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[2]_i_2_n_7 ),
        .O(i___839_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_11
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(i___839_carry_i_7_n_4),
        .O(i___839_carry_i_11_n_0));
  CARRY4 i___839_carry_i_12
       (.CI(1'b0),
        .CO({i___839_carry_i_12_n_0,NLW_i___839_carry_i_12_CO_UNCONNECTED[2:0]}),
        .CYINIT(\out_reg[3]_i_2_n_0 ),
        .DI({i___839_carry_i_21_n_5,i___839_carry_i_21_n_6,\aux_reg_n_0_[2] ,1'b0}),
        .O({i___839_carry_i_12_n_4,i___839_carry_i_12_n_5,i___839_carry_i_12_n_6,NLW_i___839_carry_i_12_O_UNCONNECTED[0]}),
        .S({i___839_carry_i_22_n_0,i___839_carry_i_23_n_0,i___839_carry_i_24_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_13
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(i___839_carry_i_12_n_5),
        .O(i___839_carry_i_13_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_14
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(i___839_carry_i_12_n_6),
        .O(i___839_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_15
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[1] ),
        .O(i___839_carry_i_15_n_0));
  CARRY4 i___839_carry_i_16
       (.CI(i___839_carry_i_21_n_0),
        .CO({i___839_carry_i_16_n_0,NLW_i___839_carry_i_16_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_60_n_5 ,\out_reg[7]_i_60_n_6 ,\out_reg[7]_i_60_n_7 ,i___839_carry_i_25_n_4}),
        .O({i___839_carry_i_16_n_4,i___839_carry_i_16_n_5,i___839_carry_i_16_n_6,i___839_carry_i_16_n_7}),
        .S({i___839_carry_i_26_n_0,i___839_carry_i_27_n_0,i___839_carry_i_28_n_0,i___839_carry_i_29_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_17
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[3]_i_5_n_5 ),
        .O(i___839_carry_i_17_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_18
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[3]_i_5_n_6 ),
        .O(i___839_carry_i_18_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_19
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[3]_i_5_n_7 ),
        .O(i___839_carry_i_19_n_0));
  CARRY4 i___839_carry_i_2
       (.CI(1'b0),
        .CO({i___839_carry_i_2_n_0,NLW_i___839_carry_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(\out_reg[2]_i_2_n_0 ),
        .DI({i___839_carry_i_12_n_5,i___839_carry_i_12_n_6,\aux_reg_n_0_[1] ,1'b0}),
        .O({i___839_carry_i_2_n_4,i___839_carry_i_2_n_5,i___839_carry_i_2_n_6,NLW_i___839_carry_i_2_O_UNCONNECTED[0]}),
        .S({i___839_carry_i_13_n_0,i___839_carry_i_14_n_0,i___839_carry_i_15_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_20
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(i___839_carry_i_16_n_4),
        .O(i___839_carry_i_20_n_0));
  CARRY4 i___839_carry_i_21
       (.CI(1'b0),
        .CO({i___839_carry_i_21_n_0,NLW_i___839_carry_i_21_CO_UNCONNECTED[2:0]}),
        .CYINIT(\out_reg[7]_i_10_n_0 ),
        .DI({i___839_carry_i_25_n_5,i___839_carry_i_25_n_6,\aux_reg_n_0_[3] ,1'b0}),
        .O({i___839_carry_i_21_n_4,i___839_carry_i_21_n_5,i___839_carry_i_21_n_6,NLW_i___839_carry_i_21_O_UNCONNECTED[0]}),
        .S({i___839_carry_i_30_n_0,i___839_carry_i_31_n_0,i___839_carry_i_32_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_22
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(i___839_carry_i_21_n_5),
        .O(i___839_carry_i_22_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_23
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(i___839_carry_i_21_n_6),
        .O(i___839_carry_i_23_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_24
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[2] ),
        .O(i___839_carry_i_24_n_0));
  CARRY4 i___839_carry_i_25
       (.CI(1'b0),
        .CO({i___839_carry_i_25_n_0,NLW_i___839_carry_i_25_CO_UNCONNECTED[2:0]}),
        .CYINIT(\out_reg[7]_i_9_n_0 ),
        .DI({\out_reg[7]_i_97_n_5 ,\out_reg[7]_i_97_n_6 ,\aux_reg_n_0_[4] ,1'b0}),
        .O({i___839_carry_i_25_n_4,i___839_carry_i_25_n_5,i___839_carry_i_25_n_6,NLW_i___839_carry_i_25_O_UNCONNECTED[0]}),
        .S({i___839_carry_i_33_n_0,i___839_carry_i_34_n_0,i___839_carry_i_35_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_26
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_60_n_5 ),
        .O(i___839_carry_i_26_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_27
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_60_n_6 ),
        .O(i___839_carry_i_27_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_28
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_60_n_7 ),
        .O(i___839_carry_i_28_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_29
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(i___839_carry_i_25_n_4),
        .O(i___839_carry_i_29_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_3
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[3] ),
        .I2(i___839_carry_i_2_n_4),
        .O(i___839_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_30
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(i___839_carry_i_25_n_5),
        .O(i___839_carry_i_30_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_31
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(i___839_carry_i_25_n_6),
        .O(i___839_carry_i_31_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_32
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[3] ),
        .O(i___839_carry_i_32_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_33
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_i_97_n_5 ),
        .O(i___839_carry_i_33_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_34
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_i_97_n_6 ),
        .O(i___839_carry_i_34_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_35
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[4] ),
        .O(i___839_carry_i_35_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_4
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[2] ),
        .I2(i___839_carry_i_2_n_5),
        .O(i___839_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_5
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[1] ),
        .I2(i___839_carry_i_2_n_6),
        .O(i___839_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_6
       (.I0(i___839_carry_i_1_n_0),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[0] ),
        .O(i___839_carry_i_6_n_0));
  CARRY4 i___839_carry_i_7
       (.CI(i___839_carry__0_i_6_n_0),
        .CO({i___839_carry_i_7_n_0,NLW_i___839_carry_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[3]_i_5_n_5 ,\out_reg[3]_i_5_n_6 ,\out_reg[3]_i_5_n_7 ,i___839_carry_i_16_n_4}),
        .O({i___839_carry_i_7_n_4,i___839_carry_i_7_n_5,i___839_carry_i_7_n_6,i___839_carry_i_7_n_7}),
        .S({i___839_carry_i_17_n_0,i___839_carry_i_18_n_0,i___839_carry_i_19_n_0,i___839_carry_i_20_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    i___839_carry_i_8
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\out_reg[2]_i_2_n_5 ),
        .O(i___839_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___839_carry_i_9
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[2]_i_2_n_6 ),
        .O(i___839_carry_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(\div_reg_n_0_[7] ),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(\div_reg_n_0_[6] ),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(\div_reg_n_0_[5] ),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(\div_reg_n_0_[4] ),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_5
       (.I0(\div_reg_n_0_[7] ),
        .O(i__carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_6
       (.I0(\div_reg_n_0_[6] ),
        .O(i__carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_7
       (.I0(\div_reg_n_0_[5] ),
        .O(i__carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_8
       (.I0(\div_reg_n_0_[4] ),
        .O(i__carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(\div_reg_n_0_[11] ),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(\div_reg_n_0_[10] ),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(\div_reg_n_0_[9] ),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(\div_reg_n_0_[8] ),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_5
       (.I0(\div_reg_n_0_[11] ),
        .O(i__carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_6
       (.I0(\div_reg_n_0_[10] ),
        .O(i__carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_7
       (.I0(\div_reg_n_0_[9] ),
        .O(i__carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_8
       (.I0(\div_reg_n_0_[8] ),
        .O(i__carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(\div_reg_n_0_[13] ),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(\div_reg_n_0_[11] ),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(\div_reg_n_0_[13] ),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(\div_reg_n_0_[11] ),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(\div_reg_n_0_[3] ),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(\div_reg_n_0_[2] ),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(\div_reg_n_0_[1] ),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(\div_reg_n_0_[3] ),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_5
       (.I0(\div_reg_n_0_[2] ),
        .O(i__carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_6__0
       (.I0(\div_reg_n_0_[1] ),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_7__0
       (.I0(\div_reg_n_0_[0] ),
        .I1(\aux_reg_n_0_[15] ),
        .O(i__carry_i_7__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .D(\i[1]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\i_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[2]_i_1_n_0 ),
        .Q(\i_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[3]_i_1_n_0 ),
        .Q(\i_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[4]_i_1_n_0 ),
        .Q(\i_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[5]_i_1_n_0 ),
        .Q(\i_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[6]_i_1_n_0 ),
        .Q(\i_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .CLR(reset_IBUF),
        .D(\i[7]_i_2_n_0 ),
        .Q(\i_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'hE2E2FFE2E2E2E2E2)) 
    \out[0]_i_1 
       (.I0(\out[0]_i_2_n_0 ),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\out[0]_i_3_n_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\state_reg_reg_n_0_[2] ),
        .I5(\state_reg2_inferred__0/i___839_carry__2_n_1 ),
        .O(\out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05040804FFFFFFFF)) 
    \out[0]_i_2 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[4] ),
        .I3(\i_reg_n_0_[2] ),
        .I4(\i_reg_n_0_[0] ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010450004)) 
    \out[0]_i_3 
       (.I0(\i_reg_n_0_[4] ),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[1] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\state_reg_reg_n_0_[1] ),
        .O(\out[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out[1]_i_1 
       (.I0(i___839_carry_i_1_n_0),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\p_0_out_inferred__0/out[1]_i_2_n_0 ),
        .I3(\state_reg_reg_n_0_[0] ),
        .I4(\out[1]_i_3_n_0 ),
        .O(\out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h080A0A0800000800)) 
    \out[1]_i_3 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[4] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[0] ),
        .I5(\i_reg_n_0_[2] ),
        .O(\out[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out[2]_i_1 
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\p_0_out_inferred__0/out[2]_i_3_n_0 ),
        .I3(\state_reg_reg_n_0_[0] ),
        .I4(\out[2]_i_4_n_0 ),
        .O(\out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000020020)) 
    \out[2]_i_4 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[3] ),
        .I3(\i_reg_n_0_[4] ),
        .I4(\i_reg_n_0_[1] ),
        .I5(\i_reg_n_0_[2] ),
        .O(\out[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[2]_i_5 
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\out_reg[3]_i_2_n_5 ),
        .O(\out[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[2]_i_6 
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[3]_i_2_n_6 ),
        .O(\out[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[2]_i_7 
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[3]_i_2_n_7 ),
        .O(\out[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[2]_i_8 
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[3]_i_5_n_4 ),
        .O(\out[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out[3]_i_1 
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\p_0_out_inferred__0/out[3]_i_3_n_0 ),
        .I3(\state_reg_reg_n_0_[0] ),
        .I4(\out[3]_i_4_n_0 ),
        .O(\out[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_i_10 
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_28_n_5 ),
        .O(\out[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_i_11 
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_28_n_6 ),
        .O(\out[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_i_12 
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_28_n_7 ),
        .O(\out[3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_i_13 
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_60_n_4 ),
        .O(\out[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h008A002000A00020)) 
    \out[3]_i_4 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[3] ),
        .I3(\i_reg_n_0_[4] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\i_reg_n_0_[1] ),
        .O(\out[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[3]_i_6 
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\out_reg[7]_i_10_n_5 ),
        .O(\out[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_i_7 
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_10_n_6 ),
        .O(\out[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_i_8 
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_10_n_7 ),
        .O(\out[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_i_9 
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_28_n_4 ),
        .O(\out[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h1F10FFFF1F100000)) 
    \out[4]_i_1 
       (.I0(\out_reg[7]_i_10_n_0 ),
        .I1(\state_reg[0]_i_2_n_0 ),
        .I2(\state_reg_reg_n_0_[1] ),
        .I3(\p_0_out_inferred__0/out[4]_i_2_n_0 ),
        .I4(\state_reg_reg_n_0_[0] ),
        .I5(\out[4]_i_3_n_0 ),
        .O(\out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000820800000888)) 
    \out[4]_i_3 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[3] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[4] ),
        .I5(\i_reg_n_0_[2] ),
        .O(\out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0802000A0A000020)) 
    \out[5]_i_2 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[4] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[1] ),
        .I5(\i_reg_n_0_[2] ),
        .O(\out[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \out[5]_i_3 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\state_reg[0]_i_2_n_0 ),
        .I2(\out_reg[7]_i_10_n_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\p_0_out_inferred__0/out[5]_i_4_n_0 ),
        .O(\out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBAAAAAAAAA)) 
    \out[6]_i_1 
       (.I0(\out_reg[6]_i_2_n_0 ),
        .I1(\state_reg[0]_i_2_n_0 ),
        .I2(\out_reg[7]_i_10_n_0 ),
        .I3(\out_reg[7]_i_9_n_0 ),
        .I4(\out_reg[7]_i_8_n_0 ),
        .I5(\out[7]_i_4_n_0 ),
        .O(\out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04000308FFFFFFFF)) 
    \out[6]_i_3 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[4] ),
        .I3(\i_reg_n_0_[1] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400114)) 
    \out[6]_i_4 
       (.I0(\i_reg_n_0_[4] ),
        .I1(\i_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[1] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\state_reg_reg_n_0_[1] ),
        .O(\out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF0D)) 
    \out[7]_i_1 
       (.I0(\state_reg_reg_n_0_[0] ),
        .I1(\out[7]_i_3_n_0 ),
        .I2(\aux_Count[14]_i_2_n_0 ),
        .I3(\out[7]_i_4_n_0 ),
        .I4(\out[7]_i_5_n_0 ),
        .I5(reset_IBUF),
        .O(\out[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_100 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_50_n_7 ),
        .O(\out[7]_i_100_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_101 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_i_92_n_4 ),
        .O(\out[7]_i_101_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_102 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_55_n_5 ),
        .O(\out[7]_i_102_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_103 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_55_n_6 ),
        .O(\out[7]_i_103_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_104 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_55_n_7 ),
        .O(\out[7]_i_104_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_105 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_i_97_n_4 ),
        .O(\out[7]_i_105_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_106 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_i_66_n_5 ),
        .O(\out[7]_i_106_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_107 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_i_66_n_6 ),
        .O(\out[7]_i_107_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_108 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[7] ),
        .O(\out[7]_i_108_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_109 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_i_71_n_5 ),
        .O(\out[7]_i_109_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_110 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_i_71_n_6 ),
        .O(\out[7]_i_110_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_111 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[8] ),
        .O(\out[7]_i_111_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_112 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_i_87_n_5 ),
        .O(\out[7]_i_112_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_113 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_i_87_n_6 ),
        .O(\out[7]_i_113_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_114 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[9] ),
        .O(\out[7]_i_114_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_117 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\out_reg[7]_i_115_n_5 ),
        .O(\out[7]_i_117_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_118 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_115_n_6 ),
        .O(\out[7]_i_118_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_119 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_115_n_7 ),
        .O(\out[7]_i_119_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_120 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_116_n_4 ),
        .O(\out[7]_i_120_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_122 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_116_n_5 ),
        .O(\out[7]_i_122_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_123 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_116_n_6 ),
        .O(\out[7]_i_123_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_124 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_116_n_7 ),
        .O(\out[7]_i_124_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_125 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_121_n_4 ),
        .O(\out[7]_i_125_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_127 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_121_n_5 ),
        .O(\out[7]_i_127_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_128 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_121_n_6 ),
        .O(\out[7]_i_128_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_129 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_121_n_7 ),
        .O(\out[7]_i_129_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_130 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_i_126_n_4 ),
        .O(\out[7]_i_130_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_131 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_i_126_n_5 ),
        .O(\out[7]_i_131_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_132 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_i_126_n_6 ),
        .O(\out[7]_i_132_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_133 
       (.I0(\out_reg[7]_i_115_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[10] ),
        .O(\out[7]_i_133_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_134 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_i_65_n_5 ),
        .O(\out[7]_i_134_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_135 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_i_65_n_6 ),
        .O(\out[7]_i_135_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_136 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[6] ),
        .O(\out[7]_i_136_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_137 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_i_92_n_5 ),
        .O(\out[7]_i_137_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_138 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_i_92_n_6 ),
        .O(\out[7]_i_138_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_139 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[5] ),
        .O(\out[7]_i_139_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_14 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\out_reg[7]_i_12_n_5 ),
        .O(\out[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_142 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\out_reg[7]_i_140_n_5 ),
        .O(\out[7]_i_142_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_143 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_140_n_6 ),
        .O(\out[7]_i_143_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_144 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_140_n_7 ),
        .O(\out[7]_i_144_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_145 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_141_n_4 ),
        .O(\out[7]_i_145_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_147 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_141_n_5 ),
        .O(\out[7]_i_147_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_148 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_141_n_6 ),
        .O(\out[7]_i_148_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_149 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_141_n_7 ),
        .O(\out[7]_i_149_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_15 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_12_n_6 ),
        .O(\out[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_150 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_146_n_4 ),
        .O(\out[7]_i_150_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_152 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_146_n_5 ),
        .O(\out[7]_i_152_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_153 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_146_n_6 ),
        .O(\out[7]_i_153_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_154 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_146_n_7 ),
        .O(\out[7]_i_154_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_155 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_i_151_n_4 ),
        .O(\out[7]_i_155_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_156 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_i_151_n_5 ),
        .O(\out[7]_i_156_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_157 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_i_151_n_6 ),
        .O(\out[7]_i_157_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_158 
       (.I0(\out_reg[7]_i_140_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[11] ),
        .O(\out[7]_i_158_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_16 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_12_n_7 ),
        .O(\out[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_161 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\out_reg[7]_i_159_n_5 ),
        .O(\out[7]_i_161_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_162 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_159_n_6 ),
        .O(\out[7]_i_162_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_163 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_159_n_7 ),
        .O(\out[7]_i_163_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_164 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_160_n_4 ),
        .O(\out[7]_i_164_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_166 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_160_n_5 ),
        .O(\out[7]_i_166_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_167 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_160_n_6 ),
        .O(\out[7]_i_167_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_168 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_160_n_7 ),
        .O(\out[7]_i_168_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_169 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_165_n_4 ),
        .O(\out[7]_i_169_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_17 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_13_n_4 ),
        .O(\out[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_171 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_165_n_5 ),
        .O(\out[7]_i_171_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_172 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_165_n_6 ),
        .O(\out[7]_i_172_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_173 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_165_n_7 ),
        .O(\out[7]_i_173_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_174 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_i_170_n_4 ),
        .O(\out[7]_i_174_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_175 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_i_170_n_5 ),
        .O(\out[7]_i_175_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_176 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_i_170_n_6 ),
        .O(\out[7]_i_176_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_177 
       (.I0(\out_reg[7]_i_159_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[12] ),
        .O(\out[7]_i_177_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_180 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\out_reg[7]_i_178_n_5 ),
        .O(\out[7]_i_180_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_181 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_178_n_6 ),
        .O(\out[7]_i_181_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_182 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_178_n_7 ),
        .O(\out[7]_i_182_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_183 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_179_n_4 ),
        .O(\out[7]_i_183_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_185 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_179_n_5 ),
        .O(\out[7]_i_185_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_186 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_179_n_6 ),
        .O(\out[7]_i_186_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_187 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_179_n_7 ),
        .O(\out[7]_i_187_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_188 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_184_n_4 ),
        .O(\out[7]_i_188_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_19 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\out_reg[7]_i_7_n_5 ),
        .O(\out[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_190 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_184_n_5 ),
        .O(\out[7]_i_190_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_191 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_184_n_6 ),
        .O(\out[7]_i_191_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_192 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_184_n_7 ),
        .O(\out[7]_i_192_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_193 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_i_189_n_4 ),
        .O(\out[7]_i_193_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_194 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_i_189_n_5 ),
        .O(\out[7]_i_194_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_195 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_i_189_n_6 ),
        .O(\out[7]_i_195_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_196 
       (.I0(\out_reg[7]_i_178_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[13] ),
        .O(\out[7]_i_196_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_197 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\state_reg2_inferred__0/i__carry__2_n_6 ),
        .O(\out[7]_i_197_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_198 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\state_reg2_inferred__0/i__carry__2_n_7 ),
        .O(\out[7]_i_198_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_199 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\state_reg2_inferred__0/i__carry__1_n_4 ),
        .O(\out[7]_i_199_n_0 ));
  LUT6 #(
    .INIT(64'h0208020802080808)) 
    \out[7]_i_2 
       (.I0(\out[7]_i_6_n_0 ),
        .I1(\out_reg[7]_i_7_n_0 ),
        .I2(\state_reg[0]_i_2_n_0 ),
        .I3(\out_reg[7]_i_8_n_0 ),
        .I4(\out_reg[7]_i_9_n_0 ),
        .I5(\out_reg[7]_i_10_n_0 ),
        .O(\out[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_20 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_7_n_6 ),
        .O(\out[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_200 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\state_reg2_inferred__0/i__carry__1_n_5 ),
        .O(\out[7]_i_200_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_201 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\state_reg2_inferred__0/i__carry__1_n_6 ),
        .O(\out[7]_i_201_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_202 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\state_reg2_inferred__0/i__carry__1_n_7 ),
        .O(\out[7]_i_202_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_203 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\state_reg2_inferred__0/i__carry__0_n_4 ),
        .O(\out[7]_i_203_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_204 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\state_reg2_inferred__0/i__carry__0_n_5 ),
        .O(\out[7]_i_204_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_205 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\state_reg2_inferred__0/i__carry__0_n_6 ),
        .O(\out[7]_i_205_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_206 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\state_reg2_inferred__0/i__carry__0_n_7 ),
        .O(\out[7]_i_206_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_207 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\state_reg2_inferred__0/i__carry_n_4 ),
        .O(\out[7]_i_207_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_208 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\state_reg2_inferred__0/i__carry_n_5 ),
        .O(\out[7]_i_208_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_209 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\state_reg2_inferred__0/i__carry_n_6 ),
        .O(\out[7]_i_209_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_21 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_7_n_7 ),
        .O(\out[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_210 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\state_reg2_inferred__0/i__carry_n_7 ),
        .O(\out[7]_i_210_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_211 
       (.I0(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg_n_0_[14] ),
        .O(\out[7]_i_211_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_22 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_11_n_4 ),
        .O(\out[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_24 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\out_reg[7]_i_8_n_5 ),
        .O(\out[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_25 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_8_n_6 ),
        .O(\out[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_26 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_8_n_7 ),
        .O(\out[7]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_27 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_18_n_4 ),
        .O(\out[7]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_29 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\out_reg[7]_i_9_n_5 ),
        .O(\out[7]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \out[7]_i_3 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(tick_reg),
        .I2(\state_reg_reg_n_0_[1] ),
        .O(\out[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_30 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_9_n_6 ),
        .O(\out[7]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_31 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_9_n_7 ),
        .O(\out[7]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_32 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_23_n_4 ),
        .O(\out[7]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_35 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_13_n_5 ),
        .O(\out[7]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_36 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_13_n_6 ),
        .O(\out[7]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_37 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_13_n_7 ),
        .O(\out[7]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_38 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_34_n_4 ),
        .O(\out[7]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out[7]_i_4 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\state_reg_reg_n_0_[2] ),
        .O(\out[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_41 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\out_reg[7]_i_39_n_5 ),
        .O(\out[7]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_42 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_39_n_6 ),
        .O(\out[7]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_43 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_39_n_7 ),
        .O(\out[7]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_44 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_40_n_4 ),
        .O(\out[7]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_46 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_40_n_5 ),
        .O(\out[7]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_47 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_40_n_6 ),
        .O(\out[7]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_48 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_40_n_7 ),
        .O(\out[7]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_49 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_45_n_4 ),
        .O(\out[7]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0005050515151515)) 
    \out[7]_i_5 
       (.I0(\state_reg_reg_n_0_[0] ),
        .I1(\state_reg[0]_i_3_n_0 ),
        .I2(\state_reg_reg_n_0_[1] ),
        .I3(\aux[15]_i_3_n_0 ),
        .I4(tick_reg),
        .I5(\state_reg_reg_n_0_[2] ),
        .O(\out[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_51 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_11_n_5 ),
        .O(\out[7]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_52 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_11_n_6 ),
        .O(\out[7]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_53 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_11_n_7 ),
        .O(\out[7]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_54 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_33_n_4 ),
        .O(\out[7]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_56 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_18_n_5 ),
        .O(\out[7]_i_56_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_57 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_18_n_6 ),
        .O(\out[7]_i_57_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_58 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_18_n_7 ),
        .O(\out[7]_i_58_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_59 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_50_n_4 ),
        .O(\out[7]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out[7]_i_6 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\state_reg_reg_n_0_[0] ),
        .O(\out[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_61 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_23_n_5 ),
        .O(\out[7]_i_61_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_62 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_23_n_6 ),
        .O(\out[7]_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_63 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_23_n_7 ),
        .O(\out[7]_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_64 
       (.I0(\out_reg[7]_i_9_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_55_n_4 ),
        .O(\out[7]_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_67 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_34_n_5 ),
        .O(\out[7]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_68 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_34_n_6 ),
        .O(\out[7]_i_68_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_69 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_34_n_7 ),
        .O(\out[7]_i_69_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_70 
       (.I0(\out_reg[7]_i_12_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_i_66_n_4 ),
        .O(\out[7]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_72 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_45_n_5 ),
        .O(\out[7]_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_73 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_45_n_6 ),
        .O(\out[7]_i_73_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_74 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_45_n_7 ),
        .O(\out[7]_i_74_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_75 
       (.I0(\out_reg[7]_i_39_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_i_71_n_4 ),
        .O(\out[7]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_78 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\out_reg[7]_i_76_n_5 ),
        .O(\out[7]_i_78_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_79 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[13] ),
        .I2(\out_reg[7]_i_76_n_6 ),
        .O(\out[7]_i_79_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_80 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_76_n_7 ),
        .O(\out[7]_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_81 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[11] ),
        .I2(\out_reg[7]_i_77_n_4 ),
        .O(\out[7]_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_83 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_i_77_n_5 ),
        .O(\out[7]_i_83_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_84 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_i_77_n_6 ),
        .O(\out[7]_i_84_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_85 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[8] ),
        .I2(\out_reg[7]_i_77_n_7 ),
        .O(\out[7]_i_85_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_86 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_i_82_n_4 ),
        .O(\out[7]_i_86_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_88 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_82_n_5 ),
        .O(\out[7]_i_88_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_89 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_82_n_6 ),
        .O(\out[7]_i_89_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_90 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_82_n_7 ),
        .O(\out[7]_i_90_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_91 
       (.I0(\out_reg[7]_i_76_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_i_87_n_4 ),
        .O(\out[7]_i_91_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_93 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_33_n_5 ),
        .O(\out[7]_i_93_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_94 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_33_n_6 ),
        .O(\out[7]_i_94_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_95 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_i_33_n_7 ),
        .O(\out[7]_i_95_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_96 
       (.I0(\out_reg[7]_i_7_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_i_65_n_4 ),
        .O(\out[7]_i_96_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_98 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_i_50_n_5 ),
        .O(\out[7]_i_98_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_99 
       (.I0(\out_reg[7]_i_8_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_i_50_n_6 ),
        .O(\out[7]_i_99_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\out[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\out[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\out[2]_i_1_n_0 ),
        .Q(Q[2]));
  CARRY4 \out_reg[2]_i_2 
       (.CI(i___839_carry_i_7_n_0),
        .CO({\out_reg[2]_i_2_n_0 ,\NLW_out_reg[2]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[3]_i_2_n_0 ,\out_reg[3]_i_2_n_6 ,\out_reg[3]_i_2_n_7 ,\out_reg[3]_i_5_n_4 }),
        .O({\NLW_out_reg[2]_i_2_O_UNCONNECTED [3],\out_reg[2]_i_2_n_5 ,\out_reg[2]_i_2_n_6 ,\out_reg[2]_i_2_n_7 }),
        .S({\out[2]_i_5_n_0 ,\out[2]_i_6_n_0 ,\out[2]_i_7_n_0 ,\out[2]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\out[3]_i_1_n_0 ),
        .Q(Q[3]));
  CARRY4 \out_reg[3]_i_2 
       (.CI(\out_reg[3]_i_5_n_0 ),
        .CO({\out_reg[3]_i_2_n_0 ,\NLW_out_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_10_n_0 ,\out_reg[7]_i_10_n_6 ,\out_reg[7]_i_10_n_7 ,\out_reg[7]_i_28_n_4 }),
        .O({\NLW_out_reg[3]_i_2_O_UNCONNECTED [3],\out_reg[3]_i_2_n_5 ,\out_reg[3]_i_2_n_6 ,\out_reg[3]_i_2_n_7 }),
        .S({\out[3]_i_6_n_0 ,\out[3]_i_7_n_0 ,\out[3]_i_8_n_0 ,\out[3]_i_9_n_0 }));
  CARRY4 \out_reg[3]_i_5 
       (.CI(i___839_carry_i_16_n_0),
        .CO({\out_reg[3]_i_5_n_0 ,\NLW_out_reg[3]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_28_n_5 ,\out_reg[7]_i_28_n_6 ,\out_reg[7]_i_28_n_7 ,\out_reg[7]_i_60_n_4 }),
        .O({\out_reg[3]_i_5_n_4 ,\out_reg[3]_i_5_n_5 ,\out_reg[3]_i_5_n_6 ,\out_reg[3]_i_5_n_7 }),
        .S({\out[3]_i_10_n_0 ,\out[3]_i_11_n_0 ,\out[3]_i_12_n_0 ,\out[3]_i_13_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\out[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\out_reg[5]_i_1_n_0 ),
        .Q(Q[5]));
  MUXF7 \out_reg[5]_i_1 
       (.I0(\out[5]_i_2_n_0 ),
        .I1(\out[5]_i_3_n_0 ),
        .O(\out_reg[5]_i_1_n_0 ),
        .S(\state_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\out[6]_i_1_n_0 ),
        .Q(Q[6]));
  MUXF7 \out_reg[6]_i_2 
       (.I0(\out[6]_i_3_n_0 ),
        .I1(\out[6]_i_4_n_0 ),
        .O(\out_reg[6]_i_2_n_0 ),
        .S(\state_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\out[7]_i_2_n_0 ),
        .Q(din));
  CARRY4 \out_reg[7]_i_10 
       (.CI(\out_reg[7]_i_28_n_0 ),
        .CO({\out_reg[7]_i_10_n_0 ,\NLW_out_reg[7]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_9_n_0 ,\out_reg[7]_i_9_n_6 ,\out_reg[7]_i_9_n_7 ,\out_reg[7]_i_23_n_4 }),
        .O({\NLW_out_reg[7]_i_10_O_UNCONNECTED [3],\out_reg[7]_i_10_n_5 ,\out_reg[7]_i_10_n_6 ,\out_reg[7]_i_10_n_7 }),
        .S({\out[7]_i_29_n_0 ,\out[7]_i_30_n_0 ,\out[7]_i_31_n_0 ,\out[7]_i_32_n_0 }));
  CARRY4 \out_reg[7]_i_11 
       (.CI(\out_reg[7]_i_33_n_0 ),
        .CO({\out_reg[7]_i_11_n_0 ,\NLW_out_reg[7]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_13_n_5 ,\out_reg[7]_i_13_n_6 ,\out_reg[7]_i_13_n_7 ,\out_reg[7]_i_34_n_4 }),
        .O({\out_reg[7]_i_11_n_4 ,\out_reg[7]_i_11_n_5 ,\out_reg[7]_i_11_n_6 ,\out_reg[7]_i_11_n_7 }),
        .S({\out[7]_i_35_n_0 ,\out[7]_i_36_n_0 ,\out[7]_i_37_n_0 ,\out[7]_i_38_n_0 }));
  CARRY4 \out_reg[7]_i_115 
       (.CI(\out_reg[7]_i_116_n_0 ),
        .CO({\out_reg[7]_i_115_n_0 ,\NLW_out_reg[7]_i_115_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_140_n_0 ,\out_reg[7]_i_140_n_6 ,\out_reg[7]_i_140_n_7 ,\out_reg[7]_i_141_n_4 }),
        .O({\NLW_out_reg[7]_i_115_O_UNCONNECTED [3],\out_reg[7]_i_115_n_5 ,\out_reg[7]_i_115_n_6 ,\out_reg[7]_i_115_n_7 }),
        .S({\out[7]_i_142_n_0 ,\out[7]_i_143_n_0 ,\out[7]_i_144_n_0 ,\out[7]_i_145_n_0 }));
  CARRY4 \out_reg[7]_i_116 
       (.CI(\out_reg[7]_i_121_n_0 ),
        .CO({\out_reg[7]_i_116_n_0 ,\NLW_out_reg[7]_i_116_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_141_n_5 ,\out_reg[7]_i_141_n_6 ,\out_reg[7]_i_141_n_7 ,\out_reg[7]_i_146_n_4 }),
        .O({\out_reg[7]_i_116_n_4 ,\out_reg[7]_i_116_n_5 ,\out_reg[7]_i_116_n_6 ,\out_reg[7]_i_116_n_7 }),
        .S({\out[7]_i_147_n_0 ,\out[7]_i_148_n_0 ,\out[7]_i_149_n_0 ,\out[7]_i_150_n_0 }));
  CARRY4 \out_reg[7]_i_12 
       (.CI(\out_reg[7]_i_13_n_0 ),
        .CO({\out_reg[7]_i_12_n_0 ,\NLW_out_reg[7]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_39_n_0 ,\out_reg[7]_i_39_n_6 ,\out_reg[7]_i_39_n_7 ,\out_reg[7]_i_40_n_4 }),
        .O({\NLW_out_reg[7]_i_12_O_UNCONNECTED [3],\out_reg[7]_i_12_n_5 ,\out_reg[7]_i_12_n_6 ,\out_reg[7]_i_12_n_7 }),
        .S({\out[7]_i_41_n_0 ,\out[7]_i_42_n_0 ,\out[7]_i_43_n_0 ,\out[7]_i_44_n_0 }));
  CARRY4 \out_reg[7]_i_121 
       (.CI(\out_reg[7]_i_126_n_0 ),
        .CO({\out_reg[7]_i_121_n_0 ,\NLW_out_reg[7]_i_121_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_146_n_5 ,\out_reg[7]_i_146_n_6 ,\out_reg[7]_i_146_n_7 ,\out_reg[7]_i_151_n_4 }),
        .O({\out_reg[7]_i_121_n_4 ,\out_reg[7]_i_121_n_5 ,\out_reg[7]_i_121_n_6 ,\out_reg[7]_i_121_n_7 }),
        .S({\out[7]_i_152_n_0 ,\out[7]_i_153_n_0 ,\out[7]_i_154_n_0 ,\out[7]_i_155_n_0 }));
  CARRY4 \out_reg[7]_i_126 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_126_n_0 ,\NLW_out_reg[7]_i_126_CO_UNCONNECTED [2:0]}),
        .CYINIT(\out_reg[7]_i_140_n_0 ),
        .DI({\out_reg[7]_i_151_n_5 ,\out_reg[7]_i_151_n_6 ,\aux_reg_n_0_[11] ,1'b0}),
        .O({\out_reg[7]_i_126_n_4 ,\out_reg[7]_i_126_n_5 ,\out_reg[7]_i_126_n_6 ,\NLW_out_reg[7]_i_126_O_UNCONNECTED [0]}),
        .S({\out[7]_i_156_n_0 ,\out[7]_i_157_n_0 ,\out[7]_i_158_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_i_13 
       (.CI(\out_reg[7]_i_34_n_0 ),
        .CO({\out_reg[7]_i_13_n_0 ,\NLW_out_reg[7]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_40_n_5 ,\out_reg[7]_i_40_n_6 ,\out_reg[7]_i_40_n_7 ,\out_reg[7]_i_45_n_4 }),
        .O({\out_reg[7]_i_13_n_4 ,\out_reg[7]_i_13_n_5 ,\out_reg[7]_i_13_n_6 ,\out_reg[7]_i_13_n_7 }),
        .S({\out[7]_i_46_n_0 ,\out[7]_i_47_n_0 ,\out[7]_i_48_n_0 ,\out[7]_i_49_n_0 }));
  CARRY4 \out_reg[7]_i_140 
       (.CI(\out_reg[7]_i_141_n_0 ),
        .CO({\out_reg[7]_i_140_n_0 ,\NLW_out_reg[7]_i_140_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_159_n_0 ,\out_reg[7]_i_159_n_6 ,\out_reg[7]_i_159_n_7 ,\out_reg[7]_i_160_n_4 }),
        .O({\NLW_out_reg[7]_i_140_O_UNCONNECTED [3],\out_reg[7]_i_140_n_5 ,\out_reg[7]_i_140_n_6 ,\out_reg[7]_i_140_n_7 }),
        .S({\out[7]_i_161_n_0 ,\out[7]_i_162_n_0 ,\out[7]_i_163_n_0 ,\out[7]_i_164_n_0 }));
  CARRY4 \out_reg[7]_i_141 
       (.CI(\out_reg[7]_i_146_n_0 ),
        .CO({\out_reg[7]_i_141_n_0 ,\NLW_out_reg[7]_i_141_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_160_n_5 ,\out_reg[7]_i_160_n_6 ,\out_reg[7]_i_160_n_7 ,\out_reg[7]_i_165_n_4 }),
        .O({\out_reg[7]_i_141_n_4 ,\out_reg[7]_i_141_n_5 ,\out_reg[7]_i_141_n_6 ,\out_reg[7]_i_141_n_7 }),
        .S({\out[7]_i_166_n_0 ,\out[7]_i_167_n_0 ,\out[7]_i_168_n_0 ,\out[7]_i_169_n_0 }));
  CARRY4 \out_reg[7]_i_146 
       (.CI(\out_reg[7]_i_151_n_0 ),
        .CO({\out_reg[7]_i_146_n_0 ,\NLW_out_reg[7]_i_146_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_165_n_5 ,\out_reg[7]_i_165_n_6 ,\out_reg[7]_i_165_n_7 ,\out_reg[7]_i_170_n_4 }),
        .O({\out_reg[7]_i_146_n_4 ,\out_reg[7]_i_146_n_5 ,\out_reg[7]_i_146_n_6 ,\out_reg[7]_i_146_n_7 }),
        .S({\out[7]_i_171_n_0 ,\out[7]_i_172_n_0 ,\out[7]_i_173_n_0 ,\out[7]_i_174_n_0 }));
  CARRY4 \out_reg[7]_i_151 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_151_n_0 ,\NLW_out_reg[7]_i_151_CO_UNCONNECTED [2:0]}),
        .CYINIT(\out_reg[7]_i_159_n_0 ),
        .DI({\out_reg[7]_i_170_n_5 ,\out_reg[7]_i_170_n_6 ,\aux_reg_n_0_[12] ,1'b0}),
        .O({\out_reg[7]_i_151_n_4 ,\out_reg[7]_i_151_n_5 ,\out_reg[7]_i_151_n_6 ,\NLW_out_reg[7]_i_151_O_UNCONNECTED [0]}),
        .S({\out[7]_i_175_n_0 ,\out[7]_i_176_n_0 ,\out[7]_i_177_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_i_159 
       (.CI(\out_reg[7]_i_160_n_0 ),
        .CO({\out_reg[7]_i_159_n_0 ,\NLW_out_reg[7]_i_159_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_178_n_0 ,\out_reg[7]_i_178_n_6 ,\out_reg[7]_i_178_n_7 ,\out_reg[7]_i_179_n_4 }),
        .O({\NLW_out_reg[7]_i_159_O_UNCONNECTED [3],\out_reg[7]_i_159_n_5 ,\out_reg[7]_i_159_n_6 ,\out_reg[7]_i_159_n_7 }),
        .S({\out[7]_i_180_n_0 ,\out[7]_i_181_n_0 ,\out[7]_i_182_n_0 ,\out[7]_i_183_n_0 }));
  CARRY4 \out_reg[7]_i_160 
       (.CI(\out_reg[7]_i_165_n_0 ),
        .CO({\out_reg[7]_i_160_n_0 ,\NLW_out_reg[7]_i_160_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_179_n_5 ,\out_reg[7]_i_179_n_6 ,\out_reg[7]_i_179_n_7 ,\out_reg[7]_i_184_n_4 }),
        .O({\out_reg[7]_i_160_n_4 ,\out_reg[7]_i_160_n_5 ,\out_reg[7]_i_160_n_6 ,\out_reg[7]_i_160_n_7 }),
        .S({\out[7]_i_185_n_0 ,\out[7]_i_186_n_0 ,\out[7]_i_187_n_0 ,\out[7]_i_188_n_0 }));
  CARRY4 \out_reg[7]_i_165 
       (.CI(\out_reg[7]_i_170_n_0 ),
        .CO({\out_reg[7]_i_165_n_0 ,\NLW_out_reg[7]_i_165_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_184_n_5 ,\out_reg[7]_i_184_n_6 ,\out_reg[7]_i_184_n_7 ,\out_reg[7]_i_189_n_4 }),
        .O({\out_reg[7]_i_165_n_4 ,\out_reg[7]_i_165_n_5 ,\out_reg[7]_i_165_n_6 ,\out_reg[7]_i_165_n_7 }),
        .S({\out[7]_i_190_n_0 ,\out[7]_i_191_n_0 ,\out[7]_i_192_n_0 ,\out[7]_i_193_n_0 }));
  CARRY4 \out_reg[7]_i_170 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_170_n_0 ,\NLW_out_reg[7]_i_170_CO_UNCONNECTED [2:0]}),
        .CYINIT(\out_reg[7]_i_178_n_0 ),
        .DI({\out_reg[7]_i_189_n_5 ,\out_reg[7]_i_189_n_6 ,\aux_reg_n_0_[13] ,1'b0}),
        .O({\out_reg[7]_i_170_n_4 ,\out_reg[7]_i_170_n_5 ,\out_reg[7]_i_170_n_6 ,\NLW_out_reg[7]_i_170_O_UNCONNECTED [0]}),
        .S({\out[7]_i_194_n_0 ,\out[7]_i_195_n_0 ,\out[7]_i_196_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_i_178 
       (.CI(\out_reg[7]_i_179_n_0 ),
        .CO({\out_reg[7]_i_178_n_0 ,\NLW_out_reg[7]_i_178_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\state_reg2_inferred__0/i__carry__2_n_1 ,\state_reg2_inferred__0/i__carry__2_n_7 ,\state_reg2_inferred__0/i__carry__1_n_4 ,\state_reg2_inferred__0/i__carry__1_n_5 }),
        .O({\NLW_out_reg[7]_i_178_O_UNCONNECTED [3],\out_reg[7]_i_178_n_5 ,\out_reg[7]_i_178_n_6 ,\out_reg[7]_i_178_n_7 }),
        .S({\out[7]_i_197_n_0 ,\out[7]_i_198_n_0 ,\out[7]_i_199_n_0 ,\out[7]_i_200_n_0 }));
  CARRY4 \out_reg[7]_i_179 
       (.CI(\out_reg[7]_i_184_n_0 ),
        .CO({\out_reg[7]_i_179_n_0 ,\NLW_out_reg[7]_i_179_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\state_reg2_inferred__0/i__carry__1_n_6 ,\state_reg2_inferred__0/i__carry__1_n_7 ,\state_reg2_inferred__0/i__carry__0_n_4 ,\state_reg2_inferred__0/i__carry__0_n_5 }),
        .O({\out_reg[7]_i_179_n_4 ,\out_reg[7]_i_179_n_5 ,\out_reg[7]_i_179_n_6 ,\out_reg[7]_i_179_n_7 }),
        .S({\out[7]_i_201_n_0 ,\out[7]_i_202_n_0 ,\out[7]_i_203_n_0 ,\out[7]_i_204_n_0 }));
  CARRY4 \out_reg[7]_i_18 
       (.CI(\out_reg[7]_i_50_n_0 ),
        .CO({\out_reg[7]_i_18_n_0 ,\NLW_out_reg[7]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_11_n_5 ,\out_reg[7]_i_11_n_6 ,\out_reg[7]_i_11_n_7 ,\out_reg[7]_i_33_n_4 }),
        .O({\out_reg[7]_i_18_n_4 ,\out_reg[7]_i_18_n_5 ,\out_reg[7]_i_18_n_6 ,\out_reg[7]_i_18_n_7 }),
        .S({\out[7]_i_51_n_0 ,\out[7]_i_52_n_0 ,\out[7]_i_53_n_0 ,\out[7]_i_54_n_0 }));
  CARRY4 \out_reg[7]_i_184 
       (.CI(\out_reg[7]_i_189_n_0 ),
        .CO({\out_reg[7]_i_184_n_0 ,\NLW_out_reg[7]_i_184_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\state_reg2_inferred__0/i__carry__0_n_6 ,\state_reg2_inferred__0/i__carry__0_n_7 ,\state_reg2_inferred__0/i__carry_n_4 ,\state_reg2_inferred__0/i__carry_n_5 }),
        .O({\out_reg[7]_i_184_n_4 ,\out_reg[7]_i_184_n_5 ,\out_reg[7]_i_184_n_6 ,\out_reg[7]_i_184_n_7 }),
        .S({\out[7]_i_205_n_0 ,\out[7]_i_206_n_0 ,\out[7]_i_207_n_0 ,\out[7]_i_208_n_0 }));
  CARRY4 \out_reg[7]_i_189 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_189_n_0 ,\NLW_out_reg[7]_i_189_CO_UNCONNECTED [2:0]}),
        .CYINIT(\state_reg2_inferred__0/i__carry__2_n_1 ),
        .DI({\state_reg2_inferred__0/i__carry_n_6 ,\state_reg2_inferred__0/i__carry_n_7 ,\aux_reg_n_0_[14] ,1'b0}),
        .O({\out_reg[7]_i_189_n_4 ,\out_reg[7]_i_189_n_5 ,\out_reg[7]_i_189_n_6 ,\NLW_out_reg[7]_i_189_O_UNCONNECTED [0]}),
        .S({\out[7]_i_209_n_0 ,\out[7]_i_210_n_0 ,\out[7]_i_211_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_i_23 
       (.CI(\out_reg[7]_i_55_n_0 ),
        .CO({\out_reg[7]_i_23_n_0 ,\NLW_out_reg[7]_i_23_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_18_n_5 ,\out_reg[7]_i_18_n_6 ,\out_reg[7]_i_18_n_7 ,\out_reg[7]_i_50_n_4 }),
        .O({\out_reg[7]_i_23_n_4 ,\out_reg[7]_i_23_n_5 ,\out_reg[7]_i_23_n_6 ,\out_reg[7]_i_23_n_7 }),
        .S({\out[7]_i_56_n_0 ,\out[7]_i_57_n_0 ,\out[7]_i_58_n_0 ,\out[7]_i_59_n_0 }));
  CARRY4 \out_reg[7]_i_28 
       (.CI(\out_reg[7]_i_60_n_0 ),
        .CO({\out_reg[7]_i_28_n_0 ,\NLW_out_reg[7]_i_28_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_23_n_5 ,\out_reg[7]_i_23_n_6 ,\out_reg[7]_i_23_n_7 ,\out_reg[7]_i_55_n_4 }),
        .O({\out_reg[7]_i_28_n_4 ,\out_reg[7]_i_28_n_5 ,\out_reg[7]_i_28_n_6 ,\out_reg[7]_i_28_n_7 }),
        .S({\out[7]_i_61_n_0 ,\out[7]_i_62_n_0 ,\out[7]_i_63_n_0 ,\out[7]_i_64_n_0 }));
  CARRY4 \out_reg[7]_i_33 
       (.CI(\out_reg[7]_i_65_n_0 ),
        .CO({\out_reg[7]_i_33_n_0 ,\NLW_out_reg[7]_i_33_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_34_n_5 ,\out_reg[7]_i_34_n_6 ,\out_reg[7]_i_34_n_7 ,\out_reg[7]_i_66_n_4 }),
        .O({\out_reg[7]_i_33_n_4 ,\out_reg[7]_i_33_n_5 ,\out_reg[7]_i_33_n_6 ,\out_reg[7]_i_33_n_7 }),
        .S({\out[7]_i_67_n_0 ,\out[7]_i_68_n_0 ,\out[7]_i_69_n_0 ,\out[7]_i_70_n_0 }));
  CARRY4 \out_reg[7]_i_34 
       (.CI(\out_reg[7]_i_66_n_0 ),
        .CO({\out_reg[7]_i_34_n_0 ,\NLW_out_reg[7]_i_34_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_45_n_5 ,\out_reg[7]_i_45_n_6 ,\out_reg[7]_i_45_n_7 ,\out_reg[7]_i_71_n_4 }),
        .O({\out_reg[7]_i_34_n_4 ,\out_reg[7]_i_34_n_5 ,\out_reg[7]_i_34_n_6 ,\out_reg[7]_i_34_n_7 }),
        .S({\out[7]_i_72_n_0 ,\out[7]_i_73_n_0 ,\out[7]_i_74_n_0 ,\out[7]_i_75_n_0 }));
  CARRY4 \out_reg[7]_i_39 
       (.CI(\out_reg[7]_i_40_n_0 ),
        .CO({\out_reg[7]_i_39_n_0 ,\NLW_out_reg[7]_i_39_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_76_n_0 ,\out_reg[7]_i_76_n_6 ,\out_reg[7]_i_76_n_7 ,\out_reg[7]_i_77_n_4 }),
        .O({\NLW_out_reg[7]_i_39_O_UNCONNECTED [3],\out_reg[7]_i_39_n_5 ,\out_reg[7]_i_39_n_6 ,\out_reg[7]_i_39_n_7 }),
        .S({\out[7]_i_78_n_0 ,\out[7]_i_79_n_0 ,\out[7]_i_80_n_0 ,\out[7]_i_81_n_0 }));
  CARRY4 \out_reg[7]_i_40 
       (.CI(\out_reg[7]_i_45_n_0 ),
        .CO({\out_reg[7]_i_40_n_0 ,\NLW_out_reg[7]_i_40_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_77_n_5 ,\out_reg[7]_i_77_n_6 ,\out_reg[7]_i_77_n_7 ,\out_reg[7]_i_82_n_4 }),
        .O({\out_reg[7]_i_40_n_4 ,\out_reg[7]_i_40_n_5 ,\out_reg[7]_i_40_n_6 ,\out_reg[7]_i_40_n_7 }),
        .S({\out[7]_i_83_n_0 ,\out[7]_i_84_n_0 ,\out[7]_i_85_n_0 ,\out[7]_i_86_n_0 }));
  CARRY4 \out_reg[7]_i_45 
       (.CI(\out_reg[7]_i_71_n_0 ),
        .CO({\out_reg[7]_i_45_n_0 ,\NLW_out_reg[7]_i_45_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_82_n_5 ,\out_reg[7]_i_82_n_6 ,\out_reg[7]_i_82_n_7 ,\out_reg[7]_i_87_n_4 }),
        .O({\out_reg[7]_i_45_n_4 ,\out_reg[7]_i_45_n_5 ,\out_reg[7]_i_45_n_6 ,\out_reg[7]_i_45_n_7 }),
        .S({\out[7]_i_88_n_0 ,\out[7]_i_89_n_0 ,\out[7]_i_90_n_0 ,\out[7]_i_91_n_0 }));
  CARRY4 \out_reg[7]_i_50 
       (.CI(\out_reg[7]_i_92_n_0 ),
        .CO({\out_reg[7]_i_50_n_0 ,\NLW_out_reg[7]_i_50_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_33_n_5 ,\out_reg[7]_i_33_n_6 ,\out_reg[7]_i_33_n_7 ,\out_reg[7]_i_65_n_4 }),
        .O({\out_reg[7]_i_50_n_4 ,\out_reg[7]_i_50_n_5 ,\out_reg[7]_i_50_n_6 ,\out_reg[7]_i_50_n_7 }),
        .S({\out[7]_i_93_n_0 ,\out[7]_i_94_n_0 ,\out[7]_i_95_n_0 ,\out[7]_i_96_n_0 }));
  CARRY4 \out_reg[7]_i_55 
       (.CI(\out_reg[7]_i_97_n_0 ),
        .CO({\out_reg[7]_i_55_n_0 ,\NLW_out_reg[7]_i_55_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_50_n_5 ,\out_reg[7]_i_50_n_6 ,\out_reg[7]_i_50_n_7 ,\out_reg[7]_i_92_n_4 }),
        .O({\out_reg[7]_i_55_n_4 ,\out_reg[7]_i_55_n_5 ,\out_reg[7]_i_55_n_6 ,\out_reg[7]_i_55_n_7 }),
        .S({\out[7]_i_98_n_0 ,\out[7]_i_99_n_0 ,\out[7]_i_100_n_0 ,\out[7]_i_101_n_0 }));
  CARRY4 \out_reg[7]_i_60 
       (.CI(i___839_carry_i_25_n_0),
        .CO({\out_reg[7]_i_60_n_0 ,\NLW_out_reg[7]_i_60_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_55_n_5 ,\out_reg[7]_i_55_n_6 ,\out_reg[7]_i_55_n_7 ,\out_reg[7]_i_97_n_4 }),
        .O({\out_reg[7]_i_60_n_4 ,\out_reg[7]_i_60_n_5 ,\out_reg[7]_i_60_n_6 ,\out_reg[7]_i_60_n_7 }),
        .S({\out[7]_i_102_n_0 ,\out[7]_i_103_n_0 ,\out[7]_i_104_n_0 ,\out[7]_i_105_n_0 }));
  CARRY4 \out_reg[7]_i_65 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_65_n_0 ,\NLW_out_reg[7]_i_65_CO_UNCONNECTED [2:0]}),
        .CYINIT(\out_reg[7]_i_12_n_0 ),
        .DI({\out_reg[7]_i_66_n_5 ,\out_reg[7]_i_66_n_6 ,\aux_reg_n_0_[7] ,1'b0}),
        .O({\out_reg[7]_i_65_n_4 ,\out_reg[7]_i_65_n_5 ,\out_reg[7]_i_65_n_6 ,\NLW_out_reg[7]_i_65_O_UNCONNECTED [0]}),
        .S({\out[7]_i_106_n_0 ,\out[7]_i_107_n_0 ,\out[7]_i_108_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_i_66 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_66_n_0 ,\NLW_out_reg[7]_i_66_CO_UNCONNECTED [2:0]}),
        .CYINIT(\out_reg[7]_i_39_n_0 ),
        .DI({\out_reg[7]_i_71_n_5 ,\out_reg[7]_i_71_n_6 ,\aux_reg_n_0_[8] ,1'b0}),
        .O({\out_reg[7]_i_66_n_4 ,\out_reg[7]_i_66_n_5 ,\out_reg[7]_i_66_n_6 ,\NLW_out_reg[7]_i_66_O_UNCONNECTED [0]}),
        .S({\out[7]_i_109_n_0 ,\out[7]_i_110_n_0 ,\out[7]_i_111_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_i_7 
       (.CI(\out_reg[7]_i_11_n_0 ),
        .CO({\out_reg[7]_i_7_n_0 ,\NLW_out_reg[7]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_12_n_0 ,\out_reg[7]_i_12_n_6 ,\out_reg[7]_i_12_n_7 ,\out_reg[7]_i_13_n_4 }),
        .O({\NLW_out_reg[7]_i_7_O_UNCONNECTED [3],\out_reg[7]_i_7_n_5 ,\out_reg[7]_i_7_n_6 ,\out_reg[7]_i_7_n_7 }),
        .S({\out[7]_i_14_n_0 ,\out[7]_i_15_n_0 ,\out[7]_i_16_n_0 ,\out[7]_i_17_n_0 }));
  CARRY4 \out_reg[7]_i_71 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_71_n_0 ,\NLW_out_reg[7]_i_71_CO_UNCONNECTED [2:0]}),
        .CYINIT(\out_reg[7]_i_76_n_0 ),
        .DI({\out_reg[7]_i_87_n_5 ,\out_reg[7]_i_87_n_6 ,\aux_reg_n_0_[9] ,1'b0}),
        .O({\out_reg[7]_i_71_n_4 ,\out_reg[7]_i_71_n_5 ,\out_reg[7]_i_71_n_6 ,\NLW_out_reg[7]_i_71_O_UNCONNECTED [0]}),
        .S({\out[7]_i_112_n_0 ,\out[7]_i_113_n_0 ,\out[7]_i_114_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_i_76 
       (.CI(\out_reg[7]_i_77_n_0 ),
        .CO({\out_reg[7]_i_76_n_0 ,\NLW_out_reg[7]_i_76_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_115_n_0 ,\out_reg[7]_i_115_n_6 ,\out_reg[7]_i_115_n_7 ,\out_reg[7]_i_116_n_4 }),
        .O({\NLW_out_reg[7]_i_76_O_UNCONNECTED [3],\out_reg[7]_i_76_n_5 ,\out_reg[7]_i_76_n_6 ,\out_reg[7]_i_76_n_7 }),
        .S({\out[7]_i_117_n_0 ,\out[7]_i_118_n_0 ,\out[7]_i_119_n_0 ,\out[7]_i_120_n_0 }));
  CARRY4 \out_reg[7]_i_77 
       (.CI(\out_reg[7]_i_82_n_0 ),
        .CO({\out_reg[7]_i_77_n_0 ,\NLW_out_reg[7]_i_77_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_116_n_5 ,\out_reg[7]_i_116_n_6 ,\out_reg[7]_i_116_n_7 ,\out_reg[7]_i_121_n_4 }),
        .O({\out_reg[7]_i_77_n_4 ,\out_reg[7]_i_77_n_5 ,\out_reg[7]_i_77_n_6 ,\out_reg[7]_i_77_n_7 }),
        .S({\out[7]_i_122_n_0 ,\out[7]_i_123_n_0 ,\out[7]_i_124_n_0 ,\out[7]_i_125_n_0 }));
  CARRY4 \out_reg[7]_i_8 
       (.CI(\out_reg[7]_i_18_n_0 ),
        .CO({\out_reg[7]_i_8_n_0 ,\NLW_out_reg[7]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_7_n_0 ,\out_reg[7]_i_7_n_6 ,\out_reg[7]_i_7_n_7 ,\out_reg[7]_i_11_n_4 }),
        .O({\NLW_out_reg[7]_i_8_O_UNCONNECTED [3],\out_reg[7]_i_8_n_5 ,\out_reg[7]_i_8_n_6 ,\out_reg[7]_i_8_n_7 }),
        .S({\out[7]_i_19_n_0 ,\out[7]_i_20_n_0 ,\out[7]_i_21_n_0 ,\out[7]_i_22_n_0 }));
  CARRY4 \out_reg[7]_i_82 
       (.CI(\out_reg[7]_i_87_n_0 ),
        .CO({\out_reg[7]_i_82_n_0 ,\NLW_out_reg[7]_i_82_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_121_n_5 ,\out_reg[7]_i_121_n_6 ,\out_reg[7]_i_121_n_7 ,\out_reg[7]_i_126_n_4 }),
        .O({\out_reg[7]_i_82_n_4 ,\out_reg[7]_i_82_n_5 ,\out_reg[7]_i_82_n_6 ,\out_reg[7]_i_82_n_7 }),
        .S({\out[7]_i_127_n_0 ,\out[7]_i_128_n_0 ,\out[7]_i_129_n_0 ,\out[7]_i_130_n_0 }));
  CARRY4 \out_reg[7]_i_87 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_87_n_0 ,\NLW_out_reg[7]_i_87_CO_UNCONNECTED [2:0]}),
        .CYINIT(\out_reg[7]_i_115_n_0 ),
        .DI({\out_reg[7]_i_126_n_5 ,\out_reg[7]_i_126_n_6 ,\aux_reg_n_0_[10] ,1'b0}),
        .O({\out_reg[7]_i_87_n_4 ,\out_reg[7]_i_87_n_5 ,\out_reg[7]_i_87_n_6 ,\NLW_out_reg[7]_i_87_O_UNCONNECTED [0]}),
        .S({\out[7]_i_131_n_0 ,\out[7]_i_132_n_0 ,\out[7]_i_133_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_i_9 
       (.CI(\out_reg[7]_i_23_n_0 ),
        .CO({\out_reg[7]_i_9_n_0 ,\NLW_out_reg[7]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_i_8_n_0 ,\out_reg[7]_i_8_n_6 ,\out_reg[7]_i_8_n_7 ,\out_reg[7]_i_18_n_4 }),
        .O({\NLW_out_reg[7]_i_9_O_UNCONNECTED [3],\out_reg[7]_i_9_n_5 ,\out_reg[7]_i_9_n_6 ,\out_reg[7]_i_9_n_7 }),
        .S({\out[7]_i_24_n_0 ,\out[7]_i_25_n_0 ,\out[7]_i_26_n_0 ,\out[7]_i_27_n_0 }));
  CARRY4 \out_reg[7]_i_92 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_92_n_0 ,\NLW_out_reg[7]_i_92_CO_UNCONNECTED [2:0]}),
        .CYINIT(\out_reg[7]_i_7_n_0 ),
        .DI({\out_reg[7]_i_65_n_5 ,\out_reg[7]_i_65_n_6 ,\aux_reg_n_0_[6] ,1'b0}),
        .O({\out_reg[7]_i_92_n_4 ,\out_reg[7]_i_92_n_5 ,\out_reg[7]_i_92_n_6 ,\NLW_out_reg[7]_i_92_O_UNCONNECTED [0]}),
        .S({\out[7]_i_134_n_0 ,\out[7]_i_135_n_0 ,\out[7]_i_136_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_i_97 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_97_n_0 ,\NLW_out_reg[7]_i_97_CO_UNCONNECTED [2:0]}),
        .CYINIT(\out_reg[7]_i_8_n_0 ),
        .DI({\out_reg[7]_i_92_n_5 ,\out_reg[7]_i_92_n_6 ,\aux_reg_n_0_[5] ,1'b0}),
        .O({\out_reg[7]_i_97_n_4 ,\out_reg[7]_i_97_n_5 ,\out_reg[7]_i_97_n_6 ,\NLW_out_reg[7]_i_97_O_UNCONNECTED [0]}),
        .S({\out[7]_i_137_n_0 ,\out[7]_i_138_n_0 ,\out[7]_i_139_n_0 ,1'b1}));
  LUT5 #(
    .INIT(32'h0000782A)) 
    \p_0_out_inferred__0/out[1]_i_2 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[4] ),
        .O(\p_0_out_inferred__0/out[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000290)) 
    \p_0_out_inferred__0/out[2]_i_3 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[4] ),
        .O(\p_0_out_inferred__0/out[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00005AA8)) 
    \p_0_out_inferred__0/out[3]_i_3 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[4] ),
        .O(\p_0_out_inferred__0/out[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00180036)) 
    \p_0_out_inferred__0/out[4]_i_2 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[4] ),
        .I4(\i_reg_n_0_[3] ),
        .O(\p_0_out_inferred__0/out[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00009C62)) 
    \p_0_out_inferred__0/out[5]_i_4 
       (.I0(\i_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[4] ),
        .O(\p_0_out_inferred__0/out[5]_i_4_n_0 ));
  CARRY4 \state_reg2_inferred__0/i___839_carry 
       (.CI(1'b0),
        .CO({\state_reg2_inferred__0/i___839_carry_n_0 ,\NLW_state_reg2_inferred__0/i___839_carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(i___839_carry_i_1_n_0),
        .DI({i___839_carry_i_2_n_4,i___839_carry_i_2_n_5,i___839_carry_i_2_n_6,\aux_reg_n_0_[0] }),
        .O(\NLW_state_reg2_inferred__0/i___839_carry_O_UNCONNECTED [3:0]),
        .S({i___839_carry_i_3_n_0,i___839_carry_i_4_n_0,i___839_carry_i_5_n_0,i___839_carry_i_6_n_0}));
  CARRY4 \state_reg2_inferred__0/i___839_carry__0 
       (.CI(\state_reg2_inferred__0/i___839_carry_n_0 ),
        .CO({\state_reg2_inferred__0/i___839_carry__0_n_0 ,\NLW_state_reg2_inferred__0/i___839_carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i___839_carry__0_i_1_n_4,i___839_carry__0_i_1_n_5,i___839_carry__0_i_1_n_6,i___839_carry__0_i_1_n_7}),
        .O(\NLW_state_reg2_inferred__0/i___839_carry__0_O_UNCONNECTED [3:0]),
        .S({i___839_carry__0_i_2_n_0,i___839_carry__0_i_3_n_0,i___839_carry__0_i_4_n_0,i___839_carry__0_i_5_n_0}));
  CARRY4 \state_reg2_inferred__0/i___839_carry__1 
       (.CI(\state_reg2_inferred__0/i___839_carry__0_n_0 ),
        .CO({\state_reg2_inferred__0/i___839_carry__1_n_0 ,\NLW_state_reg2_inferred__0/i___839_carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i___839_carry__1_i_1_n_4,i___839_carry__1_i_1_n_5,i___839_carry__1_i_1_n_6,i___839_carry__1_i_1_n_7}),
        .O(\NLW_state_reg2_inferred__0/i___839_carry__1_O_UNCONNECTED [3:0]),
        .S({i___839_carry__1_i_2_n_0,i___839_carry__1_i_3_n_0,i___839_carry__1_i_4_n_0,i___839_carry__1_i_5_n_0}));
  CARRY4 \state_reg2_inferred__0/i___839_carry__2 
       (.CI(\state_reg2_inferred__0/i___839_carry__1_n_0 ),
        .CO({\NLW_state_reg2_inferred__0/i___839_carry__2_CO_UNCONNECTED [3],\state_reg2_inferred__0/i___839_carry__2_n_1 ,\NLW_state_reg2_inferred__0/i___839_carry__2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,i___839_carry_i_1_n_0,i___839_carry_i_1_n_6,i___839_carry_i_1_n_7}),
        .O(\NLW_state_reg2_inferred__0/i___839_carry__2_O_UNCONNECTED [3:0]),
        .S({1'b0,i___839_carry__2_i_1_n_0,i___839_carry__2_i_2_n_0,i___839_carry__2_i_3_n_0}));
  CARRY4 \state_reg2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state_reg2_inferred__0/i__carry_n_0 ,\NLW_state_reg2_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,\aux_reg_n_0_[15] }),
        .O({\state_reg2_inferred__0/i__carry_n_4 ,\state_reg2_inferred__0/i__carry_n_5 ,\state_reg2_inferred__0/i__carry_n_6 ,\state_reg2_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0}));
  CARRY4 \state_reg2_inferred__0/i__carry__0 
       (.CI(\state_reg2_inferred__0/i__carry_n_0 ),
        .CO({\state_reg2_inferred__0/i__carry__0_n_0 ,\NLW_state_reg2_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O({\state_reg2_inferred__0/i__carry__0_n_4 ,\state_reg2_inferred__0/i__carry__0_n_5 ,\state_reg2_inferred__0/i__carry__0_n_6 ,\state_reg2_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \state_reg2_inferred__0/i__carry__1 
       (.CI(\state_reg2_inferred__0/i__carry__0_n_0 ),
        .CO({\state_reg2_inferred__0/i__carry__1_n_0 ,\NLW_state_reg2_inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O({\state_reg2_inferred__0/i__carry__1_n_4 ,\state_reg2_inferred__0/i__carry__1_n_5 ,\state_reg2_inferred__0/i__carry__1_n_6 ,\state_reg2_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  CARRY4 \state_reg2_inferred__0/i__carry__2 
       (.CI(\state_reg2_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_state_reg2_inferred__0/i__carry__2_CO_UNCONNECTED [3],\state_reg2_inferred__0/i__carry__2_n_1 ,\NLW_state_reg2_inferred__0/i__carry__2_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0}),
        .O({\NLW_state_reg2_inferred__0/i__carry__2_O_UNCONNECTED [3:2],\state_reg2_inferred__0/i__carry__2_n_6 ,\state_reg2_inferred__0/i__carry__2_n_7 }),
        .S({1'b0,1'b1,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h44FFFFFF50FF0000)) 
    \state_reg[0]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\state_reg[0]_i_2_n_0 ),
        .I2(\state_reg[0]_i_3_n_0 ),
        .I3(\state_reg[0]_i_4_n_0 ),
        .I4(\state_reg[2]_i_5_n_0 ),
        .I5(\state_reg_reg_n_0_[0] ),
        .O(\state_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state_reg[0]_i_2 
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\state_reg2_inferred__0/i___839_carry__2_n_1 ),
        .I2(\out_reg[7]_i_8_n_0 ),
        .I3(\state_reg[0]_i_5_n_0 ),
        .O(\state_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \state_reg[0]_i_3 
       (.I0(first),
        .I1(finish_program),
        .O(\state_reg[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0400FFFF)) 
    \state_reg[0]_i_4 
       (.I0(\aux_Count[14]_i_2_n_0 ),
        .I1(acc_sended),
        .I2(\div_reg_n_0_[13] ),
        .I3(\state_reg[2]_i_6_n_0 ),
        .I4(\out[7]_i_3_n_0 ),
        .O(\state_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_reg[0]_i_5 
       (.I0(i___839_carry_i_1_n_0),
        .I1(\out_reg[7]_i_9_n_0 ),
        .I2(\out_reg[7]_i_7_n_0 ),
        .I3(z_flag_reg_n_0),
        .I4(\out_reg[7]_i_10_n_0 ),
        .I5(\out_reg[3]_i_2_n_0 ),
        .O(\state_reg[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8CCCC)) 
    \state_reg[1]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\state_reg[2]_i_2_n_0 ),
        .I3(\state_reg[2]_i_3_n_0 ),
        .I4(\state_reg[2]_i_5_n_0 ),
        .O(\state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0057AAAAAAAA)) 
    \state_reg[2]_i_1 
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\state_reg[2]_i_2_n_0 ),
        .I3(\state_reg[2]_i_3_n_0 ),
        .I4(\state_reg[2]_i_4_n_0 ),
        .I5(\state_reg[2]_i_5_n_0 ),
        .O(\state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \state_reg[2]_i_10 
       (.I0(\div_reg_n_0_[4] ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\state_reg[2]_i_11_n_0 ),
        .I3(\div_reg_n_0_[5] ),
        .I4(\div_reg_n_0_[1] ),
        .I5(\div_reg_n_0_[0] ),
        .O(\state_reg[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \state_reg[2]_i_11 
       (.I0(\div_reg_n_0_[7] ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\div_reg_n_0_[10] ),
        .I3(\div_reg_n_0_[11] ),
        .O(\state_reg[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \state_reg[2]_i_2 
       (.I0(tick_reg),
        .I1(acc_sended),
        .I2(\div_reg_n_0_[13] ),
        .I3(\state_reg[2]_i_6_n_0 ),
        .O(\state_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABABBBABBBABB)) 
    \state_reg[2]_i_3 
       (.I0(z_flag_i_3_n_0),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\state_reg[0]_i_2_n_0 ),
        .I3(\state_reg_reg_n_0_[0] ),
        .I4(finish_program),
        .I5(first),
        .O(\state_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFFFFFFE)) 
    \state_reg[2]_i_4 
       (.I0(\i_reg_n_0_[6] ),
        .I1(\state_reg[2]_i_7_n_0 ),
        .I2(\i_reg_n_0_[5] ),
        .I3(\state_reg[2]_i_8_n_0 ),
        .I4(\i_reg_n_0_[7] ),
        .I5(\state_reg[2]_i_9_n_0 ),
        .O(\state_reg[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0074)) 
    \state_reg[2]_i_5 
       (.I0(\state_reg_reg_n_0_[0] ),
        .I1(\state_reg_reg_n_0_[2] ),
        .I2(\state_reg_reg_n_0_[1] ),
        .I3(reset_IBUF),
        .I4(z_flag_i_3_n_0),
        .O(\state_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state_reg[2]_i_6 
       (.I0(\div_reg_n_0_[7] ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\div_reg_n_0_[9] ),
        .I3(\div_reg_n_0_[2] ),
        .I4(\div_reg_n_0_[8] ),
        .I5(\state_reg[2]_i_10_n_0 ),
        .O(\state_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \state_reg[2]_i_7 
       (.I0(tick_reg),
        .I1(\i_reg_n_0_[4] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .I4(\i_reg_n_0_[2] ),
        .I5(\i_reg_n_0_[3] ),
        .O(\state_reg[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \state_reg[2]_i_8 
       (.I0(\i_reg_n_0_[4] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[2] ),
        .I4(\i_reg_n_0_[3] ),
        .O(\state_reg[2]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \state_reg[2]_i_9 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\state_reg_reg_n_0_[0] ),
        .I2(\state_reg_reg_n_0_[2] ),
        .O(\state_reg[2]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state_reg[0]_i_1_n_0 ),
        .Q(\state_reg_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_reg[1]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\state_reg_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_reg[2]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\state_reg_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFDFDFDF00101010)) 
    tx_start_aux_i_1
       (.I0(tick_reg),
        .I1(reset_IBUF),
        .I2(\state_reg_reg_n_0_[2] ),
        .I3(\state_reg_reg_n_0_[0] ),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(tx_start),
        .O(tx_start_aux_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_start_aux_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(tx_start_aux_i_1_n_0),
        .Q(tx_start));
  LUT6 #(
    .INIT(64'hAAAAAAFFAAAAAA08)) 
    z_flag_i_1
       (.I0(z_flag_i_2_n_0),
        .I1(\out[7]_i_6_n_0 ),
        .I2(reset_IBUF),
        .I3(acc_sended_i_2_n_0),
        .I4(z_flag_i_3_n_0),
        .I5(z_flag_reg_n_0),
        .O(z_flag_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    z_flag_i_2
       (.I0(\state_reg_reg_n_0_[2] ),
        .I1(\state_reg[0]_i_2_n_0 ),
        .O(z_flag_i_2_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    z_flag_i_3
       (.I0(\aux_Count[14]_i_2_n_0 ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(tick_reg),
        .I3(\state_reg_reg_n_0_[2] ),
        .O(z_flag_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    z_flag_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(z_flag_i_1_n_0),
        .Q(z_flag_reg_n_0));
endmodule

module UART
   (tx_OBUF,
    ena,
    clk_IBUF_BUFG,
    reset_IBUF,
    finish_program,
    In_Data,
    rx_IBUF,
    D);
  output tx_OBUF;
  output ena;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input finish_program;
  input [15:0]In_Data;
  input rx_IBUF;
  input [10:0]D;

  wire [10:0]D;
  wire [15:0]In_Data;
  wire clk_IBUF_BUFG;
  wire [6:0]din;
  wire ena;
  wire finish_program;
  wire int_tx_n_8;
  wire is_s;
  wire reset_IBUF;
  wire rx_IBUF;
  wire rx_mod_n_0;
  wire rx_mod_n_1;
  wire rx_mod_n_2;
  wire s_tick;
  wire state_reg;
  wire tx_OBUF;
  wire tx_mod_n_0;
  wire tx_mod_n_2;
  wire tx_start;

  br_generator br_g
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .s_tick(s_tick));
  Rx_interface int_rx
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ena(ena),
        .is_s(is_s),
        .is_s_reg_0(rx_mod_n_2),
        .reset_IBUF(reset_IBUF),
        .state_reg(state_reg),
        .state_reg_reg_0(rx_mod_n_0),
        .tick_reg(rx_mod_n_1));
  Tx_interface int_tx
       (.D(int_tx_n_8),
        .In_Data(In_Data),
        .Q(din),
        .\aux_PC_reg[10] (D),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .finish_program(finish_program),
        .out(tx_mod_n_0),
        .reset_IBUF(reset_IBUF),
        .tick_reg(tx_mod_n_2),
        .tx_start(tx_start));
  rx_module rx_mod
       (.aux_BIP_reg(rx_mod_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ena(ena),
        .is_s(is_s),
        .is_s_reg(rx_mod_n_0),
        .reset_IBUF(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .s_tick(s_tick),
        .state_reg(state_reg),
        .state_reg_reg(rx_mod_n_1));
  tx_module tx_mod
       (.D(int_tx_n_8),
        .Q(din),
        .acc_sended_reg(tx_mod_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(tx_mod_n_0),
        .reset_IBUF(reset_IBUF),
        .s_tick(s_tick),
        .tx_OBUF(tx_OBUF),
        .tx_start(tx_start));
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
  LUT2 #(
    .INIT(4'h6)) 
    \ciclos[1]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .O(data0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \ciclos[2]_i_1 
       (.I0(ciclos[1]),
        .I1(ciclos[0]),
        .I2(ciclos[2]),
        .O(\ciclos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ciclos[3]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .I2(ciclos[2]),
        .I3(ciclos[3]),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
   (is_s_reg,
    state_reg_reg,
    aux_BIP_reg,
    rx_IBUF,
    s_tick,
    state_reg,
    is_s,
    reset_IBUF,
    ena,
    clk_IBUF_BUFG);
  output is_s_reg;
  output state_reg_reg;
  output aux_BIP_reg;
  input rx_IBUF;
  input s_tick;
  input state_reg;
  input is_s;
  input reset_IBUF;
  input ena;
  input clk_IBUF_BUFG;

  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire aux_BIP_reg;
  wire b_next;
  wire clk_IBUF_BUFG;
  wire [7:0]dout;
  wire ena;
  wire is_s;
  wire is_s_i_2_n_0;
  wire is_s_i_3_n_0;
  wire is_s_i_4_n_0;
  wire is_s_i_5_n_0;
  wire is_s_reg;
  wire \n_reg[0]_i_1__0_n_0 ;
  wire \n_reg[1]_i_1__0_n_0 ;
  wire \n_reg[2]_i_1__0_n_0 ;
  wire \n_reg[2]_i_2__0_n_0 ;
  wire reset_IBUF;
  wire rx_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1__0_n_0 ;
  wire \s_reg[3]_i_2__0_n_0 ;
  wire \s_reg[3]_i_3_n_0 ;
  wire s_tick;
  wire [2:0]sel0;
  wire state_reg;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg_0;
  wire state_reg_i_2_n_0;
  wire state_reg_reg;

  LUT4 #(
    .INIT(16'h31CC)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg_0[1]),
        .I1(state_reg_0[0]),
        .I2(s_tick),
        .I3(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h38CC)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(s_tick),
        .I1(state_reg_0[1]),
        .I2(state_reg_0[0]),
        .I3(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8C8C8CF)) 
    \FSM_sequential_state_reg[1]_i_2__0 
       (.I0(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I2(state_reg_0[0]),
        .I3(state_reg_0[1]),
        .I4(rx_IBUF),
        .I5(\n_reg[2]_i_2__0_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(state_reg_0[1]),
        .I1(s_tick),
        .I2(s_reg[3]),
        .I3(s_reg[2]),
        .I4(s_reg[1]),
        .I5(s_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg_0[0]));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    aux_BIP_i_1
       (.I0(is_s_i_4_n_0),
        .I1(is_s),
        .I2(dout[7]),
        .I3(state_reg),
        .I4(is_s_i_3_n_0),
        .I5(ena),
        .O(aux_BIP_reg));
  LUT5 #(
    .INIT(32'h00004000)) 
    \b_reg[7]_i_1__0 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(s_reg[3]),
        .I2(s_tick),
        .I3(state_reg_0[1]),
        .I4(state_reg_0[0]),
        .O(b_next));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[1]),
        .Q(dout[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[2]),
        .Q(dout[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[3]),
        .Q(dout[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[4]),
        .Q(dout[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[5]),
        .Q(dout[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[6]),
        .Q(dout[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout[7]),
        .Q(dout[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(rx_IBUF),
        .Q(dout[7]));
  LUT6 #(
    .INIT(64'hBB88BB80BB88BB88)) 
    is_s_i_1
       (.I0(is_s_i_2_n_0),
        .I1(state_reg),
        .I2(is_s_i_3_n_0),
        .I3(is_s),
        .I4(dout[7]),
        .I5(is_s_i_4_n_0),
        .O(is_s_reg));
  LUT5 #(
    .INIT(32'h00000040)) 
    is_s_i_2
       (.I0(dout[2]),
        .I1(dout[6]),
        .I2(dout[1]),
        .I3(dout[7]),
        .I4(is_s_i_5_n_0),
        .O(is_s_i_2_n_0));
  LUT3 #(
    .INIT(8'hBF)) 
    is_s_i_3
       (.I0(dout[6]),
        .I1(dout[0]),
        .I2(dout[3]),
        .O(is_s_i_3_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    is_s_i_4
       (.I0(dout[4]),
        .I1(dout[5]),
        .I2(dout[2]),
        .I3(dout[1]),
        .O(is_s_i_4_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    is_s_i_5
       (.I0(dout[0]),
        .I1(dout[4]),
        .I2(dout[5]),
        .I3(dout[3]),
        .O(is_s_i_5_n_0));
  LUT6 #(
    .INIT(64'h4F0F5A5A40005050)) 
    \n_reg[0]_i_1__0 
       (.I0(\n_reg[2]_i_2__0_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(b_next),
        .I5(state_reg_0[1]),
        .O(\n_reg[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7C3C6C6C40004444)) 
    \n_reg[1]_i_1__0 
       (.I0(\n_reg[2]_i_2__0_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(b_next),
        .I5(state_reg_0[1]),
        .O(\n_reg[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FC07F8040005500)) 
    \n_reg[2]_i_1__0 
       (.I0(\n_reg[2]_i_2__0_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(b_next),
        .I5(state_reg_0[1]),
        .O(\n_reg[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \n_reg[2]_i_2__0 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(s_reg[3]),
        .I2(s_tick),
        .I3(state_reg_0[0]),
        .I4(state_reg_0[1]),
        .O(\n_reg[2]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1__0_n_0 ),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1__0_n_0 ),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1__0_n_0 ),
        .Q(sel0[2]));
  LUT4 #(
    .INIT(16'h02FE)) 
    \s_reg[0]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg_0[1]),
        .I2(state_reg_0[0]),
        .I3(s_reg[0]),
        .O(\s_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FEFE02)) 
    \s_reg[1]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg_0[1]),
        .I2(state_reg_0[0]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .O(\s_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFE02FE02FE02)) 
    \s_reg[2]_i_1__0 
       (.I0(rx_IBUF),
        .I1(state_reg_0[1]),
        .I2(state_reg_0[0]),
        .I3(s_reg[2]),
        .I4(s_reg[1]),
        .I5(s_reg[0]),
        .O(\s_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFF0DFFF0000000F)) 
    \s_reg[3]_i_1__0 
       (.I0(s_reg[3]),
        .I1(\s_reg[3]_i_3_n_0 ),
        .I2(state_reg_0[0]),
        .I3(state_reg_0[1]),
        .I4(rx_IBUF),
        .I5(s_tick),
        .O(s_next));
  LUT5 #(
    .INIT(32'h989F9890)) 
    \s_reg[3]_i_2__0 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(s_reg[3]),
        .I2(state_reg_0[1]),
        .I3(state_reg_0[0]),
        .I4(rx_IBUF),
        .O(\s_reg[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \s_reg[3]_i_3 
       (.I0(s_reg[2]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .O(\s_reg[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1__0_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2__0_n_0 ),
        .Q(s_reg[3]));
  LUT5 #(
    .INIT(32'hAAAA4000)) 
    state_reg_i_1
       (.I0(reset_IBUF),
        .I1(state_reg_i_2_n_0),
        .I2(s_tick),
        .I3(state_reg_0[1]),
        .I4(state_reg),
        .O(state_reg_reg));
  LUT5 #(
    .INIT(32'h80000000)) 
    state_reg_i_2
       (.I0(state_reg_0[0]),
        .I1(s_reg[3]),
        .I2(s_reg[2]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .O(state_reg_i_2_n_0));
endmodule

module tx_module
   (out,
    tx_OBUF,
    acc_sended_reg,
    clk_IBUF_BUFG,
    reset_IBUF,
    tx_start,
    s_tick,
    Q,
    D);
  output [0:0]out;
  output tx_OBUF;
  output acc_sended_reg;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input tx_start;
  input s_tick;
  input [6:0]Q;
  input [0:0]D;

  wire [0:0]D;
  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3__0_n_0 ;
  wire [6:0]Q;
  wire acc_sended_reg;
  wire b_next;
  wire [0:0]b_reg;
  wire \b_reg[0]_i_1_n_0 ;
  wire \b_reg[1]_i_1_n_0 ;
  wire \b_reg[2]_i_1_n_0 ;
  wire \b_reg[3]_i_1_n_0 ;
  wire \b_reg[4]_i_1_n_0 ;
  wire \b_reg[5]_i_1_n_0 ;
  wire \b_reg[6]_i_1_n_0 ;
  wire \b_reg[7]_i_3_n_0 ;
  wire [7:1]b_reg__0;
  wire clk_IBUF_BUFG;
  wire n_next;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire reset_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1__0_n_0 ;
  wire \s_reg[1]_i_1__0_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire s_tick;
  wire [2:0]sel0;
  (* RTL_KEEP = "yes" *) wire [0:0]state_reg;
  wire tx_OBUF;
  wire tx_next;
  wire tx_start;

  LUT4 #(
    .INIT(16'h31CC)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(out),
        .I1(state_reg),
        .I2(s_tick),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h62CC)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(state_reg),
        .I1(out),
        .I2(s_tick),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000C000CFAFC000C)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I1(tx_start),
        .I2(state_reg),
        .I3(out),
        .I4(s_tick),
        .I5(\b_reg[7]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[1]_i_3__0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\FSM_sequential_state_reg[1]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(state_reg));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(out));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(b_reg__0[1]),
        .I1(out),
        .I2(Q[0]),
        .O(\b_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(b_reg__0[2]),
        .I1(out),
        .I2(Q[1]),
        .O(\b_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(b_reg__0[3]),
        .I1(out),
        .I2(Q[2]),
        .O(\b_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(b_reg__0[4]),
        .I1(out),
        .I2(Q[3]),
        .O(\b_reg[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(b_reg__0[5]),
        .I1(out),
        .I2(Q[4]),
        .O(\b_reg[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(b_reg__0[6]),
        .I1(out),
        .I2(Q[5]),
        .O(\b_reg[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(b_reg__0[7]),
        .I1(out),
        .I2(Q[6]),
        .O(\b_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000030AA)) 
    \b_reg[7]_i_1 
       (.I0(tx_start),
        .I1(\b_reg[7]_i_3_n_0 ),
        .I2(s_tick),
        .I3(out),
        .I4(state_reg),
        .O(b_next));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \b_reg[7]_i_3 
       (.I0(s_reg[3]),
        .I1(s_reg[2]),
        .I2(s_reg[0]),
        .I3(s_reg[1]),
        .O(\b_reg[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg[0]_i_1_n_0 ),
        .Q(b_reg));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg[1]_i_1_n_0 ),
        .Q(b_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg[2]_i_1_n_0 ),
        .Q(b_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg[3]_i_1_n_0 ),
        .Q(b_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg[4]_i_1_n_0 ),
        .Q(b_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg[5]_i_1_n_0 ),
        .Q(b_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg[6]_i_1_n_0 ),
        .Q(b_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(D),
        .Q(b_reg__0[7]));
  LUT4 #(
    .INIT(16'h4000)) 
    \i[7]_i_3 
       (.I0(\b_reg[7]_i_3_n_0 ),
        .I1(s_tick),
        .I2(state_reg),
        .I3(out),
        .O(acc_sended_reg));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(out),
        .I1(n_next),
        .I2(sel0[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \n_reg[1]_i_1 
       (.I0(sel0[0]),
        .I1(out),
        .I2(n_next),
        .I3(sel0[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \n_reg[2]_i_1 
       (.I0(out),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(n_next),
        .I4(sel0[2]),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001C00)) 
    \n_reg[2]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I1(state_reg),
        .I2(out),
        .I3(s_tick),
        .I4(\b_reg[7]_i_3_n_0 ),
        .O(n_next));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(sel0[2]));
  LUT3 #(
    .INIT(8'h54)) 
    \s_reg[0]_i_1__0 
       (.I0(s_reg[0]),
        .I1(state_reg),
        .I2(out),
        .O(\s_reg[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6660)) 
    \s_reg[1]_i_1__0 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(state_reg),
        .I3(out),
        .O(\s_reg[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0EE0E0E0)) 
    \s_reg[2]_i_1 
       (.I0(out),
        .I1(state_reg),
        .I2(s_reg[2]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE023E02)) 
    \s_reg[3]_i_1 
       (.I0(tx_start),
        .I1(state_reg),
        .I2(out),
        .I3(s_tick),
        .I4(\b_reg[7]_i_3_n_0 ),
        .O(s_next));
  LUT6 #(
    .INIT(64'h6AAA6AAA6AAA0000)) 
    \s_reg[3]_i_2 
       (.I0(s_reg[3]),
        .I1(s_reg[2]),
        .I2(s_reg[0]),
        .I3(s_reg[1]),
        .I4(out),
        .I5(state_reg),
        .O(\s_reg[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1__0_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1__0_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]));
  LUT3 #(
    .INIT(8'hE5)) 
    tx_reg_i_1
       (.I0(state_reg),
        .I1(b_reg),
        .I2(out),
        .O(tx_next));
  FDPE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_next),
        .PRE(reset_IBUF),
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
