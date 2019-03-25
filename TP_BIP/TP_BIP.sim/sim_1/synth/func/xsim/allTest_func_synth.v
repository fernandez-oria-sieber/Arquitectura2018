// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Mar 25 19:34:21 2019
// Host        : vlad-putin running 64-bit Arch Linux
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/vlad/Arquitectura2018/TP_BIP/TP_BIP.sim/sim_1/synth/func/xsim/allTest_func_synth.v
// Design      : Top_level
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (O,
    \ACC_reg[7] ,
    \ACC_reg[11] ,
    \ACC_reg[15] ,
    Q,
    DI,
    S,
    ram_name_reg,
    ram_name_reg_0,
    ram_name_reg_1);
  output [3:0]O;
  output [3:0]\ACC_reg[7] ;
  output [3:0]\ACC_reg[11] ;
  output [3:0]\ACC_reg[15] ;
  input [14:0]Q;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]ram_name_reg;
  input [3:0]ram_name_reg_0;
  input [3:0]ram_name_reg_1;

  wire [3:0]\ACC_reg[11] ;
  wire [3:0]\ACC_reg[15] ;
  wire [3:0]\ACC_reg[7] ;
  wire [0:0]DI;
  wire [3:0]O;
  wire [14:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__0_n_4 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__1_n_4 ;
  wire \_inferred__0/i__carry__2_n_2 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry__2_n_4 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire \_inferred__0/i__carry_n_4 ;
  wire [3:0]ram_name_reg;
  wire [3:0]ram_name_reg_0;
  wire [3:0]ram_name_reg_1;
  wire [3:3]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 ,\_inferred__0/i__carry_n_4 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],DI}),
        .O(O),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_1 ),
        .CO({\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 ,\_inferred__0/i__carry__0_n_4 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\ACC_reg[7] ),
        .S(ram_name_reg));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_1 ),
        .CO({\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 ,\_inferred__0/i__carry__1_n_4 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\ACC_reg[11] ),
        .S(ram_name_reg_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_1 ),
        .CO({\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [3],\_inferred__0/i__carry__2_n_2 ,\_inferred__0/i__carry__2_n_3 ,\_inferred__0/i__carry__2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O(\ACC_reg[15] ),
        .S(ram_name_reg_1));
endmodule

module CPU
   (out,
    O,
    Q,
    \ACC_reg[7] ,
    \ACC_reg[11] ,
    \ACC_reg[15] ,
    finish_program,
    aux_finish_program_reg,
    DI,
    S,
    ram_name_reg,
    ram_name_reg_0,
    ram_name_reg_1,
    ram_name_reg_2,
    clk,
    reset_IBUF,
    DOADO,
    E,
    D,
    ena);
  output [10:0]out;
  output [3:0]O;
  output [15:0]Q;
  output [3:0]\ACC_reg[7] ;
  output [3:0]\ACC_reg[11] ;
  output [3:0]\ACC_reg[15] ;
  output finish_program;
  output aux_finish_program_reg;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]ram_name_reg;
  input [3:0]ram_name_reg_0;
  input [3:0]ram_name_reg_1;
  input ram_name_reg_2;
  input clk;
  input reset_IBUF;
  input [4:0]DOADO;
  input [0:0]E;
  input [15:0]D;
  input ena;

  wire [3:0]\ACC_reg[11] ;
  wire [3:0]\ACC_reg[15] ;
  wire [3:0]\ACC_reg[7] ;
  wire [15:0]D;
  wire [0:0]DI;
  wire [4:0]DOADO;
  wire [0:0]E;
  wire [3:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire aux_finish_program_reg;
  wire clk;
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
        .clk(clk),
        .ena(ena),
        .finish_program(finish_program),
        .ram_name_reg(ram_name_reg_2),
        .reset_IBUF(reset_IBUF));
  Datapath datapath
       (.\ACC_reg[11]_0 (\ACC_reg[11] ),
        .\ACC_reg[15]_0 (\ACC_reg[15] ),
        .\ACC_reg[7]_0 (\ACC_reg[7] ),
        .D(D),
        .DI(DI),
        .E(E),
        .O(O),
        .Q(Q),
        .S(S),
        .clk(clk),
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
    clk,
    reset_IBUF,
    DOADO,
    ena);
  output [10:0]Q;
  output finish_program;
  output aux_finish_program_reg_0;
  input ram_name_reg;
  input clk;
  input reset_IBUF;
  input [4:0]DOADO;
  input ena;

  wire [4:0]DOADO;
  wire [10:0]Q;
  wire aux_PC0_carry__0_n_1;
  wire aux_PC0_carry__0_n_2;
  wire aux_PC0_carry__0_n_3;
  wire aux_PC0_carry__0_n_4;
  wire aux_PC0_carry__1_n_3;
  wire aux_PC0_carry__1_n_4;
  wire aux_PC0_carry_i_1_n_1;
  wire aux_PC0_carry_n_1;
  wire aux_PC0_carry_n_2;
  wire aux_PC0_carry_n_3;
  wire aux_PC0_carry_n_4;
  wire aux_finish_program_i_3_n_1;
  wire aux_finish_program_i_4_n_1;
  wire aux_finish_program_reg_0;
  wire clk;
  wire ena;
  wire finish_program;
  wire [10:0]p_0_in;
  wire ram_name_reg;
  wire reset_IBUF;
  wire [3:2]NLW_aux_PC0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_aux_PC0_carry__1_O_UNCONNECTED;

  CARRY4 aux_PC0_carry
       (.CI(1'b0),
        .CO({aux_PC0_carry_n_1,aux_PC0_carry_n_2,aux_PC0_carry_n_3,aux_PC0_carry_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O(p_0_in[3:0]),
        .S({Q[3:1],aux_PC0_carry_i_1_n_1}));
  CARRY4 aux_PC0_carry__0
       (.CI(aux_PC0_carry_n_1),
        .CO({aux_PC0_carry__0_n_1,aux_PC0_carry__0_n_2,aux_PC0_carry__0_n_3,aux_PC0_carry__0_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[7:4]),
        .S(Q[7:4]));
  CARRY4 aux_PC0_carry__1
       (.CI(aux_PC0_carry__0_n_1),
        .CO({NLW_aux_PC0_carry__1_CO_UNCONNECTED[3:2],aux_PC0_carry__1_n_3,aux_PC0_carry__1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_aux_PC0_carry__1_O_UNCONNECTED[3],p_0_in[10:8]}),
        .S({1'b0,Q[10:8]}));
  LUT6 #(
    .INIT(64'hAAA5AAA5AAA5AAA6)) 
    aux_PC0_carry_i_1
       (.I0(Q[0]),
        .I1(DOADO[0]),
        .I2(DOADO[4]),
        .I3(DOADO[3]),
        .I4(DOADO[2]),
        .I5(DOADO[1]),
        .O(aux_PC0_carry_i_1_n_1));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[0] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[10] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[1] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[2] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[3] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[4] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[5] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[6] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[7] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[8] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[9] 
       (.C(clk),
        .CE(ena),
        .CLR(reset_IBUF),
        .D(p_0_in[9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0100)) 
    aux_finish_program_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(aux_finish_program_i_3_n_1),
        .I4(DOADO[4]),
        .I5(DOADO[3]),
        .O(aux_finish_program_reg_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    aux_finish_program_i_3
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[10]),
        .I4(aux_finish_program_i_4_n_1),
        .O(aux_finish_program_i_3_n_1));
  LUT4 #(
    .INIT(16'h0001)) 
    aux_finish_program_i_4
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(aux_finish_program_i_4_n_1));
  FDCE #(
    .INIT(1'b0)) 
    aux_finish_program_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(ram_name_reg),
        .Q(finish_program));
endmodule

module Data_memory
   (ram_data,
    clk_IBUF_BUFG,
    clk,
    Wr,
    E,
    DOADO,
    Q);
  output [15:0]ram_data;
  input clk_IBUF_BUFG;
  input clk;
  input Wr;
  input [0:0]E;
  input [10:0]DOADO;
  input [15:0]Q;

  wire [10:0]DOADO;
  wire [0:0]E;
  wire [15:0]Q;
  wire Wr;
  wire clk;
  wire clk_IBUF_BUFG;
  wire [15:0]ram_data;
  wire NLW_ram_name_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_name_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_name_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_name_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_name_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_name_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_name_reg_DOADO_UNCONNECTED;
  wire [31:16]NLW_ram_name_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_name_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_name_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_name_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_name_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
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
    .IS_CLKBWRCLK_INVERTED(1'b1),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_name_reg
       (.ADDRARDADDR({1'b1,DOADO,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,DOADO,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_name_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_name_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_ram_name_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_name_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_name_reg_DOBDO_UNCONNECTED[31:16],ram_data}),
        .DOPADOP(NLW_ram_name_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_name_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_name_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(Wr),
        .ENBWREN(E),
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
        .WEA({E,E,E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module Datapath
   (O,
    Q,
    \ACC_reg[7]_0 ,
    \ACC_reg[11]_0 ,
    \ACC_reg[15]_0 ,
    DI,
    S,
    ram_name_reg,
    ram_name_reg_0,
    ram_name_reg_1,
    E,
    D,
    clk,
    reset_IBUF);
  output [3:0]O;
  output [15:0]Q;
  output [3:0]\ACC_reg[7]_0 ;
  output [3:0]\ACC_reg[11]_0 ;
  output [3:0]\ACC_reg[15]_0 ;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]ram_name_reg;
  input [3:0]ram_name_reg_0;
  input [3:0]ram_name_reg_1;
  input [0:0]E;
  input [15:0]D;
  input clk;
  input reset_IBUF;

  wire [3:0]\ACC_reg[11]_0 ;
  wire [3:0]\ACC_reg[15]_0 ;
  wire [3:0]\ACC_reg[7]_0 ;
  wire [15:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire clk;
  wire [3:0]ram_name_reg;
  wire [3:0]ram_name_reg_0;
  wire [3:0]ram_name_reg_1;
  wire reset_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(reset_IBUF),
        .D(D[9]),
        .Q(Q[9]));
  ALU alu
       (.\ACC_reg[11] (\ACC_reg[11]_0 ),
        .\ACC_reg[15] (\ACC_reg[15]_0 ),
        .\ACC_reg[7] (\ACC_reg[7]_0 ),
        .DI(DI),
        .O(O),
        .Q(Q[14:0]),
        .S(S),
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
    clk,
    ena,
    Q,
    O,
    ram_data,
    \ACC_reg[7]_0 ,
    \ACC_reg[11]_0 ,
    \ACC_reg[14] ,
    \ACC_reg[15]_0 ,
    \aux_PC_reg[2] ,
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
  input clk;
  input ena;
  input [10:0]Q;
  input [3:0]O;
  input [15:0]ram_data;
  input [3:0]\ACC_reg[7]_0 ;
  input [3:0]\ACC_reg[11]_0 ;
  input [3:0]\ACC_reg[14] ;
  input [14:0]\ACC_reg[15]_0 ;
  input \aux_PC_reg[2] ;
  input finish_program;

  wire \ACC[10]_i_2_n_1 ;
  wire \ACC[10]_i_3_n_1 ;
  wire \ACC[15]_i_3_n_1 ;
  wire [3:0]\ACC_reg[11] ;
  wire [3:0]\ACC_reg[11]_0 ;
  wire [3:0]\ACC_reg[14] ;
  wire [3:0]\ACC_reg[15] ;
  wire [14:0]\ACC_reg[15]_0 ;
  wire [3:0]\ACC_reg[7] ;
  wire [3:0]\ACC_reg[7]_0 ;
  wire [15:0]D;
  wire [0:0]DI;
  wire [15:0]DOADO;
  wire [0:0]E;
  wire [3:0]O;
  wire [10:0]Q;
  wire [3:0]S;
  wire Wr;
  wire \aux_PC_reg[2] ;
  wire aux_finish_program_reg;
  wire clk;
  wire ena;
  wire finish_program;
  wire i__carry__1_i_5_n_1;
  wire i__carry__1_i_6_n_1;
  wire i__carry_i_6_n_1;
  wire i__carry_i_7_n_1;
  wire i__carry_i_8_n_1;
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

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[0]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(O[0]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[0]),
        .I4(DOADO[0]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[10]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(\ACC_reg[11]_0 [2]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[10]),
        .I4(DOADO[10]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ACC[10]_i_2 
       (.I0(DOADO[13]),
        .I1(DOADO[14]),
        .I2(DOADO[15]),
        .O(\ACC[10]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFCFCFDFF)) 
    \ACC[10]_i_3 
       (.I0(DOADO[11]),
        .I1(DOADO[15]),
        .I2(DOADO[14]),
        .I3(DOADO[12]),
        .I4(DOADO[13]),
        .O(\ACC[10]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'h0C0A)) 
    \ACC[11]_i_1 
       (.I0(ram_data[11]),
        .I1(\ACC_reg[11]_0 [3]),
        .I2(\ACC[15]_i_3_n_1 ),
        .I3(DOADO[13]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h0C0A)) 
    \ACC[12]_i_1 
       (.I0(ram_data[12]),
        .I1(\ACC_reg[14] [0]),
        .I2(\ACC[15]_i_3_n_1 ),
        .I3(DOADO[13]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h0C0A)) 
    \ACC[13]_i_1 
       (.I0(ram_data[13]),
        .I1(\ACC_reg[14] [1]),
        .I2(\ACC[15]_i_3_n_1 ),
        .I3(DOADO[13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h0C0A)) 
    \ACC[14]_i_1 
       (.I0(ram_data[14]),
        .I1(\ACC_reg[14] [2]),
        .I2(\ACC[15]_i_3_n_1 ),
        .I3(DOADO[13]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \ACC[15]_i_1 
       (.I0(DOADO[13]),
        .I1(DOADO[12]),
        .I2(DOADO[15]),
        .I3(DOADO[14]),
        .O(E));
  LUT4 #(
    .INIT(16'h0C0A)) 
    \ACC[15]_i_2 
       (.I0(ram_data[15]),
        .I1(\ACC_reg[14] [3]),
        .I2(\ACC[15]_i_3_n_1 ),
        .I3(DOADO[13]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \ACC[15]_i_3 
       (.I0(DOADO[13]),
        .I1(DOADO[12]),
        .I2(DOADO[14]),
        .I3(DOADO[15]),
        .I4(DOADO[11]),
        .O(\ACC[15]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[1]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(O[1]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[1]),
        .I4(DOADO[1]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[2]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(O[2]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[2]),
        .I4(DOADO[2]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[3]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(O[3]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[3]),
        .I4(DOADO[3]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[4]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(\ACC_reg[7]_0 [0]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[4]),
        .I4(DOADO[4]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[5]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(\ACC_reg[7]_0 [1]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[5]),
        .I4(DOADO[5]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[6]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(\ACC_reg[7]_0 [2]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[6]),
        .I4(DOADO[6]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[7]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(\ACC_reg[7]_0 [3]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[7]),
        .I4(DOADO[7]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[8]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(\ACC_reg[11]_0 [0]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[8]),
        .I4(DOADO[8]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ACC[9]_i_1 
       (.I0(\ACC[10]_i_2_n_1 ),
        .I1(\ACC_reg[11]_0 [1]),
        .I2(\ACC[10]_i_3_n_1 ),
        .I3(ram_data[9]),
        .I4(DOADO[9]),
        .I5(\ACC[15]_i_3_n_1 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    aux_finish_program_i_1
       (.I0(\aux_PC_reg[2] ),
        .I1(DOADO[13]),
        .I2(DOADO[12]),
        .I3(DOADO[11]),
        .I4(finish_program),
        .O(aux_finish_program_reg));
  LUT5 #(
    .INIT(32'h36C6C939)) 
    i__carry__0_i_1
       (.I0(ram_data[7]),
        .I1(i__carry_i_6_n_1),
        .I2(i__carry_i_7_n_1),
        .I3(DOADO[7]),
        .I4(\ACC_reg[15]_0 [6]),
        .O(\ACC_reg[7] [3]));
  LUT5 #(
    .INIT(32'h36C6C939)) 
    i__carry__0_i_2
       (.I0(ram_data[6]),
        .I1(i__carry_i_6_n_1),
        .I2(i__carry_i_7_n_1),
        .I3(DOADO[6]),
        .I4(\ACC_reg[15]_0 [5]),
        .O(\ACC_reg[7] [2]));
  LUT5 #(
    .INIT(32'h36C6C939)) 
    i__carry__0_i_3
       (.I0(ram_data[5]),
        .I1(i__carry_i_6_n_1),
        .I2(i__carry_i_7_n_1),
        .I3(DOADO[5]),
        .I4(\ACC_reg[15]_0 [4]),
        .O(\ACC_reg[7] [1]));
  LUT5 #(
    .INIT(32'h36C6C939)) 
    i__carry__0_i_4
       (.I0(ram_data[4]),
        .I1(i__carry_i_6_n_1),
        .I2(i__carry_i_7_n_1),
        .I3(DOADO[4]),
        .I4(\ACC_reg[15]_0 [3]),
        .O(\ACC_reg[7] [0]));
  LUT5 #(
    .INIT(32'h0074FF8B)) 
    i__carry__1_i_1
       (.I0(i__carry__1_i_5_n_1),
        .I1(ram_data[11]),
        .I2(i__carry_i_6_n_1),
        .I3(i__carry__1_i_6_n_1),
        .I4(\ACC_reg[15]_0 [10]),
        .O(\ACC_reg[11] [3]));
  LUT5 #(
    .INIT(32'h36C6C939)) 
    i__carry__1_i_2
       (.I0(ram_data[10]),
        .I1(i__carry_i_6_n_1),
        .I2(i__carry_i_7_n_1),
        .I3(DOADO[10]),
        .I4(\ACC_reg[15]_0 [9]),
        .O(\ACC_reg[11] [2]));
  LUT5 #(
    .INIT(32'h36C6C939)) 
    i__carry__1_i_3
       (.I0(ram_data[9]),
        .I1(i__carry_i_6_n_1),
        .I2(i__carry_i_7_n_1),
        .I3(DOADO[9]),
        .I4(\ACC_reg[15]_0 [8]),
        .O(\ACC_reg[11] [1]));
  LUT5 #(
    .INIT(32'h36C6C939)) 
    i__carry__1_i_4
       (.I0(ram_data[8]),
        .I1(i__carry_i_6_n_1),
        .I2(i__carry_i_7_n_1),
        .I3(DOADO[8]),
        .I4(\ACC_reg[15]_0 [7]),
        .O(\ACC_reg[11] [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    i__carry__1_i_5
       (.I0(DOADO[12]),
        .I1(DOADO[13]),
        .I2(DOADO[11]),
        .I3(DOADO[15]),
        .I4(DOADO[14]),
        .O(i__carry__1_i_5_n_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    i__carry__1_i_6
       (.I0(DOADO[11]),
        .I1(DOADO[15]),
        .I2(DOADO[14]),
        .I3(DOADO[13]),
        .I4(DOADO[12]),
        .O(i__carry__1_i_6_n_1));
  LUT6 #(
    .INIT(64'hAAAA2DAA5555D255)) 
    i__carry__2_i_1
       (.I0(ram_data[15]),
        .I1(DOADO[11]),
        .I2(DOADO[12]),
        .I3(DOADO[13]),
        .I4(i__carry_i_8_n_1),
        .I5(\ACC_reg[15]_0 [14]),
        .O(\ACC_reg[15] [3]));
  LUT5 #(
    .INIT(32'h0074FF8B)) 
    i__carry__2_i_2
       (.I0(i__carry__1_i_5_n_1),
        .I1(ram_data[14]),
        .I2(i__carry_i_6_n_1),
        .I3(i__carry__1_i_6_n_1),
        .I4(\ACC_reg[15]_0 [13]),
        .O(\ACC_reg[15] [2]));
  LUT5 #(
    .INIT(32'h0074FF8B)) 
    i__carry__2_i_3
       (.I0(i__carry__1_i_5_n_1),
        .I1(ram_data[13]),
        .I2(i__carry_i_6_n_1),
        .I3(i__carry__1_i_6_n_1),
        .I4(\ACC_reg[15]_0 [12]),
        .O(\ACC_reg[15] [1]));
  LUT5 #(
    .INIT(32'h0074FF8B)) 
    i__carry__2_i_4
       (.I0(i__carry__1_i_5_n_1),
        .I1(ram_data[12]),
        .I2(i__carry_i_6_n_1),
        .I3(i__carry__1_i_6_n_1),
        .I4(\ACC_reg[15]_0 [11]),
        .O(\ACC_reg[15] [0]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    i__carry_i_1
       (.I0(DOADO[15]),
        .I1(DOADO[14]),
        .I2(DOADO[13]),
        .I3(DOADO[12]),
        .O(DI));
  LUT5 #(
    .INIT(32'h36C6C939)) 
    i__carry_i_2
       (.I0(ram_data[3]),
        .I1(i__carry_i_6_n_1),
        .I2(i__carry_i_7_n_1),
        .I3(DOADO[3]),
        .I4(\ACC_reg[15]_0 [2]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h36C6C939)) 
    i__carry_i_3
       (.I0(ram_data[2]),
        .I1(i__carry_i_6_n_1),
        .I2(i__carry_i_7_n_1),
        .I3(DOADO[2]),
        .I4(\ACC_reg[15]_0 [1]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h36C6C939)) 
    i__carry_i_4
       (.I0(ram_data[1]),
        .I1(i__carry_i_6_n_1),
        .I2(i__carry_i_7_n_1),
        .I3(DOADO[1]),
        .I4(\ACC_reg[15]_0 [0]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    i__carry_i_5
       (.I0(ram_data[0]),
        .I1(DOADO[13]),
        .I2(DOADO[11]),
        .I3(i__carry_i_8_n_1),
        .I4(DOADO[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    i__carry_i_6
       (.I0(DOADO[12]),
        .I1(DOADO[13]),
        .I2(DOADO[14]),
        .I3(DOADO[15]),
        .O(i__carry_i_6_n_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    i__carry_i_7
       (.I0(DOADO[14]),
        .I1(DOADO[15]),
        .I2(DOADO[11]),
        .I3(DOADO[13]),
        .O(i__carry_i_7_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_8
       (.I0(DOADO[14]),
        .I1(DOADO[15]),
        .O(i__carry_i_8_n_1));
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
        .CLKARDCLK(clk),
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
    is_s_reg_0,
    clk,
    reset_IBUF,
    state_reg_reg_0,
    \b_reg_reg[1] );
  output is_s;
  output state_reg;
  output ena;
  input is_s_reg_0;
  input clk;
  input reset_IBUF;
  input state_reg_reg_0;
  input \b_reg_reg[1] ;

  wire aux_BIP_i_1_n_1;
  wire \b_reg_reg[1] ;
  wire clk;
  wire ena;
  wire is_s;
  wire is_s_reg_0;
  wire reset_IBUF;
  wire state_reg;
  wire state_reg_reg_0;

  LUT4 #(
    .INIT(16'hFF08)) 
    aux_BIP_i_1
       (.I0(state_reg),
        .I1(is_s),
        .I2(\b_reg_reg[1] ),
        .I3(ena),
        .O(aux_BIP_i_1_n_1));
  FDCE #(
    .INIT(1'b0)) 
    aux_BIP_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(aux_BIP_i_1_n_1),
        .Q(ena));
  FDCE #(
    .INIT(1'b0)) 
    is_s_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(is_s_reg_0),
        .Q(is_s));
  FDCE #(
    .INIT(1'b0)) 
    state_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(state_reg_reg_0),
        .Q(state_reg));
endmodule

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
  wire Program_memory_n_52;
  wire WrAcc;
  wire WrRAM;
  wire bip_n_12;
  wire bip_n_13;
  wire bip_n_14;
  wire bip_n_15;
  wire bip_n_32;
  wire bip_n_33;
  wire bip_n_34;
  wire bip_n_35;
  wire bip_n_36;
  wire bip_n_37;
  wire bip_n_38;
  wire bip_n_39;
  wire bip_n_40;
  wire bip_n_41;
  wire bip_n_42;
  wire bip_n_43;
  wire bip_n_45;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:1]\datapath/Operation ;
  wire finish_program;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire tx;
  wire tx_OBUF;

  Data_memory Data_memory
       (.DOADO(Program_Data[10:0]),
        .E(BIP_enable),
        .Q(In_Data),
        .Wr(WrRAM),
        .clk(clk_IBUF_BUFG),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ram_data(Out_Data));
  Program_memory Program_memory
       (.\ACC_reg[11] ({Program_memory_n_44,Program_memory_n_45,Program_memory_n_46,Program_memory_n_47}),
        .\ACC_reg[11]_0 ({bip_n_36,bip_n_37,bip_n_38,bip_n_39}),
        .\ACC_reg[14] ({bip_n_40,bip_n_41,bip_n_42,bip_n_43}),
        .\ACC_reg[15] ({Program_memory_n_48,Program_memory_n_49,Program_memory_n_50,Program_memory_n_51}),
        .\ACC_reg[15]_0 (In_Data[15:1]),
        .\ACC_reg[7] ({Program_memory_n_40,Program_memory_n_41,Program_memory_n_42,Program_memory_n_43}),
        .\ACC_reg[7]_0 ({bip_n_32,bip_n_33,bip_n_34,bip_n_35}),
        .D(A),
        .DI(\datapath/Operation ),
        .DOADO(Program_Data),
        .E(WrAcc),
        .O({bip_n_12,bip_n_13,bip_n_14,bip_n_15}),
        .Q(PC),
        .S({Program_memory_n_36,Program_memory_n_37,Program_memory_n_38,Program_memory_n_39}),
        .Wr(WrRAM),
        .\aux_PC_reg[2] (bip_n_45),
        .aux_finish_program_reg(Program_memory_n_52),
        .clk(clk_IBUF_BUFG),
        .ena(BIP_enable),
        .finish_program(finish_program),
        .ram_data(Out_Data));
  CPU bip
       (.\ACC_reg[11] ({bip_n_36,bip_n_37,bip_n_38,bip_n_39}),
        .\ACC_reg[15] ({bip_n_40,bip_n_41,bip_n_42,bip_n_43}),
        .\ACC_reg[7] ({bip_n_32,bip_n_33,bip_n_34,bip_n_35}),
        .D(A),
        .DI(\datapath/Operation ),
        .DOADO(Program_Data[15:11]),
        .E(WrAcc),
        .O({bip_n_12,bip_n_13,bip_n_14,bip_n_15}),
        .Q(In_Data),
        .S({Program_memory_n_36,Program_memory_n_37,Program_memory_n_38,Program_memory_n_39}),
        .aux_finish_program_reg(bip_n_45),
        .clk(clk_IBUF_BUFG),
        .ena(BIP_enable),
        .finish_program(finish_program),
        .out(PC),
        .ram_name_reg({Program_memory_n_40,Program_memory_n_41,Program_memory_n_42,Program_memory_n_43}),
        .ram_name_reg_0({Program_memory_n_44,Program_memory_n_45,Program_memory_n_46,Program_memory_n_47}),
        .ram_name_reg_1({Program_memory_n_48,Program_memory_n_49,Program_memory_n_50,Program_memory_n_51}),
        .ram_name_reg_2(Program_memory_n_52),
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
        .clk(clk_IBUF_BUFG),
        .ena(BIP_enable),
        .finish_program(finish_program),
        .reset_IBUF(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .tx_OBUF(tx_OBUF));
endmodule

module Tx_interface
   (Q,
    tx_start,
    \out_reg[0]_0 ,
    D,
    clk,
    reset_IBUF,
    \FSM_sequential_state_reg_reg[1] ,
    In_Data,
    finish_program,
    out,
    \aux_PC_reg[10] );
  output [6:0]Q;
  output tx_start;
  output \out_reg[0]_0 ;
  output [0:0]D;
  input clk;
  input reset_IBUF;
  input \FSM_sequential_state_reg_reg[1] ;
  input [15:0]In_Data;
  input finish_program;
  input [0:0]out;
  input [10:0]\aux_PC_reg[10] ;

  wire [0:0]D;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire [15:0]In_Data;
  wire [6:0]Q;
  wire acc_sended;
  wire acc_sended_i_1_n_1;
  wire [14:0]aux;
  wire [15:0]aux2;
  wire aux20_carry__0_i_1_n_1;
  wire aux20_carry__0_i_2_n_1;
  wire aux20_carry__0_i_3_n_1;
  wire aux20_carry__0_i_4_n_1;
  wire aux20_carry__0_n_1;
  wire aux20_carry__0_n_2;
  wire aux20_carry__0_n_3;
  wire aux20_carry__0_n_4;
  wire aux20_carry__1_i_1_n_1;
  wire aux20_carry__1_i_2_n_1;
  wire aux20_carry__1_i_3_n_1;
  wire aux20_carry__1_i_4_n_1;
  wire aux20_carry__1_n_1;
  wire aux20_carry__1_n_2;
  wire aux20_carry__1_n_3;
  wire aux20_carry__1_n_4;
  wire aux20_carry__2_i_1_n_1;
  wire aux20_carry__2_i_2_n_1;
  wire aux20_carry__2_i_3_n_1;
  wire aux20_carry__2_n_2;
  wire aux20_carry__2_n_3;
  wire aux20_carry__2_n_4;
  wire aux20_carry_i_1_n_1;
  wire aux20_carry_i_2_n_1;
  wire aux20_carry_i_3_n_1;
  wire aux20_carry_i_4_n_1;
  wire aux20_carry_n_1;
  wire aux20_carry_n_2;
  wire aux20_carry_n_3;
  wire aux20_carry_n_4;
  wire \aux2[15]_i_3_n_1 ;
  wire aux2_1;
  wire \aux2_reg_n_1_[0] ;
  wire \aux2_reg_n_1_[10] ;
  wire \aux2_reg_n_1_[11] ;
  wire \aux2_reg_n_1_[12] ;
  wire \aux2_reg_n_1_[13] ;
  wire \aux2_reg_n_1_[14] ;
  wire \aux2_reg_n_1_[15] ;
  wire \aux2_reg_n_1_[1] ;
  wire \aux2_reg_n_1_[2] ;
  wire \aux2_reg_n_1_[3] ;
  wire \aux2_reg_n_1_[4] ;
  wire \aux2_reg_n_1_[5] ;
  wire \aux2_reg_n_1_[6] ;
  wire \aux2_reg_n_1_[7] ;
  wire \aux2_reg_n_1_[8] ;
  wire \aux2_reg_n_1_[9] ;
  wire \aux[0]_i_1_n_1 ;
  wire \aux[10]_i_1_n_1 ;
  wire \aux[11]_i_1_n_1 ;
  wire \aux[12]_i_1_n_1 ;
  wire \aux[13]_i_1_n_1 ;
  wire \aux[14]_i_1_n_1 ;
  wire \aux[14]_i_2_n_1 ;
  wire \aux[14]_i_3_n_1 ;
  wire \aux[14]_i_4_n_1 ;
  wire \aux[15]_inv_i_1_n_1 ;
  wire \aux[1]_i_1_n_1 ;
  wire \aux[2]_i_1_n_1 ;
  wire \aux[3]_i_1_n_1 ;
  wire \aux[4]_i_1_n_1 ;
  wire \aux[5]_i_1_n_1 ;
  wire \aux[6]_i_1_n_1 ;
  wire \aux[7]_i_1_n_1 ;
  wire \aux[8]_i_1_n_1 ;
  wire \aux[9]_i_1_n_1 ;
  wire [15:0]aux_Count;
  wire \aux_Count[15]_i_2_n_1 ;
  wire \aux_Count[15]_i_3_n_1 ;
  wire aux_Count_2;
  wire [10:0]\aux_PC_reg[10] ;
  wire \aux_reg[15]_inv_n_1 ;
  wire clk;
  wire [15:0]data1;
  wire finish_program;
  wire first;
  wire first_i_1_n_1;
  wire [7:0]i;
  wire \i[4]_i_1_n_1 ;
  wire \i[5]_i_1_n_1 ;
  wire \i[6]_i_1_n_1 ;
  wire \i[7]_i_1_n_1 ;
  wire \i[7]_i_2_n_1 ;
  wire i_0;
  wire [3:0]i_reg_rep__0;
  wire \i_rep[0]_i_1_n_1 ;
  wire \i_rep[1]_i_1_n_1 ;
  wire \i_rep[2]_i_1_n_1 ;
  wire \i_rep[3]_i_2_n_1 ;
  wire \i_rep[3]_i_3_n_1 ;
  wire \i_rep[3]_i_4_n_1 ;
  wire [7:0]j;
  wire \j[0]_i_1_n_1 ;
  wire \j[1]_i_1_n_1 ;
  wire \j[2]_i_1_n_1 ;
  wire \j[3]_i_1_n_1 ;
  wire \j[4]_i_1_n_1 ;
  wire \j[5]_i_1_n_1 ;
  wire \j[6]_i_1_n_1 ;
  wire \j[7]_i_1_n_1 ;
  wire \j[7]_i_2_n_1 ;
  wire \j[7]_i_3_n_1 ;
  wire \j[7]_i_4_n_1 ;
  wire \j[7]_i_5_n_1 ;
  wire [0:0]out;
  wire out0_carry__0_i_2_n_1;
  wire out0_carry__0_i_3_n_1;
  wire out0_carry__0_i_4_n_1;
  wire out0_carry__0_i_5_n_1;
  wire out0_carry__0_n_2;
  wire out0_carry__0_n_3;
  wire out0_carry__0_n_4;
  wire out0_carry__0_n_5;
  wire out0_carry__0_n_6;
  wire out0_carry__0_n_7;
  wire out0_carry__0_n_8;
  wire out0_carry_i_1_n_1;
  wire out0_carry_n_1;
  wire out0_carry_n_2;
  wire out0_carry_n_3;
  wire out0_carry_n_4;
  wire out0_carry_n_5;
  wire out0_carry_n_6;
  wire out0_carry_n_7;
  wire out0_carry_n_8;
  wire \out[0]_i_2_n_1 ;
  wire \out[1]_i_2_n_1 ;
  wire \out[2]_i_2_n_1 ;
  wire \out[3]_i_2_n_1 ;
  wire \out[4]_i_2_n_1 ;
  wire \out[5]_i_2_n_1 ;
  wire \out[6]_i_2_n_1 ;
  wire \out[7]_i_1_n_1 ;
  wire \out[7]_i_3_n_1 ;
  wire \out[7]_i_4_n_1 ;
  wire \out[7]_i_5_n_1 ;
  wire \out[7]_i_6_n_1 ;
  wire \out_reg[0]_0 ;
  wire \out_reg_n_1_[7] ;
  wire [7:0]p_1_in;
  wire p_6_in;
  wire reset_IBUF;
  wire \state_prev[0]_i_1_n_1 ;
  wire \state_prev[1]_i_1_n_1 ;
  wire \state_prev[2]_i_1_n_1 ;
  wire \state_prev[2]_i_2_n_1 ;
  wire \state_prev[2]_i_3_n_1 ;
  wire \state_prev[2]_i_4_n_1 ;
  wire \state_prev_reg_n_1_[0] ;
  wire \state_prev_reg_n_1_[1] ;
  wire \state_prev_reg_n_1_[2] ;
  wire state_reg1_carry__0_i_1_n_1;
  wire state_reg1_carry__0_i_2_n_1;
  wire state_reg1_carry__0_i_3_n_1;
  wire state_reg1_carry__0_i_4_n_1;
  wire state_reg1_carry__0_i_5_n_1;
  wire state_reg1_carry__0_i_6_n_1;
  wire state_reg1_carry__0_i_7_n_1;
  wire state_reg1_carry__0_i_8_n_1;
  wire state_reg1_carry__0_n_1;
  wire state_reg1_carry__0_n_2;
  wire state_reg1_carry__0_n_3;
  wire state_reg1_carry__0_n_4;
  wire state_reg1_carry_i_1_n_1;
  wire state_reg1_carry_i_2_n_1;
  wire state_reg1_carry_i_3_n_1;
  wire state_reg1_carry_i_4_n_1;
  wire state_reg1_carry_i_5_n_1;
  wire state_reg1_carry_i_6_n_1;
  wire state_reg1_carry_i_7_n_1;
  wire state_reg1_carry_i_8_n_1;
  wire state_reg1_carry_n_1;
  wire state_reg1_carry_n_2;
  wire state_reg1_carry_n_3;
  wire state_reg1_carry_n_4;
  wire \state_reg[0]_i_1_n_1 ;
  wire \state_reg[0]_i_2_n_1 ;
  wire \state_reg[0]_i_3_n_1 ;
  wire \state_reg[0]_i_4_n_1 ;
  wire \state_reg[1]_i_1_n_1 ;
  wire \state_reg[1]_i_2_n_1 ;
  wire \state_reg[1]_i_3_n_1 ;
  wire \state_reg[1]_i_5_n_1 ;
  wire \state_reg[1]_i_6_n_1 ;
  wire \state_reg[1]_i_7_n_1 ;
  wire \state_reg[2]_i_1_n_1 ;
  wire \state_reg[2]_i_2_n_1 ;
  wire \state_reg[2]_i_3_n_1 ;
  wire \state_reg[2]_i_4_n_1 ;
  wire \state_reg[2]_i_5_n_1 ;
  wire \state_reg[2]_i_6_n_1 ;
  wire \state_reg[2]_i_7_n_1 ;
  wire \state_reg_reg_n_1_[1] ;
  wire \state_reg_reg_n_1_[2] ;
  wire tx_start;
  wire tx_start_aux_i_1_n_1;
  wire tx_start_aux_i_2_n_1;
  wire tx_start_aux_i_3_n_1;
  wire tx_start_aux_i_4_n_1;
  wire z_flag_i_1_n_1;
  wire z_flag_reg_n_1;
  wire [3:3]NLW_aux20_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_out0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_state_reg1_carry_O_UNCONNECTED;
  wire [3:0]NLW_state_reg1_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    acc_sended_i_1
       (.I0(\j[7]_i_3_n_1 ),
        .I1(\state_reg_reg_n_1_[2] ),
        .I2(reset_IBUF),
        .I3(\out_reg[0]_0 ),
        .I4(\state_reg_reg_n_1_[1] ),
        .I5(acc_sended),
        .O(acc_sended_i_1_n_1));
  FDCE #(
    .INIT(1'b0)) 
    acc_sended_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(acc_sended_i_1_n_1),
        .Q(acc_sended));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux20_carry
       (.CI(1'b0),
        .CO({aux20_carry_n_1,aux20_carry_n_2,aux20_carry_n_3,aux20_carry_n_4}),
        .CYINIT(1'b1),
        .DI(aux[3:0]),
        .O(data1[3:0]),
        .S({aux20_carry_i_1_n_1,aux20_carry_i_2_n_1,aux20_carry_i_3_n_1,aux20_carry_i_4_n_1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux20_carry__0
       (.CI(aux20_carry_n_1),
        .CO({aux20_carry__0_n_1,aux20_carry__0_n_2,aux20_carry__0_n_3,aux20_carry__0_n_4}),
        .CYINIT(1'b0),
        .DI(aux[7:4]),
        .O(data1[7:4]),
        .S({aux20_carry__0_i_1_n_1,aux20_carry__0_i_2_n_1,aux20_carry__0_i_3_n_1,aux20_carry__0_i_4_n_1}));
  LUT3 #(
    .INIT(8'h65)) 
    aux20_carry__0_i_1
       (.I0(aux[7]),
        .I1(j[1]),
        .I2(j[0]),
        .O(aux20_carry__0_i_1_n_1));
  LUT3 #(
    .INIT(8'h69)) 
    aux20_carry__0_i_2
       (.I0(aux[6]),
        .I1(j[1]),
        .I2(j[0]),
        .O(aux20_carry__0_i_2_n_1));
  LUT3 #(
    .INIT(8'h69)) 
    aux20_carry__0_i_3
       (.I0(aux[5]),
        .I1(j[1]),
        .I2(j[0]),
        .O(aux20_carry__0_i_3_n_1));
  LUT4 #(
    .INIT(16'h5556)) 
    aux20_carry__0_i_4
       (.I0(aux[4]),
        .I1(j[1]),
        .I2(j[0]),
        .I3(j[2]),
        .O(aux20_carry__0_i_4_n_1));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux20_carry__1
       (.CI(aux20_carry__0_n_1),
        .CO({aux20_carry__1_n_1,aux20_carry__1_n_2,aux20_carry__1_n_3,aux20_carry__1_n_4}),
        .CYINIT(1'b0),
        .DI(aux[11:8]),
        .O(data1[11:8]),
        .S({aux20_carry__1_i_1_n_1,aux20_carry__1_i_2_n_1,aux20_carry__1_i_3_n_1,aux20_carry__1_i_4_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    aux20_carry__1_i_1
       (.I0(aux[11]),
        .O(aux20_carry__1_i_1_n_1));
  LUT4 #(
    .INIT(16'h5556)) 
    aux20_carry__1_i_2
       (.I0(aux[10]),
        .I1(j[1]),
        .I2(j[0]),
        .I3(j[2]),
        .O(aux20_carry__1_i_2_n_1));
  LUT3 #(
    .INIT(8'h56)) 
    aux20_carry__1_i_3
       (.I0(aux[9]),
        .I1(j[1]),
        .I2(j[2]),
        .O(aux20_carry__1_i_3_n_1));
  LUT3 #(
    .INIT(8'h56)) 
    aux20_carry__1_i_4
       (.I0(aux[8]),
        .I1(j[1]),
        .I2(j[2]),
        .O(aux20_carry__1_i_4_n_1));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 aux20_carry__2
       (.CI(aux20_carry__1_n_1),
        .CO({NLW_aux20_carry__2_CO_UNCONNECTED[3],aux20_carry__2_n_2,aux20_carry__2_n_3,aux20_carry__2_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,aux[14:12]}),
        .O(data1[15:12]),
        .S({\aux_reg[15]_inv_n_1 ,aux20_carry__2_i_1_n_1,aux20_carry__2_i_2_n_1,aux20_carry__2_i_3_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    aux20_carry__2_i_1
       (.I0(aux[14]),
        .O(aux20_carry__2_i_1_n_1));
  LUT4 #(
    .INIT(16'h5556)) 
    aux20_carry__2_i_2
       (.I0(aux[13]),
        .I1(j[1]),
        .I2(j[0]),
        .I3(j[2]),
        .O(aux20_carry__2_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    aux20_carry__2_i_3
       (.I0(aux[12]),
        .O(aux20_carry__2_i_3_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    aux20_carry_i_1
       (.I0(aux[3]),
        .I1(j[0]),
        .O(aux20_carry_i_1_n_1));
  LUT3 #(
    .INIT(8'h65)) 
    aux20_carry_i_2
       (.I0(aux[2]),
        .I1(j[0]),
        .I2(j[1]),
        .O(aux20_carry_i_2_n_1));
  LUT3 #(
    .INIT(8'h95)) 
    aux20_carry_i_3
       (.I0(aux[1]),
        .I1(j[1]),
        .I2(j[0]),
        .O(aux20_carry_i_3_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    aux20_carry_i_4
       (.I0(aux[0]),
        .I1(j[2]),
        .O(aux20_carry_i_4_n_1));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[0]_i_1 
       (.I0(data1[0]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[0] ),
        .O(aux2[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[10]_i_1 
       (.I0(data1[10]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[10] ),
        .O(aux2[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[11]_i_1 
       (.I0(data1[11]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[11] ),
        .O(aux2[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[12]_i_1 
       (.I0(data1[12]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[12] ),
        .O(aux2[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[13]_i_1 
       (.I0(data1[13]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[13] ),
        .O(aux2[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[14]_i_1 
       (.I0(data1[14]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[14] ),
        .O(aux2[14]));
  LUT4 #(
    .INIT(16'h1000)) 
    \aux2[15]_i_1 
       (.I0(\state_reg_reg_n_1_[2] ),
        .I1(reset_IBUF),
        .I2(\out_reg[0]_0 ),
        .I3(\state_reg_reg_n_1_[1] ),
        .O(aux2_1));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[15]_i_2 
       (.I0(data1[15]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[15] ),
        .O(aux2[15]));
  LUT5 #(
    .INIT(32'hFFFF0155)) 
    \aux2[15]_i_3 
       (.I0(\j[7]_i_5_n_1 ),
        .I1(j[0]),
        .I2(j[1]),
        .I3(j[2]),
        .I4(j[7]),
        .O(\aux2[15]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[1]_i_1 
       (.I0(data1[1]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[1] ),
        .O(aux2[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[2]_i_1 
       (.I0(data1[2]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[2] ),
        .O(aux2[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[3]_i_1 
       (.I0(data1[3]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[3] ),
        .O(aux2[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[4]_i_1 
       (.I0(data1[4]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[4] ),
        .O(aux2[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[5]_i_1 
       (.I0(data1[5]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[5] ),
        .O(aux2[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[6]_i_1 
       (.I0(data1[6]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[6] ),
        .O(aux2[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[7]_i_1 
       (.I0(data1[7]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[7] ),
        .O(aux2[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[8]_i_1 
       (.I0(data1[8]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[8] ),
        .O(aux2[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \aux2[9]_i_1 
       (.I0(data1[9]),
        .I1(\aux2[15]_i_3_n_1 ),
        .I2(\aux2_reg_n_1_[9] ),
        .O(aux2[9]));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[0] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[0]),
        .Q(\aux2_reg_n_1_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[10] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[10]),
        .Q(\aux2_reg_n_1_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[11] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[11]),
        .Q(\aux2_reg_n_1_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[12] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[12]),
        .Q(\aux2_reg_n_1_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[13] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[13]),
        .Q(\aux2_reg_n_1_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[14] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[14]),
        .Q(\aux2_reg_n_1_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[15] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[15]),
        .Q(\aux2_reg_n_1_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[1] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[1]),
        .Q(\aux2_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[2] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[2]),
        .Q(\aux2_reg_n_1_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[3] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[3]),
        .Q(\aux2_reg_n_1_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[4] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[4]),
        .Q(\aux2_reg_n_1_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[5] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[5]),
        .Q(\aux2_reg_n_1_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[6] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[6]),
        .Q(\aux2_reg_n_1_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[7] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[7]),
        .Q(\aux2_reg_n_1_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[8] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[8]),
        .Q(\aux2_reg_n_1_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \aux2_reg[9] 
       (.C(clk),
        .CE(aux2_1),
        .CLR(reset_IBUF),
        .D(aux2[9]),
        .Q(\aux2_reg_n_1_[9] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[0]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[0]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[0]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[0]),
        .O(\aux[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[10]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[10]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[10]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[10]),
        .O(\aux[10]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[11]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[15]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[11]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[11]),
        .O(\aux[11]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[12]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[15]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[12]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[12]),
        .O(\aux[12]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[13]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[15]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[13]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[13]),
        .O(\aux[13]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'hEAEE)) 
    \aux[14]_i_1 
       (.I0(aux_Count_2),
        .I1(aux2_1),
        .I2(state_reg1_carry__0_n_1),
        .I3(\j[7]_i_3_n_1 ),
        .O(\aux[14]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[14]_i_2 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[15]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[14]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[14]),
        .O(\aux[14]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \aux[14]_i_3 
       (.I0(j[7]),
        .I1(j[2]),
        .I2(j[0]),
        .I3(j[1]),
        .I4(\j[7]_i_5_n_1 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(\aux[14]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFBF)) 
    \aux[14]_i_4 
       (.I0(j[7]),
        .I1(j[2]),
        .I2(j[0]),
        .I3(j[1]),
        .I4(\j[7]_i_5_n_1 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(\aux[14]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    \aux[15]_inv_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[15]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[15]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[15]),
        .O(\aux[15]_inv_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[1]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[1]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[1]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[1]),
        .O(\aux[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[2]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[2]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[2]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[2]),
        .O(\aux[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[3]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[3]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[3]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[3]),
        .O(\aux[3]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[4]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[4]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[4]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[4]),
        .O(\aux[4]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[5]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[5]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[5]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[5]),
        .O(\aux[5]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[6]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[6]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[6]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[6]),
        .O(\aux[6]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[7]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[7]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[7]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[7]),
        .O(\aux[7]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[8]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[8]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[8]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[8]),
        .O(\aux[8]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aux[9]_i_1 
       (.I0(\aux[14]_i_3_n_1 ),
        .I1(aux_Count[9]),
        .I2(\aux[14]_i_4_n_1 ),
        .I3(data1[9]),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(In_Data[9]),
        .O(\aux[9]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \aux_Count[15]_i_1 
       (.I0(\state_reg_reg_n_1_[2] ),
        .I1(\out_reg[0]_0 ),
        .I2(acc_sended),
        .I3(reset_IBUF),
        .I4(\aux_Count[15]_i_2_n_1 ),
        .O(aux_Count_2));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hBEFFFFFF)) 
    \aux_Count[15]_i_2 
       (.I0(\state_reg_reg_n_1_[1] ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(\aux_Count[15]_i_3_n_1 ),
        .O(\aux_Count[15]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \aux_Count[15]_i_3 
       (.I0(i[3]),
        .I1(i[4]),
        .I2(i[5]),
        .I3(i[7]),
        .I4(i[6]),
        .O(\aux_Count[15]_i_3_n_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[0] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [0]),
        .PRE(reset_IBUF),
        .Q(aux_Count[0]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[10] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [10]),
        .PRE(reset_IBUF),
        .Q(aux_Count[10]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[15] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(1'b0),
        .PRE(reset_IBUF),
        .Q(aux_Count[15]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[1] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [1]),
        .PRE(reset_IBUF),
        .Q(aux_Count[1]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[2] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [2]),
        .PRE(reset_IBUF),
        .Q(aux_Count[2]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[3] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [3]),
        .PRE(reset_IBUF),
        .Q(aux_Count[3]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[4] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [4]),
        .PRE(reset_IBUF),
        .Q(aux_Count[4]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[5] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [5]),
        .PRE(reset_IBUF),
        .Q(aux_Count[5]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[6] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [6]),
        .PRE(reset_IBUF),
        .Q(aux_Count[6]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[7] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [7]),
        .PRE(reset_IBUF),
        .Q(aux_Count[7]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[8] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [8]),
        .PRE(reset_IBUF),
        .Q(aux_Count[8]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_Count_reg[9] 
       (.C(clk),
        .CE(aux_Count_2),
        .D(\aux_PC_reg[10] [9]),
        .PRE(reset_IBUF),
        .Q(aux_Count[9]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[0] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[0]_i_1_n_1 ),
        .Q(aux[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[10] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[10]_i_1_n_1 ),
        .Q(aux[10]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[11] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[11]_i_1_n_1 ),
        .Q(aux[11]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[12] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[12]_i_1_n_1 ),
        .Q(aux[12]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[13] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[13]_i_1_n_1 ),
        .Q(aux[13]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[14] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[14]_i_2_n_1 ),
        .Q(aux[14]));
  FDPE #(
    .INIT(1'b1)) 
    \aux_reg[15]_inv 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .D(\aux[15]_inv_i_1_n_1 ),
        .PRE(reset_IBUF),
        .Q(\aux_reg[15]_inv_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[1] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[1]_i_1_n_1 ),
        .Q(aux[1]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[2] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[2]_i_1_n_1 ),
        .Q(aux[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[3] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[3]_i_1_n_1 ),
        .Q(aux[3]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[4] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[4]_i_1_n_1 ),
        .Q(aux[4]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[5] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[5]_i_1_n_1 ),
        .Q(aux[5]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[6] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[6]_i_1_n_1 ),
        .Q(aux[6]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[7] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[7]_i_1_n_1 ),
        .Q(aux[7]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[8] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[8]_i_1_n_1 ),
        .Q(aux[8]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_reg[9] 
       (.C(clk),
        .CE(\aux[14]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\aux[9]_i_1_n_1 ),
        .Q(aux[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_2 
       (.I0(\out_reg_n_1_[7] ),
        .I1(out),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hCCCCC4CC)) 
    first_i_1
       (.I0(finish_program),
        .I1(first),
        .I2(\out_reg[0]_0 ),
        .I3(\state_reg_reg_n_1_[1] ),
        .I4(\state_reg_reg_n_1_[2] ),
        .O(first_i_1_n_1));
  FDPE #(
    .INIT(1'b1)) 
    first_reg
       (.C(clk),
        .CE(1'b1),
        .D(first_i_1_n_1),
        .PRE(reset_IBUF),
        .Q(first));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i[4]_i_1 
       (.I0(i[4]),
        .I1(i[3]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(i[2]),
        .O(\i[4]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \i[5]_i_1 
       (.I0(i[4]),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(i[3]),
        .I5(i[5]),
        .O(\i[5]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \i[6]_i_1 
       (.I0(i[5]),
        .I1(\i[7]_i_2_n_1 ),
        .I2(i[6]),
        .O(\i[6]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \i[7]_i_1 
       (.I0(i[6]),
        .I1(\i[7]_i_2_n_1 ),
        .I2(i[5]),
        .I3(i[7]),
        .O(\i[7]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \i[7]_i_2 
       (.I0(i[3]),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[2]),
        .I4(i[4]),
        .O(\i[7]_i_2_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i_rep[0]_i_1_n_1 ),
        .Q(i[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i_rep[1]_i_1_n_1 ),
        .Q(i[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i_rep[2]_i_1_n_1 ),
        .Q(i[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i_rep[3]_i_2_n_1 ),
        .Q(i[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i[4]_i_1_n_1 ),
        .Q(i[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i[5]_i_1_n_1 ),
        .Q(i[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i[6]_i_1_n_1 ),
        .Q(i[6]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i[7]_i_1_n_1 ),
        .Q(i[7]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \i_reg_rep[0] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i_rep[0]_i_1_n_1 ),
        .Q(i_reg_rep__0[0]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \i_reg_rep[1] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i_rep[1]_i_1_n_1 ),
        .Q(i_reg_rep__0[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \i_reg_rep[2] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i_rep[2]_i_1_n_1 ),
        .Q(i_reg_rep__0[2]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \i_reg_rep[3] 
       (.C(clk),
        .CE(i_0),
        .CLR(reset_IBUF),
        .D(\i_rep[3]_i_2_n_1 ),
        .Q(i_reg_rep__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \i_rep[0]_i_1 
       (.I0(i[0]),
        .O(\i_rep[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_rep[1]_i_1 
       (.I0(i[0]),
        .I1(i[1]),
        .O(\i_rep[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i_rep[2]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .I2(i[2]),
        .O(\i_rep[2]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h10001020)) 
    \i_rep[3]_i_1 
       (.I0(\state_reg_reg_n_1_[1] ),
        .I1(reset_IBUF),
        .I2(\state_reg_reg_n_1_[2] ),
        .I3(\out_reg[0]_0 ),
        .I4(\i_rep[3]_i_3_n_1 ),
        .O(i_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i_rep[3]_i_2 
       (.I0(i[2]),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[3]),
        .O(\i_rep[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \i_rep[3]_i_3 
       (.I0(i[6]),
        .I1(i[7]),
        .I2(i[5]),
        .I3(i[4]),
        .I4(i[3]),
        .I5(\i_rep[3]_i_4_n_1 ),
        .O(\i_rep[3]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \i_rep[3]_i_4 
       (.I0(i[1]),
        .I1(i[0]),
        .I2(i[2]),
        .O(\i_rep[3]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1 
       (.I0(j[0]),
        .O(\j[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \j[1]_i_1 
       (.I0(\j[7]_i_3_n_1 ),
        .I1(j[1]),
        .I2(j[0]),
        .O(\j[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \j[2]_i_1 
       (.I0(\j[7]_i_3_n_1 ),
        .I1(j[0]),
        .I2(j[1]),
        .I3(j[2]),
        .O(\j[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j[3]_i_1 
       (.I0(j[3]),
        .I1(j[2]),
        .I2(j[1]),
        .I3(j[0]),
        .O(\j[3]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \j[4]_i_1 
       (.I0(j[3]),
        .I1(j[0]),
        .I2(j[1]),
        .I3(j[2]),
        .I4(j[4]),
        .O(\j[4]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \j[5]_i_1 
       (.I0(j[4]),
        .I1(j[2]),
        .I2(j[1]),
        .I3(j[0]),
        .I4(j[3]),
        .I5(j[5]),
        .O(\j[5]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \j[6]_i_1 
       (.I0(j[5]),
        .I1(\j[7]_i_4_n_1 ),
        .I2(j[4]),
        .I3(j[6]),
        .O(\j[6]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000007000)) 
    \j[7]_i_1 
       (.I0(\j[7]_i_3_n_1 ),
        .I1(state_reg1_carry__0_n_1),
        .I2(\state_reg_reg_n_1_[1] ),
        .I3(\out_reg[0]_0 ),
        .I4(reset_IBUF),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(\j[7]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \j[7]_i_2 
       (.I0(j[6]),
        .I1(j[4]),
        .I2(\j[7]_i_4_n_1 ),
        .I3(j[5]),
        .I4(j[7]),
        .O(\j[7]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \j[7]_i_3 
       (.I0(j[1]),
        .I1(j[0]),
        .I2(j[7]),
        .I3(j[2]),
        .I4(\j[7]_i_5_n_1 ),
        .O(\j[7]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \j[7]_i_4 
       (.I0(j[2]),
        .I1(j[1]),
        .I2(j[0]),
        .I3(j[3]),
        .O(\j[7]_i_4_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \j[7]_i_5 
       (.I0(j[6]),
        .I1(j[3]),
        .I2(j[4]),
        .I3(j[5]),
        .O(\j[7]_i_5_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[0] 
       (.C(clk),
        .CE(\j[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\j[0]_i_1_n_1 ),
        .Q(j[0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[1] 
       (.C(clk),
        .CE(\j[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\j[1]_i_1_n_1 ),
        .Q(j[1]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[2] 
       (.C(clk),
        .CE(\j[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\j[2]_i_1_n_1 ),
        .Q(j[2]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[3] 
       (.C(clk),
        .CE(\j[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\j[3]_i_1_n_1 ),
        .Q(j[3]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[4] 
       (.C(clk),
        .CE(\j[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\j[4]_i_1_n_1 ),
        .Q(j[4]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[5] 
       (.C(clk),
        .CE(\j[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\j[5]_i_1_n_1 ),
        .Q(j[5]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[6] 
       (.C(clk),
        .CE(\j[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\j[6]_i_1_n_1 ),
        .Q(j[6]));
  FDCE #(
    .INIT(1'b0)) 
    \j_reg[7] 
       (.C(clk),
        .CE(\j[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(\j[7]_i_2_n_1 ),
        .Q(j[7]));
  CARRY4 out0_carry
       (.CI(1'b0),
        .CO({out0_carry_n_1,out0_carry_n_2,out0_carry_n_3,out0_carry_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({out0_carry_n_5,out0_carry_n_6,out0_carry_n_7,out0_carry_n_8}),
        .S({Q[3:1],out0_carry_i_1_n_1}));
  CARRY4 out0_carry__0
       (.CI(out0_carry_n_1),
        .CO({NLW_out0_carry__0_CO_UNCONNECTED[3],out0_carry__0_n_2,out0_carry__0_n_3,out0_carry__0_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[5],state_reg1_carry__0_n_1,p_6_in}),
        .O({out0_carry__0_n_5,out0_carry__0_n_6,out0_carry__0_n_7,out0_carry__0_n_8}),
        .S({out0_carry__0_i_2_n_1,out0_carry__0_i_3_n_1,out0_carry__0_i_4_n_1,out0_carry__0_i_5_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__0_i_1
       (.I0(state_reg1_carry__0_n_1),
        .O(p_6_in));
  LUT3 #(
    .INIT(8'h9A)) 
    out0_carry__0_i_2
       (.I0(\out_reg_n_1_[7] ),
        .I1(Q[6]),
        .I2(state_reg1_carry__0_n_1),
        .O(out0_carry__0_i_2_n_1));
  LUT3 #(
    .INIT(8'h96)) 
    out0_carry__0_i_3
       (.I0(Q[6]),
        .I1(state_reg1_carry__0_n_1),
        .I2(Q[5]),
        .O(out0_carry__0_i_3_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    out0_carry__0_i_4
       (.I0(state_reg1_carry__0_n_1),
        .I1(Q[5]),
        .O(out0_carry__0_i_4_n_1));
  LUT2 #(
    .INIT(4'h9)) 
    out0_carry__0_i_5
       (.I0(state_reg1_carry__0_n_1),
        .I1(Q[4]),
        .O(out0_carry__0_i_5_n_1));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry_i_1
       (.I0(Q[0]),
        .I1(state_reg1_carry__0_n_1),
        .O(out0_carry_i_1_n_1));
  LUT6 #(
    .INIT(64'h00002A2A0000FF2A)) 
    \out[0]_i_1 
       (.I0(\out[0]_i_2_n_1 ),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[1] ),
        .I3(out0_carry_n_8),
        .I4(\out[7]_i_4_n_1 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7048)) 
    \out[0]_i_2 
       (.I0(i_reg_rep__0[3]),
        .I1(i_reg_rep__0[2]),
        .I2(i_reg_rep__0[1]),
        .I3(i_reg_rep__0[0]),
        .O(\out[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00002A2A0000FF2A)) 
    \out[1]_i_1 
       (.I0(\out[1]_i_2_n_1 ),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[1] ),
        .I3(out0_carry_n_7),
        .I4(\out[7]_i_4_n_1 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1C2E)) 
    \out[1]_i_2 
       (.I0(i_reg_rep__0[3]),
        .I1(i_reg_rep__0[2]),
        .I2(i_reg_rep__0[1]),
        .I3(i_reg_rep__0[0]),
        .O(\out[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00002A2A0000FF2A)) 
    \out[2]_i_1 
       (.I0(\out[2]_i_2_n_1 ),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[1] ),
        .I3(out0_carry_n_6),
        .I4(\out[7]_i_4_n_1 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'h2041)) 
    \out[2]_i_2 
       (.I0(i_reg_rep__0[3]),
        .I1(i_reg_rep__0[2]),
        .I2(i_reg_rep__0[1]),
        .I3(i_reg_rep__0[0]),
        .O(\out[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00002A2A0000FF2A)) 
    \out[3]_i_1 
       (.I0(\out[3]_i_2_n_1 ),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[1] ),
        .I3(out0_carry_n_5),
        .I4(\out[7]_i_4_n_1 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2C66)) 
    \out[3]_i_2 
       (.I0(i_reg_rep__0[3]),
        .I1(i_reg_rep__0[2]),
        .I2(i_reg_rep__0[1]),
        .I3(i_reg_rep__0[0]),
        .O(\out[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00002A2A0000FF2A)) 
    \out[4]_i_1 
       (.I0(\out[4]_i_2_n_1 ),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[1] ),
        .I3(out0_carry__0_n_8),
        .I4(\out[7]_i_4_n_1 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1097)) 
    \out[4]_i_2 
       (.I0(i_reg_rep__0[3]),
        .I1(i_reg_rep__0[2]),
        .I2(i_reg_rep__0[0]),
        .I3(i_reg_rep__0[1]),
        .O(\out[4]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00002A2A0000FF2A)) 
    \out[5]_i_1 
       (.I0(\out[5]_i_2_n_1 ),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[1] ),
        .I3(out0_carry__0_n_7),
        .I4(\out[7]_i_4_n_1 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA59A)) 
    \out[5]_i_2 
       (.I0(i_reg_rep__0[3]),
        .I1(i_reg_rep__0[0]),
        .I2(i_reg_rep__0[2]),
        .I3(i_reg_rep__0[1]),
        .O(\out[5]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00002A2A0000FF2A)) 
    \out[6]_i_1 
       (.I0(\out[6]_i_2_n_1 ),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[1] ),
        .I3(out0_carry__0_n_6),
        .I4(\out[7]_i_4_n_1 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \out[6]_i_2 
       (.I0(i_reg_rep__0[3]),
        .I1(i_reg_rep__0[0]),
        .I2(i_reg_rep__0[2]),
        .I3(i_reg_rep__0[1]),
        .O(\out[6]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \out[7]_i_1 
       (.I0(\out[7]_i_3_n_1 ),
        .I1(state_reg1_carry__0_n_1),
        .I2(\j[7]_i_3_n_1 ),
        .I3(aux2_1),
        .I4(\out[7]_i_4_n_1 ),
        .I5(\out[7]_i_5_n_1 ),
        .O(\out[7]_i_1_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out[7]_i_2 
       (.I0(out0_carry__0_n_5),
        .I1(\state_reg_reg_n_1_[2] ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h0000000000400848)) 
    \out[7]_i_3 
       (.I0(\state_reg_reg_n_1_[1] ),
        .I1(\state_reg_reg_n_1_[2] ),
        .I2(\out_reg[0]_0 ),
        .I3(\state_reg[2]_i_7_n_1 ),
        .I4(\i_rep[3]_i_3_n_1 ),
        .I5(reset_IBUF),
        .O(\out[7]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \out[7]_i_4 
       (.I0(\aux_Count[15]_i_2_n_1 ),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[2] ),
        .O(\out[7]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hFF01010101010101)) 
    \out[7]_i_5 
       (.I0(\FSM_sequential_state_reg_reg[1] ),
        .I1(\out[7]_i_6_n_1 ),
        .I2(reset_IBUF),
        .I3(\state_prev[2]_i_2_n_1 ),
        .I4(\j[7]_i_3_n_1 ),
        .I5(aux2_1),
        .O(\out[7]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \out[7]_i_6 
       (.I0(\state_reg_reg_n_1_[2] ),
        .I1(\state_reg_reg_n_1_[1] ),
        .O(\out[7]_i_6_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk),
        .CE(\out[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(p_1_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk),
        .CE(\out[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(p_1_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk),
        .CE(\out[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(p_1_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk),
        .CE(\out[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(p_1_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk),
        .CE(\out[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(p_1_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk),
        .CE(\out[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(p_1_in[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clk),
        .CE(\out[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(p_1_in[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clk),
        .CE(\out[7]_i_1_n_1 ),
        .CLR(reset_IBUF),
        .D(p_1_in[7]),
        .Q(\out_reg_n_1_[7] ));
  LUT6 #(
    .INIT(64'h777F7F7F77707070)) 
    \state_prev[0]_i_1 
       (.I0(\state_reg_reg_n_1_[2] ),
        .I1(\state_reg_reg_n_1_[1] ),
        .I2(\out[7]_i_3_n_1 ),
        .I3(\state_prev[2]_i_2_n_1 ),
        .I4(\state_prev[2]_i_3_n_1 ),
        .I5(\state_prev_reg_n_1_[0] ),
        .O(\state_prev[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \state_prev[1]_i_1 
       (.I0(\state_reg_reg_n_1_[1] ),
        .I1(\out[7]_i_3_n_1 ),
        .I2(\state_prev[2]_i_2_n_1 ),
        .I3(\state_prev[2]_i_3_n_1 ),
        .I4(\state_prev_reg_n_1_[1] ),
        .O(\state_prev[1]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \state_prev[2]_i_1 
       (.I0(\state_reg_reg_n_1_[2] ),
        .I1(\out[7]_i_3_n_1 ),
        .I2(\state_prev[2]_i_2_n_1 ),
        .I3(\state_prev[2]_i_3_n_1 ),
        .I4(\state_prev_reg_n_1_[2] ),
        .O(\state_prev[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33333332)) 
    \state_prev[2]_i_2 
       (.I0(Q[3]),
        .I1(\out_reg_n_1_[7] ),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(\state_prev[2]_i_4_n_1 ),
        .O(\state_prev[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \state_prev[2]_i_3 
       (.I0(reset_IBUF),
        .I1(\state_reg_reg_n_1_[2] ),
        .I2(\out_reg[0]_0 ),
        .I3(\state_reg_reg_n_1_[1] ),
        .I4(\j[7]_i_3_n_1 ),
        .I5(state_reg1_carry__0_n_1),
        .O(\state_prev[2]_i_3_n_1 ));
  LUT5 #(
    .INIT(32'hF0F0FFFE)) 
    \state_prev[2]_i_4 
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(z_flag_reg_n_1),
        .I3(Q[1]),
        .I4(\out_reg_n_1_[7] ),
        .O(\state_prev[2]_i_4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_prev_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_prev[0]_i_1_n_1 ),
        .Q(\state_prev_reg_n_1_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_prev_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_prev[1]_i_1_n_1 ),
        .Q(\state_prev_reg_n_1_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_prev_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_prev[2]_i_1_n_1 ),
        .Q(\state_prev_reg_n_1_[2] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg1_carry
       (.CI(1'b0),
        .CO({state_reg1_carry_n_1,state_reg1_carry_n_2,state_reg1_carry_n_3,state_reg1_carry_n_4}),
        .CYINIT(1'b1),
        .DI({state_reg1_carry_i_1_n_1,state_reg1_carry_i_2_n_1,state_reg1_carry_i_3_n_1,state_reg1_carry_i_4_n_1}),
        .O(NLW_state_reg1_carry_O_UNCONNECTED[3:0]),
        .S({state_reg1_carry_i_5_n_1,state_reg1_carry_i_6_n_1,state_reg1_carry_i_7_n_1,state_reg1_carry_i_8_n_1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state_reg1_carry__0
       (.CI(state_reg1_carry_n_1),
        .CO({state_reg1_carry__0_n_1,state_reg1_carry__0_n_2,state_reg1_carry__0_n_3,state_reg1_carry__0_n_4}),
        .CYINIT(1'b0),
        .DI({state_reg1_carry__0_i_1_n_1,state_reg1_carry__0_i_2_n_1,state_reg1_carry__0_i_3_n_1,state_reg1_carry__0_i_4_n_1}),
        .O(NLW_state_reg1_carry__0_O_UNCONNECTED[3:0]),
        .S({state_reg1_carry__0_i_5_n_1,state_reg1_carry__0_i_6_n_1,state_reg1_carry__0_i_7_n_1,state_reg1_carry__0_i_8_n_1}));
  LUT5 #(
    .INIT(32'h20202F20)) 
    state_reg1_carry__0_i_1
       (.I0(data1[14]),
        .I1(data1[15]),
        .I2(\aux2[15]_i_3_n_1 ),
        .I3(\aux2_reg_n_1_[14] ),
        .I4(\aux2_reg_n_1_[15] ),
        .O(state_reg1_carry__0_i_1_n_1));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    state_reg1_carry__0_i_2
       (.I0(\aux2_reg_n_1_[12] ),
        .I1(data1[12]),
        .I2(\aux2_reg_n_1_[13] ),
        .I3(\aux2[15]_i_3_n_1 ),
        .I4(data1[13]),
        .O(state_reg1_carry__0_i_2_n_1));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    state_reg1_carry__0_i_3
       (.I0(\aux2_reg_n_1_[10] ),
        .I1(data1[10]),
        .I2(\aux2_reg_n_1_[11] ),
        .I3(\aux2[15]_i_3_n_1 ),
        .I4(data1[11]),
        .O(state_reg1_carry__0_i_3_n_1));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    state_reg1_carry__0_i_4
       (.I0(\aux2_reg_n_1_[8] ),
        .I1(data1[8]),
        .I2(\aux2_reg_n_1_[9] ),
        .I3(\aux2[15]_i_3_n_1 ),
        .I4(data1[9]),
        .O(state_reg1_carry__0_i_4_n_1));
  LUT5 #(
    .INIT(32'h1010101F)) 
    state_reg1_carry__0_i_5
       (.I0(data1[14]),
        .I1(data1[15]),
        .I2(\aux2[15]_i_3_n_1 ),
        .I3(\aux2_reg_n_1_[14] ),
        .I4(\aux2_reg_n_1_[15] ),
        .O(state_reg1_carry__0_i_5_n_1));
  LUT5 #(
    .INIT(32'h1010101F)) 
    state_reg1_carry__0_i_6
       (.I0(data1[12]),
        .I1(data1[13]),
        .I2(\aux2[15]_i_3_n_1 ),
        .I3(\aux2_reg_n_1_[12] ),
        .I4(\aux2_reg_n_1_[13] ),
        .O(state_reg1_carry__0_i_6_n_1));
  LUT5 #(
    .INIT(32'h1010101F)) 
    state_reg1_carry__0_i_7
       (.I0(data1[10]),
        .I1(data1[11]),
        .I2(\aux2[15]_i_3_n_1 ),
        .I3(\aux2_reg_n_1_[10] ),
        .I4(\aux2_reg_n_1_[11] ),
        .O(state_reg1_carry__0_i_7_n_1));
  LUT5 #(
    .INIT(32'h1010101F)) 
    state_reg1_carry__0_i_8
       (.I0(data1[8]),
        .I1(data1[9]),
        .I2(\aux2[15]_i_3_n_1 ),
        .I3(\aux2_reg_n_1_[8] ),
        .I4(\aux2_reg_n_1_[9] ),
        .O(state_reg1_carry__0_i_8_n_1));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    state_reg1_carry_i_1
       (.I0(\aux2_reg_n_1_[6] ),
        .I1(data1[6]),
        .I2(\aux2_reg_n_1_[7] ),
        .I3(\aux2[15]_i_3_n_1 ),
        .I4(data1[7]),
        .O(state_reg1_carry_i_1_n_1));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    state_reg1_carry_i_2
       (.I0(\aux2_reg_n_1_[4] ),
        .I1(data1[4]),
        .I2(\aux2_reg_n_1_[5] ),
        .I3(\aux2[15]_i_3_n_1 ),
        .I4(data1[5]),
        .O(state_reg1_carry_i_2_n_1));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    state_reg1_carry_i_3
       (.I0(\aux2_reg_n_1_[2] ),
        .I1(data1[2]),
        .I2(\aux2_reg_n_1_[3] ),
        .I3(\aux2[15]_i_3_n_1 ),
        .I4(data1[3]),
        .O(state_reg1_carry_i_3_n_1));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    state_reg1_carry_i_4
       (.I0(\aux2_reg_n_1_[0] ),
        .I1(data1[0]),
        .I2(\aux2_reg_n_1_[1] ),
        .I3(\aux2[15]_i_3_n_1 ),
        .I4(data1[1]),
        .O(state_reg1_carry_i_4_n_1));
  LUT5 #(
    .INIT(32'h1010101F)) 
    state_reg1_carry_i_5
       (.I0(data1[6]),
        .I1(data1[7]),
        .I2(\aux2[15]_i_3_n_1 ),
        .I3(\aux2_reg_n_1_[6] ),
        .I4(\aux2_reg_n_1_[7] ),
        .O(state_reg1_carry_i_5_n_1));
  LUT5 #(
    .INIT(32'h1010101F)) 
    state_reg1_carry_i_6
       (.I0(data1[4]),
        .I1(data1[5]),
        .I2(\aux2[15]_i_3_n_1 ),
        .I3(\aux2_reg_n_1_[4] ),
        .I4(\aux2_reg_n_1_[5] ),
        .O(state_reg1_carry_i_6_n_1));
  LUT5 #(
    .INIT(32'h1010101F)) 
    state_reg1_carry_i_7
       (.I0(data1[2]),
        .I1(data1[3]),
        .I2(\aux2[15]_i_3_n_1 ),
        .I3(\aux2_reg_n_1_[2] ),
        .I4(\aux2_reg_n_1_[3] ),
        .O(state_reg1_carry_i_7_n_1));
  LUT5 #(
    .INIT(32'h1010101F)) 
    state_reg1_carry_i_8
       (.I0(data1[0]),
        .I1(data1[1]),
        .I2(\aux2[15]_i_3_n_1 ),
        .I3(\aux2_reg_n_1_[0] ),
        .I4(\aux2_reg_n_1_[1] ),
        .O(state_reg1_carry_i_8_n_1));
  LUT6 #(
    .INIT(64'hFAEAFFFFFAEA0000)) 
    \state_reg[0]_i_1 
       (.I0(\state_reg[0]_i_2_n_1 ),
        .I1(\FSM_sequential_state_reg_reg[1] ),
        .I2(\state_reg[0]_i_3_n_1 ),
        .I3(\state_prev_reg_n_1_[0] ),
        .I4(\state_reg[2]_i_6_n_1 ),
        .I5(\out_reg[0]_0 ),
        .O(\state_reg[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h0F0F0F0FFF7F5F5F)) 
    \state_reg[0]_i_2 
       (.I0(\state_reg[1]_i_7_n_1 ),
        .I1(acc_sended),
        .I2(\state_reg_reg_n_1_[1] ),
        .I3(\j[7]_i_3_n_1 ),
        .I4(\out_reg[0]_0 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(\state_reg[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \state_reg[0]_i_3 
       (.I0(\state_reg[0]_i_4_n_1 ),
        .I1(i[2]),
        .I2(i[0]),
        .I3(i[1]),
        .I4(\out_reg[0]_0 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(\state_reg[0]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \state_reg[0]_i_4 
       (.I0(i[3]),
        .I1(i[4]),
        .I2(i[5]),
        .I3(i[7]),
        .I4(i[6]),
        .O(\state_reg[0]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hEFABFFFFAAAA0000)) 
    \state_reg[1]_i_1 
       (.I0(\state_reg[1]_i_2_n_1 ),
        .I1(\state_reg_reg_n_1_[2] ),
        .I2(\state_reg[1]_i_3_n_1 ),
        .I3(\FSM_sequential_state_reg_reg[1] ),
        .I4(\state_reg[2]_i_6_n_1 ),
        .I5(\state_reg_reg_n_1_[1] ),
        .O(\state_reg[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF0D500D5)) 
    \state_reg[1]_i_2 
       (.I0(\state_reg[2]_i_7_n_1 ),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[2] ),
        .I3(\state_reg_reg_n_1_[1] ),
        .I4(\state_prev_reg_n_1_[1] ),
        .O(\state_reg[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFFF)) 
    \state_reg[1]_i_3 
       (.I0(\state_reg[1]_i_5_n_1 ),
        .I1(j[7]),
        .I2(j[2]),
        .I3(\j[7]_i_5_n_1 ),
        .I4(\state_reg[1]_i_6_n_1 ),
        .I5(\state_reg[1]_i_7_n_1 ),
        .O(\state_reg[1]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state_reg[1]_i_5 
       (.I0(j[1]),
        .I1(j[0]),
        .O(\state_reg[1]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \state_reg[1]_i_6 
       (.I0(acc_sended),
        .I1(\out_reg[0]_0 ),
        .O(\state_reg[1]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \state_reg[1]_i_7 
       (.I0(finish_program),
        .I1(first),
        .I2(\out_reg[0]_0 ),
        .O(\state_reg[1]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \state_reg[2]_i_1 
       (.I0(\state_reg[2]_i_2_n_1 ),
        .I1(\state_reg[2]_i_3_n_1 ),
        .I2(\state_reg[2]_i_4_n_1 ),
        .I3(\state_reg[2]_i_5_n_1 ),
        .I4(\state_reg[2]_i_6_n_1 ),
        .I5(\state_reg_reg_n_1_[2] ),
        .O(\state_reg[2]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \state_reg[2]_i_2 
       (.I0(state_reg1_carry__0_n_1),
        .I1(\j[7]_i_3_n_1 ),
        .I2(\out_reg[0]_0 ),
        .I3(\state_reg_reg_n_1_[2] ),
        .I4(\state_prev[2]_i_2_n_1 ),
        .O(\state_reg[2]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state_reg[2]_i_3 
       (.I0(\state_reg[2]_i_7_n_1 ),
        .I1(\state_reg_reg_n_1_[1] ),
        .O(\state_reg[2]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \state_reg[2]_i_4 
       (.I0(\state_reg_reg_n_1_[1] ),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[2] ),
        .O(\state_reg[2]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hF4F4F44444444444)) 
    \state_reg[2]_i_5 
       (.I0(\state_reg_reg_n_1_[2] ),
        .I1(\state_reg[1]_i_3_n_1 ),
        .I2(\state_reg[0]_i_3_n_1 ),
        .I3(\FSM_sequential_state_reg_reg[1] ),
        .I4(\state_prev_reg_n_1_[2] ),
        .I5(\state_reg_reg_n_1_[1] ),
        .O(\state_reg[2]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h5444F444)) 
    \state_reg[2]_i_6 
       (.I0(reset_IBUF),
        .I1(\state_reg_reg_n_1_[1] ),
        .I2(\state_reg_reg_n_1_[2] ),
        .I3(\out_reg[0]_0 ),
        .I4(\aux_Count[15]_i_2_n_1 ),
        .O(\state_reg[2]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \state_reg[2]_i_7 
       (.I0(\aux_Count[15]_i_3_n_1 ),
        .I1(i[1]),
        .I2(i[0]),
        .I3(i[2]),
        .O(\state_reg[2]_i_7_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state_reg[0]_i_1_n_1 ),
        .Q(\out_reg[0]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_reg[1]_i_1_n_1 ),
        .PRE(reset_IBUF),
        .Q(\state_reg_reg_n_1_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state_reg[2]_i_1_n_1 ),
        .PRE(reset_IBUF),
        .Q(\state_reg_reg_n_1_[2] ));
  LUT6 #(
    .INIT(64'h773F7F3F77307030)) 
    tx_start_aux_i_1
       (.I0(\state_reg_reg_n_1_[2] ),
        .I1(tx_start_aux_i_2_n_1),
        .I2(tx_start_aux_i_3_n_1),
        .I3(\state_prev[2]_i_2_n_1 ),
        .I4(tx_start_aux_i_4_n_1),
        .I5(tx_start),
        .O(tx_start_aux_i_1_n_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tx_start_aux_i_2
       (.I0(\state_reg_reg_n_1_[1] ),
        .I1(\out_reg[0]_0 ),
        .O(tx_start_aux_i_2_n_1));
  LUT6 #(
    .INIT(64'h000000008F880000)) 
    tx_start_aux_i_3
       (.I0(\aux_Count[15]_i_2_n_1 ),
        .I1(\out_reg[0]_0 ),
        .I2(\i_rep[3]_i_3_n_1 ),
        .I3(\state_reg_reg_n_1_[1] ),
        .I4(\state_reg_reg_n_1_[2] ),
        .I5(reset_IBUF),
        .O(tx_start_aux_i_3_n_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    tx_start_aux_i_4
       (.I0(reset_IBUF),
        .I1(\out_reg[0]_0 ),
        .I2(\state_reg_reg_n_1_[1] ),
        .I3(\j[7]_i_3_n_1 ),
        .I4(state_reg1_carry__0_n_1),
        .O(tx_start_aux_i_4_n_1));
  FDCE #(
    .INIT(1'b0)) 
    tx_start_aux_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(tx_start_aux_i_1_n_1),
        .Q(tx_start));
  LUT6 #(
    .INIT(64'h4455445500004000)) 
    z_flag_i_1
       (.I0(\out[7]_i_4_n_1 ),
        .I1(\j[7]_i_3_n_1 ),
        .I2(\state_prev[2]_i_2_n_1 ),
        .I3(aux2_1),
        .I4(state_reg1_carry__0_n_1),
        .I5(z_flag_reg_n_1),
        .O(z_flag_i_1_n_1));
  FDCE #(
    .INIT(1'b0)) 
    z_flag_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(z_flag_i_1_n_1),
        .Q(z_flag_reg_n_1));
endmodule

module UART
   (tx_OBUF,
    ena,
    clk,
    reset_IBUF,
    In_Data,
    rx_IBUF,
    finish_program,
    D);
  output tx_OBUF;
  output ena;
  input clk;
  input reset_IBUF;
  input [15:0]In_Data;
  input rx_IBUF;
  input finish_program;
  input [10:0]D;

  wire [10:0]D;
  wire [15:0]In_Data;
  wire [7:7]b_next;
  wire clk;
  wire ena;
  wire finish_program;
  wire int_tx_n_1;
  wire int_tx_n_2;
  wire int_tx_n_3;
  wire int_tx_n_4;
  wire int_tx_n_5;
  wire int_tx_n_6;
  wire int_tx_n_7;
  wire int_tx_n_9;
  wire is_s;
  wire reset_IBUF;
  wire rx_IBUF;
  wire rx_mod_n_1;
  wire rx_mod_n_2;
  wire rx_mod_n_3;
  wire s_tick;
  wire state_reg;
  wire tx_OBUF;
  wire tx_mod_n_1;
  wire tx_mod_n_3;
  wire tx_start;

  br_generator br_g
       (.clk(clk),
        .s_tick(s_tick));
  Rx_interface int_rx
       (.\b_reg_reg[1] (rx_mod_n_1),
        .clk(clk),
        .ena(ena),
        .is_s(is_s),
        .is_s_reg_0(rx_mod_n_2),
        .reset_IBUF(reset_IBUF),
        .state_reg(state_reg),
        .state_reg_reg_0(rx_mod_n_3));
  Tx_interface int_tx
       (.D(b_next),
        .\FSM_sequential_state_reg_reg[1] (tx_mod_n_3),
        .In_Data(In_Data),
        .Q({int_tx_n_1,int_tx_n_2,int_tx_n_3,int_tx_n_4,int_tx_n_5,int_tx_n_6,int_tx_n_7}),
        .\aux_PC_reg[10] (D),
        .clk(clk),
        .finish_program(finish_program),
        .out(tx_mod_n_1),
        .\out_reg[0]_0 (int_tx_n_9),
        .reset_IBUF(reset_IBUF),
        .tx_start(tx_start));
  rx_module rx_mod
       (.clk(clk),
        .is_s(is_s),
        .is_s_reg(rx_mod_n_1),
        .is_s_reg_0(rx_mod_n_2),
        .reset_IBUF(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .s_tick(s_tick),
        .state_reg(state_reg),
        .state_reg_reg(rx_mod_n_3));
  tx_module tx_mod
       (.D(b_next),
        .Q({int_tx_n_1,int_tx_n_2,int_tx_n_3,int_tx_n_4,int_tx_n_5,int_tx_n_6,int_tx_n_7}),
        .clk(clk),
        .out(tx_mod_n_1),
        .reset_IBUF(reset_IBUF),
        .s_tick(s_tick),
        .\state_reg_reg[0] (int_tx_n_9),
        .\state_reg_reg[1] (tx_mod_n_3),
        .tx_OBUF(tx_OBUF),
        .tx_start(tx_start));
endmodule

module br_generator
   (s_tick,
    clk);
  output s_tick;
  input clk;

  wire [7:0]ciclos;
  wire \ciclos[1]_i_1_n_1 ;
  wire \ciclos[2]_i_1_n_1 ;
  wire \ciclos[3]_i_1_n_1 ;
  wire \ciclos[4]_i_1_n_1 ;
  wire \ciclos[5]_i_1_n_1 ;
  wire \ciclos[6]_i_1_n_1 ;
  wire \ciclos[6]_i_2_n_1 ;
  wire \ciclos[7]_i_1_n_1 ;
  wire \ciclos[7]_i_2_n_1 ;
  wire \ciclos[7]_i_3_n_1 ;
  wire [0:0]ciclos_0;
  wire clk;
  wire s_tick;

  LUT1 #(
    .INIT(2'h1)) 
    \ciclos[0]_i_1 
       (.I0(ciclos[0]),
        .O(ciclos_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciclos[1]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .O(\ciclos[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ciclos[2]_i_1 
       (.I0(ciclos[1]),
        .I1(ciclos[0]),
        .I2(ciclos[2]),
        .O(\ciclos[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ciclos[3]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .I2(ciclos[2]),
        .I3(ciclos[3]),
        .O(\ciclos[3]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ciclos[4]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .I2(ciclos[2]),
        .I3(ciclos[3]),
        .I4(ciclos[4]),
        .O(\ciclos[4]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ciclos[5]_i_1 
       (.I0(ciclos[2]),
        .I1(ciclos[3]),
        .I2(ciclos[4]),
        .I3(ciclos[1]),
        .I4(ciclos[0]),
        .I5(ciclos[5]),
        .O(\ciclos[5]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \ciclos[6]_i_1 
       (.I0(\ciclos[6]_i_2_n_1 ),
        .I1(ciclos[5]),
        .I2(ciclos[3]),
        .I3(ciclos[2]),
        .I4(ciclos[4]),
        .I5(ciclos[6]),
        .O(\ciclos[6]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ciclos[6]_i_2 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .O(\ciclos[6]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \ciclos[7]_i_1 
       (.I0(\ciclos[7]_i_3_n_1 ),
        .I1(ciclos[3]),
        .I2(ciclos[4]),
        .I3(ciclos[2]),
        .I4(ciclos[6]),
        .I5(ciclos[7]),
        .O(\ciclos[7]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \ciclos[7]_i_2 
       (.I0(\ciclos[7]_i_3_n_1 ),
        .I1(ciclos[6]),
        .I2(ciclos[4]),
        .I3(ciclos[3]),
        .I4(ciclos[2]),
        .I5(ciclos[7]),
        .O(\ciclos[7]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ciclos[7]_i_3 
       (.I0(ciclos[1]),
        .I1(ciclos[0]),
        .I2(ciclos[5]),
        .O(\ciclos[7]_i_3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ciclos_0),
        .Q(ciclos[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ciclos[1]_i_1_n_1 ),
        .Q(ciclos[1]),
        .R(\ciclos[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\ciclos[2]_i_1_n_1 ),
        .Q(ciclos[2]),
        .R(\ciclos[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\ciclos[3]_i_1_n_1 ),
        .Q(ciclos[3]),
        .R(\ciclos[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\ciclos[4]_i_1_n_1 ),
        .Q(ciclos[4]),
        .R(\ciclos[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\ciclos[5]_i_1_n_1 ),
        .Q(ciclos[5]),
        .R(\ciclos[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\ciclos[6]_i_1_n_1 ),
        .Q(ciclos[6]),
        .R(\ciclos[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\ciclos[7]_i_2_n_1 ),
        .Q(ciclos[7]),
        .R(\ciclos[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(clk),
        .CE(1'b1),
        .D(\ciclos[7]_i_1_n_1 ),
        .Q(s_tick),
        .R(1'b0));
endmodule

module rx_module
   (is_s_reg,
    is_s_reg_0,
    state_reg_reg,
    s_tick,
    rx_IBUF,
    is_s,
    state_reg,
    reset_IBUF,
    clk);
  output is_s_reg;
  output is_s_reg_0;
  output state_reg_reg;
  input s_tick;
  input rx_IBUF;
  input is_s;
  input state_reg;
  input reset_IBUF;
  input clk;

  wire \FSM_sequential_state_reg[0]_i_1_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_1 ;
  wire b_next;
  wire \b_reg_reg_n_1_[0] ;
  wire \b_reg_reg_n_1_[1] ;
  wire \b_reg_reg_n_1_[2] ;
  wire \b_reg_reg_n_1_[3] ;
  wire \b_reg_reg_n_1_[4] ;
  wire \b_reg_reg_n_1_[5] ;
  wire \b_reg_reg_n_1_[6] ;
  wire clk;
  wire [7:7]dout;
  wire is_s;
  wire is_s_i_2_n_1;
  wire is_s_i_4_n_1;
  wire is_s_i_5_n_1;
  wire is_s_reg;
  wire is_s_reg_0;
  wire n_next;
  wire \n_reg[0]_i_1_n_1 ;
  wire \n_reg[1]_i_1_n_1 ;
  wire \n_reg[2]_i_1_n_1 ;
  wire reset_IBUF;
  wire rx_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_1 ;
  wire \s_reg[1]_i_1_n_1 ;
  wire \s_reg[2]_i_1_n_1 ;
  wire \s_reg[3]_i_2_n_1 ;
  wire \s_reg[3]_i_3_n_1 ;
  wire s_tick;
  wire [2:0]sel0;
  wire state_reg;
  (* RTL_KEEP = "yes" *) wire [1:0]state_reg_0;
  wire state_reg_i_2_n_1;
  wire state_reg_reg;

  LUT5 #(
    .INIT(32'h23FF2300)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(s_tick),
        .I1(state_reg_0[0]),
        .I2(state_reg_0[1]),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_1 ),
        .I4(state_reg_0[0]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h38FF3800)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(s_tick),
        .I1(state_reg_0[1]),
        .I2(state_reg_0[0]),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_1 ),
        .I4(state_reg_0[1]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFF01FF01FF01)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(state_reg_0[0]),
        .I1(state_reg_0[1]),
        .I2(rx_IBUF),
        .I3(\FSM_sequential_state_reg[1]_i_3_n_1 ),
        .I4(state_reg_i_2_n_1),
        .I5(\FSM_sequential_state_reg[1]_i_4_n_1 ),
        .O(\FSM_sequential_state_reg[1]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(state_reg_0[0]),
        .I1(state_reg_0[1]),
        .I2(s_tick),
        .I3(s_reg[3]),
        .I4(\s_reg[3]_i_3_n_1 ),
        .O(\FSM_sequential_state_reg[1]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(state_reg_0[0]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_1 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1_n_1 ),
        .Q(state_reg_0[0]));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1_n_1 ),
        .Q(state_reg_0[1]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \b_reg[7]_i_1 
       (.I0(\s_reg[3]_i_3_n_1 ),
        .I1(s_reg[3]),
        .I2(s_tick),
        .I3(state_reg_0[1]),
        .I4(state_reg_0[0]),
        .O(b_next));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg_reg_n_1_[1] ),
        .Q(\b_reg_reg_n_1_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg_reg_n_1_[2] ),
        .Q(\b_reg_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg_reg_n_1_[3] ),
        .Q(\b_reg_reg_n_1_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg_reg_n_1_[4] ),
        .Q(\b_reg_reg_n_1_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg_reg_n_1_[5] ),
        .Q(\b_reg_reg_n_1_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(\b_reg_reg_n_1_[6] ),
        .Q(\b_reg_reg_n_1_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(dout),
        .Q(\b_reg_reg_n_1_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(rx_IBUF),
        .Q(dout));
  LUT4 #(
    .INIT(16'hAC8C)) 
    is_s_i_1
       (.I0(is_s_i_2_n_1),
        .I1(is_s),
        .I2(state_reg),
        .I3(is_s_reg),
        .O(is_s_reg_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    is_s_i_2
       (.I0(dout),
        .I1(\b_reg_reg_n_1_[0] ),
        .I2(\b_reg_reg_n_1_[5] ),
        .I3(\b_reg_reg_n_1_[6] ),
        .I4(is_s_i_4_n_1),
        .O(is_s_i_2_n_1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_s_i_3
       (.I0(\b_reg_reg_n_1_[1] ),
        .I1(\b_reg_reg_n_1_[5] ),
        .I2(\b_reg_reg_n_1_[4] ),
        .I3(\b_reg_reg_n_1_[6] ),
        .I4(is_s_i_5_n_1),
        .O(is_s_reg));
  LUT4 #(
    .INIT(16'h0400)) 
    is_s_i_4
       (.I0(\b_reg_reg_n_1_[2] ),
        .I1(\b_reg_reg_n_1_[1] ),
        .I2(\b_reg_reg_n_1_[3] ),
        .I3(\b_reg_reg_n_1_[4] ),
        .O(is_s_i_4_n_1));
  LUT4 #(
    .INIT(16'hFF7F)) 
    is_s_i_5
       (.I0(\b_reg_reg_n_1_[3] ),
        .I1(\b_reg_reg_n_1_[2] ),
        .I2(\b_reg_reg_n_1_[0] ),
        .I3(dout),
        .O(is_s_i_5_n_1));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(state_reg_0[1]),
        .I1(n_next),
        .I2(sel0[0]),
        .O(\n_reg[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \n_reg[1]_i_1 
       (.I0(sel0[0]),
        .I1(state_reg_0[1]),
        .I2(n_next),
        .I3(sel0[1]),
        .O(\n_reg[1]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \n_reg[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(state_reg_0[1]),
        .I3(n_next),
        .I4(sel0[2]),
        .O(\n_reg[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h1000030010000000)) 
    \n_reg[2]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_4_n_1 ),
        .I1(\s_reg[3]_i_3_n_1 ),
        .I2(s_reg[3]),
        .I3(s_tick),
        .I4(state_reg_0[1]),
        .I5(state_reg_0[0]),
        .O(n_next));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1_n_1 ),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1_n_1 ),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1_n_1 ),
        .Q(sel0[2]));
  LUT4 #(
    .INIT(16'h555C)) 
    \s_reg[0]_i_1 
       (.I0(s_reg[0]),
        .I1(rx_IBUF),
        .I2(state_reg_0[1]),
        .I3(state_reg_0[0]),
        .O(\s_reg[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h02FEFE02)) 
    \s_reg[1]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg_0[1]),
        .I2(state_reg_0[0]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .O(\s_reg[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h6A6A6A6A6A6AFF00)) 
    \s_reg[2]_i_1 
       (.I0(s_reg[2]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(rx_IBUF),
        .I4(state_reg_0[1]),
        .I5(state_reg_0[0]),
        .O(\s_reg[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hDFF00000DFFF000F)) 
    \s_reg[3]_i_1 
       (.I0(s_reg[3]),
        .I1(\s_reg[3]_i_3_n_1 ),
        .I2(state_reg_0[1]),
        .I3(state_reg_0[0]),
        .I4(s_tick),
        .I5(rx_IBUF),
        .O(s_next));
  LUT5 #(
    .INIT(32'hC3C3C0AA)) 
    \s_reg[3]_i_2 
       (.I0(rx_IBUF),
        .I1(\s_reg[3]_i_3_n_1 ),
        .I2(s_reg[3]),
        .I3(state_reg_0[0]),
        .I4(state_reg_0[1]),
        .O(\s_reg[3]_i_2_n_1 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \s_reg[3]_i_3 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .O(\s_reg[3]_i_3_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1_n_1 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1_n_1 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1_n_1 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2_n_1 ),
        .Q(s_reg[3]));
  LUT4 #(
    .INIT(16'h9888)) 
    state_reg_i_1
       (.I0(reset_IBUF),
        .I1(state_reg),
        .I2(state_reg_0[0]),
        .I3(state_reg_i_2_n_1),
        .O(state_reg_reg));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    state_reg_i_2
       (.I0(state_reg_0[1]),
        .I1(s_tick),
        .I2(s_reg[3]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .I5(s_reg[2]),
        .O(state_reg_i_2_n_1));
endmodule

module tx_module
   (out,
    tx_OBUF,
    \state_reg_reg[1] ,
    clk,
    reset_IBUF,
    tx_start,
    s_tick,
    \state_reg_reg[0] ,
    D,
    Q);
  output [0:0]out;
  output tx_OBUF;
  output \state_reg_reg[1] ;
  input clk;
  input reset_IBUF;
  input tx_start;
  input s_tick;
  input \state_reg_reg[0] ;
  input [0:0]D;
  input [6:0]Q;

  wire [0:0]D;
  wire \FSM_sequential_state_reg[0]_i_1__0_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_2__0_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_3__0_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_4__0_n_1 ;
  wire [6:0]Q;
  wire [6:0]b_next;
  wire b_next_0;
  wire [0:0]b_reg;
  wire \b_reg[7]_i_3_n_1 ;
  wire \b_reg_reg_n_1_[1] ;
  wire \b_reg_reg_n_1_[2] ;
  wire \b_reg_reg_n_1_[3] ;
  wire \b_reg_reg_n_1_[4] ;
  wire \b_reg_reg_n_1_[5] ;
  wire \b_reg_reg_n_1_[6] ;
  wire \b_reg_reg_n_1_[7] ;
  wire clk;
  wire n_next;
  wire \n_reg[0]_i_1_n_1 ;
  wire \n_reg[1]_i_1_n_1 ;
  wire \n_reg[2]_i_1_n_1 ;
  wire \n_reg[2]_i_3_n_1 ;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire reset_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1__0_n_1 ;
  wire \s_reg[1]_i_1__0_n_1 ;
  wire \s_reg[2]_i_1__0_n_1 ;
  wire \s_reg[3]_i_2__0_n_1 ;
  wire \s_reg[3]_i_3__0_n_1 ;
  wire s_tick;
  wire [2:0]sel0__0;
  (* RTL_KEEP = "yes" *) wire [0:0]state_reg;
  wire \state_reg_reg[0] ;
  wire \state_reg_reg[1] ;
  wire tx_OBUF;
  wire tx_next;
  wire tx_start;

  LUT5 #(
    .INIT(32'h23FF2300)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(s_tick),
        .I1(state_reg),
        .I2(out),
        .I3(\FSM_sequential_state_reg[1]_i_2__0_n_1 ),
        .I4(state_reg),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_1 ));
  LUT5 #(
    .INIT(32'h4AFF4A00)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(state_reg),
        .I1(s_tick),
        .I2(out),
        .I3(\FSM_sequential_state_reg[1]_i_2__0_n_1 ),
        .I4(out),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_1 ));
  LUT6 #(
    .INIT(64'h00FF222E00002222)) 
    \FSM_sequential_state_reg[1]_i_2__0 
       (.I0(tx_start),
        .I1(out),
        .I2(\FSM_sequential_state_reg[1]_i_3__0_n_1 ),
        .I3(\FSM_sequential_state_reg[1]_i_4__0_n_1 ),
        .I4(state_reg),
        .I5(s_tick),
        .O(\FSM_sequential_state_reg[1]_i_2__0_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state_reg[1]_i_3__0 
       (.I0(sel0__0[1]),
        .I1(sel0__0[0]),
        .I2(sel0__0[2]),
        .O(\FSM_sequential_state_reg[1]_i_3__0_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_4__0 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .O(\FSM_sequential_state_reg[1]_i_4__0_n_1 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_1 ),
        .Q(state_reg));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_1 ),
        .Q(out));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(\b_reg_reg_n_1_[1] ),
        .I1(out),
        .I2(Q[0]),
        .O(b_next[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(\b_reg_reg_n_1_[2] ),
        .I1(out),
        .I2(Q[1]),
        .O(b_next[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(\b_reg_reg_n_1_[3] ),
        .I1(out),
        .I2(Q[2]),
        .O(b_next[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(\b_reg_reg_n_1_[4] ),
        .I1(out),
        .I2(Q[3]),
        .O(b_next[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(\b_reg_reg_n_1_[5] ),
        .I1(out),
        .I2(Q[4]),
        .O(b_next[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(\b_reg_reg_n_1_[6] ),
        .I1(out),
        .I2(Q[5]),
        .O(b_next[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(\b_reg_reg_n_1_[7] ),
        .I1(out),
        .I2(Q[6]),
        .O(b_next[6]));
  LUT6 #(
    .INIT(64'h000040FF00004000)) 
    \b_reg[7]_i_1__0 
       (.I0(\b_reg[7]_i_3_n_1 ),
        .I1(s_reg[3]),
        .I2(s_tick),
        .I3(out),
        .I4(state_reg),
        .I5(tx_start),
        .O(b_next_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \b_reg[7]_i_3 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .O(\b_reg[7]_i_3_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[0]),
        .Q(b_reg));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[1]),
        .Q(\b_reg_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[2]),
        .Q(\b_reg_reg_n_1_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[3]),
        .Q(\b_reg_reg_n_1_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[4]),
        .Q(\b_reg_reg_n_1_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[5]),
        .Q(\b_reg_reg_n_1_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[6]),
        .Q(\b_reg_reg_n_1_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(D),
        .Q(\b_reg_reg_n_1_[7] ));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(out),
        .I1(n_next),
        .I2(sel0__0[0]),
        .O(\n_reg[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \n_reg[1]_i_1 
       (.I0(sel0__0[0]),
        .I1(out),
        .I2(n_next),
        .I3(sel0__0[1]),
        .O(\n_reg[1]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \n_reg[2]_i_1 
       (.I0(sel0__0[0]),
        .I1(sel0__0[1]),
        .I2(out),
        .I3(n_next),
        .I4(sel0__0[2]),
        .O(\n_reg[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h000B00000F000000)) 
    \n_reg[2]_i_2__0 
       (.I0(\n_reg[2]_i_3_n_1 ),
        .I1(sel0__0[2]),
        .I2(\FSM_sequential_state_reg[1]_i_4__0_n_1 ),
        .I3(state_reg),
        .I4(s_tick),
        .I5(out),
        .O(n_next));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \n_reg[2]_i_3 
       (.I0(sel0__0[0]),
        .I1(sel0__0[1]),
        .O(\n_reg[2]_i_3_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1_n_1 ),
        .Q(sel0__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1_n_1 ),
        .Q(sel0__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1_n_1 ),
        .Q(sel0__0[2]));
  LUT3 #(
    .INIT(8'h54)) 
    \s_reg[0]_i_1__0 
       (.I0(s_reg[0]),
        .I1(state_reg),
        .I2(out),
        .O(\s_reg[0]_i_1__0_n_1 ));
  LUT4 #(
    .INIT(16'h0EE0)) 
    \s_reg[1]_i_1__0 
       (.I0(out),
        .I1(state_reg),
        .I2(s_reg[0]),
        .I3(s_reg[1]),
        .O(\s_reg[1]_i_1__0_n_1 ));
  LUT5 #(
    .INIT(32'h0EEEE000)) 
    \s_reg[2]_i_1__0 
       (.I0(out),
        .I1(state_reg),
        .I2(s_reg[0]),
        .I3(s_reg[1]),
        .I4(s_reg[2]),
        .O(\s_reg[2]_i_1__0_n_1 ));
  LUT5 #(
    .INIT(32'hFE040E04)) 
    \s_reg[3]_i_1__0 
       (.I0(state_reg),
        .I1(tx_start),
        .I2(out),
        .I3(s_tick),
        .I4(\s_reg[3]_i_3__0_n_1 ),
        .O(s_next));
  LUT6 #(
    .INIT(64'h7F7F7F0080808000)) 
    \s_reg[3]_i_2__0 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .I3(state_reg),
        .I4(out),
        .I5(s_reg[3]),
        .O(\s_reg[3]_i_2__0_n_1 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s_reg[3]_i_3__0 
       (.I0(s_reg[3]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(s_reg[2]),
        .I4(state_reg),
        .O(\s_reg[3]_i_3__0_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1__0_n_1 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1__0_n_1 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1__0_n_1 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2__0_n_1 ),
        .Q(s_reg[3]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \state_reg[1]_i_4 
       (.I0(\s_reg[3]_i_3__0_n_1 ),
        .I1(out),
        .I2(s_tick),
        .I3(\state_reg_reg[0] ),
        .O(\state_reg_reg[1] ));
  LUT3 #(
    .INIT(8'hE3)) 
    tx_reg_i_1
       (.I0(b_reg),
        .I1(state_reg),
        .I2(out),
        .O(tx_next));
  FDPE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(clk),
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
