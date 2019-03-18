// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Mar 18 19:07:42 2019
// Host        : lenovo running 64-bit Manjaro Linux
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /usr/local/magnetic2/Xilinx/Vivado/Vivado/2018.2/bin/Arquitectura2018/TP_BIP/TP_BIP.sim/sim_1/synth/func/xsim/allTest_func_synth.v
// Design      : Top_level
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__2_n_1 ;
  wire \_inferred__0/i__carry__2_n_2 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [15:0]data0;
  wire [3:0]ram_name_reg;
  wire [3:0]ram_name_reg_0;
  wire [3:0]ram_name_reg_1;
  wire [3:3]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],DI}),
        .O(data0[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(data0[7:4]),
        .S(ram_name_reg));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(data0[11:8]),
        .S(ram_name_reg_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [3],\_inferred__0/i__carry__2_n_1 ,\_inferred__0/i__carry__2_n_2 ,\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O(data0[15:12]),
        .S(ram_name_reg_1));
endmodule

module CPU
   (out,
    data0,
    Q,
    finish_program,
    DI,
    S,
    ram_name_reg,
    ram_name_reg_0,
    ram_name_reg_1,
    clk_IBUF_BUFG,
    button_OBUF,
    ram_name_reg_2,
    E,
    D,
    ena,
    DOADO);
  output [10:0]out;
  output [15:0]data0;
  output [15:0]Q;
  output finish_program;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]ram_name_reg;
  input [3:0]ram_name_reg_0;
  input [3:0]ram_name_reg_1;
  input clk_IBUF_BUFG;
  input button_OBUF;
  input ram_name_reg_2;
  input [0:0]E;
  input [15:0]D;
  input ena;
  input [4:0]DOADO;

  wire [15:0]D;
  wire [0:0]DI;
  wire [4:0]DOADO;
  wire [0:0]E;
  wire [15:0]Q;
  wire [3:0]S;
  wire button_OBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]data0;
  wire ena;
  wire finish_program;
  wire [10:0]out;
  wire [3:0]ram_name_reg;
  wire [3:0]ram_name_reg_0;
  wire [3:0]ram_name_reg_1;
  wire ram_name_reg_2;

  ControlUnit control
       (.DOADO(DOADO),
        .Q(out),
        .button_OBUF(button_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ena(ena),
        .finish_program(finish_program),
        .ram_name_reg(ram_name_reg_2));
  Datapath datapath
       (.D(D),
        .DI(DI),
        .E(E),
        .Q(Q),
        .S(S),
        .button_OBUF(button_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .ram_name_reg(ram_name_reg),
        .ram_name_reg_0(ram_name_reg_0),
        .ram_name_reg_1(ram_name_reg_1));
endmodule

module ControlUnit
   (Q,
    finish_program,
    clk_IBUF_BUFG,
    button_OBUF,
    ram_name_reg,
    ena,
    DOADO);
  output [10:0]Q;
  output finish_program;
  input clk_IBUF_BUFG;
  input button_OBUF;
  input ram_name_reg;
  input ena;
  input [4:0]DOADO;

  wire [4:0]DOADO;
  wire [10:0]Q;
  wire aux_PC0_carry__0_n_0;
  wire aux_PC0_carry__0_n_1;
  wire aux_PC0_carry__0_n_2;
  wire aux_PC0_carry__0_n_3;
  wire aux_PC0_carry__1_n_2;
  wire aux_PC0_carry__1_n_3;
  wire aux_PC0_carry_i_1_n_0;
  wire aux_PC0_carry_n_0;
  wire aux_PC0_carry_n_1;
  wire aux_PC0_carry_n_2;
  wire aux_PC0_carry_n_3;
  wire aux_finish_program_i_1_n_0;
  wire aux_finish_program_i_3_n_0;
  wire aux_finish_program_i_4_n_0;
  wire button_OBUF;
  wire clk_IBUF_BUFG;
  wire ena;
  wire finish_program;
  wire [10:0]p_0_in__0;
  wire ram_name_reg;
  wire [3:2]NLW_aux_PC0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_aux_PC0_carry__1_O_UNCONNECTED;

  CARRY4 aux_PC0_carry
       (.CI(1'b0),
        .CO({aux_PC0_carry_n_0,aux_PC0_carry_n_1,aux_PC0_carry_n_2,aux_PC0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O(p_0_in__0[3:0]),
        .S({Q[3:1],aux_PC0_carry_i_1_n_0}));
  CARRY4 aux_PC0_carry__0
       (.CI(aux_PC0_carry_n_0),
        .CO({aux_PC0_carry__0_n_0,aux_PC0_carry__0_n_1,aux_PC0_carry__0_n_2,aux_PC0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[7:4]),
        .S(Q[7:4]));
  CARRY4 aux_PC0_carry__1
       (.CI(aux_PC0_carry__0_n_0),
        .CO({NLW_aux_PC0_carry__1_CO_UNCONNECTED[3:2],aux_PC0_carry__1_n_2,aux_PC0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_aux_PC0_carry__1_O_UNCONNECTED[3],p_0_in__0[10:8]}),
        .S({1'b0,Q[10:8]}));
  LUT6 #(
    .INIT(64'hA9A9A9A9A9A9A9AA)) 
    aux_PC0_carry_i_1
       (.I0(Q[0]),
        .I1(DOADO[3]),
        .I2(DOADO[4]),
        .I3(DOADO[1]),
        .I4(DOADO[2]),
        .I5(DOADO[0]),
        .O(aux_PC0_carry_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \aux_PC_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(ena),
        .CLR(button_OBUF),
        .D(p_0_in__0[9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555554)) 
    aux_finish_program_i_1
       (.I0(ram_name_reg),
        .I1(Q[9]),
        .I2(Q[3]),
        .I3(Q[8]),
        .I4(aux_finish_program_i_3_n_0),
        .I5(finish_program),
        .O(aux_finish_program_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    aux_finish_program_i_3
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(aux_finish_program_i_4_n_0),
        .O(aux_finish_program_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    aux_finish_program_i_4
       (.I0(Q[2]),
        .I1(Q[7]),
        .I2(Q[1]),
        .I3(Q[10]),
        .O(aux_finish_program_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    aux_finish_program_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(aux_finish_program_i_1_n_0),
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
        .WEA({WEA,WEA,WEA,WEA}),
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
    button_OBUF);
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
  input button_OBUF;

  wire [15:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [15:0]Q;
  wire [3:0]S;
  wire button_OBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]data0;
  wire [3:0]ram_name_reg;
  wire [3:0]ram_name_reg_0;
  wire [3:0]ram_name_reg_1;

  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \ACC_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(button_OBUF),
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
    D,
    E,
    Wr,
    aux_finish_program_reg,
    DI,
    S,
    \ACC_reg[7] ,
    \ACC_reg[11] ,
    \ACC_reg[15] ,
    clk_IBUF_BUFG,
    ena,
    Q,
    data0,
    ram_data,
    \ACC_reg[15]_0 );
  output [15:0]DOADO;
  output [15:0]D;
  output [0:0]E;
  output Wr;
  output aux_finish_program_reg;
  output [0:0]DI;
  output [3:0]S;
  output [3:0]\ACC_reg[7] ;
  output [3:0]\ACC_reg[11] ;
  output [3:0]\ACC_reg[15] ;
  input clk_IBUF_BUFG;
  input ena;
  input [10:0]Q;
  input [15:0]data0;
  input [15:0]ram_data;
  input [14:0]\ACC_reg[15]_0 ;

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

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[0]_i_1 
       (.I0(data0[0]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[0]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[10]_i_1 
       (.I0(data0[10]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[10]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ACC[10]_i_2 
       (.I0(DOADO[13]),
        .I1(DOADO[14]),
        .I2(DOADO[15]),
        .O(\ACC[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \ACC[11]_i_1 
       (.I0(\ACC[15]_i_3_n_0 ),
        .I1(ram_data[11]),
        .I2(DOADO[13]),
        .I3(data0[11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hA808)) 
    \ACC[12]_i_1 
       (.I0(\ACC[15]_i_3_n_0 ),
        .I1(ram_data[12]),
        .I2(DOADO[13]),
        .I3(data0[12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hA808)) 
    \ACC[13]_i_1 
       (.I0(\ACC[15]_i_3_n_0 ),
        .I1(ram_data[13]),
        .I2(DOADO[13]),
        .I3(data0[13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hA808)) 
    \ACC[14]_i_1 
       (.I0(\ACC[15]_i_3_n_0 ),
        .I1(ram_data[14]),
        .I2(DOADO[13]),
        .I3(data0[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \ACC[15]_i_1 
       (.I0(DOADO[14]),
        .I1(DOADO[15]),
        .I2(DOADO[12]),
        .I3(DOADO[13]),
        .O(E));
  LUT4 #(
    .INIT(16'hA808)) 
    \ACC[15]_i_2 
       (.I0(\ACC[15]_i_3_n_0 ),
        .I1(ram_data[15]),
        .I2(DOADO[13]),
        .I3(data0[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \ACC[15]_i_3 
       (.I0(DOADO[11]),
        .I1(DOADO[15]),
        .I2(DOADO[14]),
        .I3(DOADO[13]),
        .I4(DOADO[12]),
        .O(\ACC[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[1]_i_1 
       (.I0(data0[1]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[1]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[2]_i_1 
       (.I0(data0[2]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[2]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[3]_i_1 
       (.I0(data0[3]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[3]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[4]_i_1 
       (.I0(data0[4]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[4]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[5]_i_1 
       (.I0(data0[5]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[5]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[6]_i_1 
       (.I0(data0[6]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[6]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[7]_i_1 
       (.I0(data0[7]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[7]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[8]_i_1 
       (.I0(data0[8]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[8]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ACC[9]_i_1 
       (.I0(data0[9]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(ram_data[9]),
        .I3(\ACC[15]_i_3_n_0 ),
        .I4(DOADO[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    aux_finish_program_i_2
       (.I0(DOADO[11]),
        .I1(DOADO[13]),
        .I2(DOADO[12]),
        .I3(DOADO[15]),
        .I4(DOADO[14]),
        .O(aux_finish_program_reg));
  LUT6 #(
    .INIT(64'hBF80734C407F8CB3)) 
    i__carry__0_i_1
       (.I0(DOADO[7]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[7]),
        .I4(DOADO[12]),
        .I5(\ACC_reg[15]_0 [6]),
        .O(\ACC_reg[7] [3]));
  LUT6 #(
    .INIT(64'hBF80734C407F8CB3)) 
    i__carry__0_i_2
       (.I0(DOADO[6]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[6]),
        .I4(DOADO[12]),
        .I5(\ACC_reg[15]_0 [5]),
        .O(\ACC_reg[7] [2]));
  LUT6 #(
    .INIT(64'hBF80734C407F8CB3)) 
    i__carry__0_i_3
       (.I0(DOADO[5]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[5]),
        .I4(DOADO[12]),
        .I5(\ACC_reg[15]_0 [4]),
        .O(\ACC_reg[7] [1]));
  LUT6 #(
    .INIT(64'hBF80734C407F8CB3)) 
    i__carry__0_i_4
       (.I0(DOADO[4]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[4]),
        .I4(DOADO[12]),
        .I5(\ACC_reg[15]_0 [3]),
        .O(\ACC_reg[7] [0]));
  LUT5 #(
    .INIT(32'h2ADAD525)) 
    i__carry__1_i_1
       (.I0(ram_data[11]),
        .I1(DOADO[11]),
        .I2(\ACC[10]_i_2_n_0 ),
        .I3(DOADO[12]),
        .I4(\ACC_reg[15]_0 [10]),
        .O(\ACC_reg[11] [3]));
  LUT6 #(
    .INIT(64'hBF80734C407F8CB3)) 
    i__carry__1_i_2
       (.I0(DOADO[10]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[10]),
        .I4(DOADO[12]),
        .I5(\ACC_reg[15]_0 [9]),
        .O(\ACC_reg[11] [2]));
  LUT6 #(
    .INIT(64'hBF80734C407F8CB3)) 
    i__carry__1_i_3
       (.I0(DOADO[9]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[9]),
        .I4(DOADO[12]),
        .I5(\ACC_reg[15]_0 [8]),
        .O(\ACC_reg[11] [1]));
  LUT6 #(
    .INIT(64'hBF80734C407F8CB3)) 
    i__carry__1_i_4
       (.I0(DOADO[8]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[8]),
        .I4(DOADO[12]),
        .I5(\ACC_reg[15]_0 [7]),
        .O(\ACC_reg[11] [0]));
  LUT5 #(
    .INIT(32'h2ADAD525)) 
    i__carry__2_i_1
       (.I0(ram_data[15]),
        .I1(DOADO[11]),
        .I2(\ACC[10]_i_2_n_0 ),
        .I3(DOADO[12]),
        .I4(\ACC_reg[15]_0 [14]),
        .O(\ACC_reg[15] [3]));
  LUT5 #(
    .INIT(32'h7D2282DD)) 
    i__carry__2_i_2
       (.I0(\ACC[10]_i_2_n_0 ),
        .I1(DOADO[12]),
        .I2(DOADO[11]),
        .I3(ram_data[14]),
        .I4(\ACC_reg[15]_0 [13]),
        .O(\ACC_reg[15] [2]));
  LUT5 #(
    .INIT(32'h2ADAD525)) 
    i__carry__2_i_3
       (.I0(ram_data[13]),
        .I1(DOADO[11]),
        .I2(\ACC[10]_i_2_n_0 ),
        .I3(DOADO[12]),
        .I4(\ACC_reg[15]_0 [12]),
        .O(\ACC_reg[15] [1]));
  LUT5 #(
    .INIT(32'h2ADAD525)) 
    i__carry__2_i_4
       (.I0(ram_data[12]),
        .I1(DOADO[11]),
        .I2(\ACC[10]_i_2_n_0 ),
        .I3(DOADO[12]),
        .I4(\ACC_reg[15]_0 [11]),
        .O(\ACC_reg[15] [0]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    i__carry_i_1
       (.I0(DOADO[12]),
        .I1(DOADO[13]),
        .I2(DOADO[14]),
        .I3(DOADO[15]),
        .O(DI));
  LUT6 #(
    .INIT(64'hBF80734C407F8CB3)) 
    i__carry_i_2
       (.I0(DOADO[3]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[3]),
        .I4(DOADO[12]),
        .I5(\ACC_reg[15]_0 [2]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hBF80734C407F8CB3)) 
    i__carry_i_3
       (.I0(DOADO[2]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[2]),
        .I4(DOADO[12]),
        .I5(\ACC_reg[15]_0 [1]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hBF80734C407F8CB3)) 
    i__carry_i_4
       (.I0(DOADO[1]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[1]),
        .I4(DOADO[12]),
        .I5(\ACC_reg[15]_0 [0]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    i__carry_i_5
       (.I0(DOADO[0]),
        .I1(\ACC[10]_i_2_n_0 ),
        .I2(DOADO[11]),
        .I3(ram_data[0]),
        .O(S[0]));
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
    .INIT(32'h00000002)) 
    ram_name_reg_i_2
       (.I0(DOADO[11]),
        .I1(DOADO[13]),
        .I2(DOADO[12]),
        .I3(DOADO[15]),
        .I4(DOADO[14]),
        .O(Wr));
endmodule

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

  wire BIP_enable;
  wire [15:0]In_Data;
  wire [15:0]Out_Data;
  wire [10:0]PC;
  wire [15:0]Program_Data;
  wire Program_memory_n_16;
  wire Program_memory_n_17;
  wire Program_memory_n_18;
  wire Program_memory_n_19;
  wire Program_memory_n_20;
  wire Program_memory_n_21;
  wire Program_memory_n_22;
  wire Program_memory_n_23;
  wire Program_memory_n_24;
  wire Program_memory_n_25;
  wire Program_memory_n_26;
  wire Program_memory_n_27;
  wire Program_memory_n_28;
  wire Program_memory_n_29;
  wire Program_memory_n_30;
  wire Program_memory_n_31;
  wire Program_memory_n_34;
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
  wire button;
  wire button_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]data0;
  wire [1:1]\datapath/Operation ;
  wire finish_program;
  wire reset;
  wire rx;
  wire rx_IBUF;
  wire tx;
  wire tx_OBUF;

  Data_memory Data_memory
       (.Addr(Program_Data[10:0]),
        .E(BIP_enable),
        .Q(In_Data),
        .WEA(WrRAM),
        .clk(clk_IBUF_BUFG),
        .ram_data(Out_Data));
  Program_memory Program_memory
       (.\ACC_reg[11] ({Program_memory_n_44,Program_memory_n_45,Program_memory_n_46,Program_memory_n_47}),
        .\ACC_reg[15] ({Program_memory_n_48,Program_memory_n_49,Program_memory_n_50,Program_memory_n_51}),
        .\ACC_reg[15]_0 (In_Data[15:1]),
        .\ACC_reg[7] ({Program_memory_n_40,Program_memory_n_41,Program_memory_n_42,Program_memory_n_43}),
        .D({Program_memory_n_16,Program_memory_n_17,Program_memory_n_18,Program_memory_n_19,Program_memory_n_20,Program_memory_n_21,Program_memory_n_22,Program_memory_n_23,Program_memory_n_24,Program_memory_n_25,Program_memory_n_26,Program_memory_n_27,Program_memory_n_28,Program_memory_n_29,Program_memory_n_30,Program_memory_n_31}),
        .DI(\datapath/Operation ),
        .DOADO(Program_Data),
        .E(WrAcc),
        .Q(PC),
        .S({Program_memory_n_36,Program_memory_n_37,Program_memory_n_38,Program_memory_n_39}),
        .Wr(WrRAM),
        .aux_finish_program_reg(Program_memory_n_34),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .ena(BIP_enable),
        .ram_data(Out_Data));
  CPU bip
       (.D({Program_memory_n_16,Program_memory_n_17,Program_memory_n_18,Program_memory_n_19,Program_memory_n_20,Program_memory_n_21,Program_memory_n_22,Program_memory_n_23,Program_memory_n_24,Program_memory_n_25,Program_memory_n_26,Program_memory_n_27,Program_memory_n_28,Program_memory_n_29,Program_memory_n_30,Program_memory_n_31}),
        .DI(\datapath/Operation ),
        .DOADO(Program_Data[15:11]),
        .E(WrAcc),
        .Q(In_Data),
        .S({Program_memory_n_36,Program_memory_n_37,Program_memory_n_38,Program_memory_n_39}),
        .button_OBUF(button_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .ena(BIP_enable),
        .finish_program(finish_program),
        .out(PC),
        .ram_name_reg({Program_memory_n_40,Program_memory_n_41,Program_memory_n_42,Program_memory_n_43}),
        .ram_name_reg_0({Program_memory_n_44,Program_memory_n_45,Program_memory_n_46,Program_memory_n_47}),
        .ram_name_reg_1({Program_memory_n_48,Program_memory_n_49,Program_memory_n_50,Program_memory_n_51}),
        .ram_name_reg_2(Program_memory_n_34));
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
       (.In_Data(In_Data),
        .button_OBUF(button_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ena(BIP_enable),
        .finish_program(finish_program),
        .out(PC),
        .rx_IBUF(rx_IBUF),
        .tx_OBUF(tx_OBUF));
endmodule

module UART
   (tx_OBUF,
    ena,
    clk_IBUF_BUFG,
    button_OBUF,
    finish_program,
    In_Data,
    out,
    rx_IBUF);
  output tx_OBUF;
  output ena;
  input clk_IBUF_BUFG;
  input button_OBUF;
  input finish_program;
  input [15:0]In_Data;
  input [10:0]out;
  input rx_IBUF;

  wire [15:0]In_Data;
  wire [7:7]b_next;
  wire button_OBUF;
  wire clk_IBUF_BUFG;
  wire ena;
  wire finish_program;
  wire int_n_0;
  wire int_n_10;
  wire int_n_11;
  wire int_n_13;
  wire int_n_3;
  wire int_n_4;
  wire int_n_5;
  wire int_n_6;
  wire int_n_7;
  wire int_n_8;
  wire int_n_9;
  wire is_s9_out;
  wire [10:0]out;
  wire rx_IBUF;
  wire rx_mod_n_0;
  wire rx_mod_n_1;
  wire rx_mod_n_2;
  wire rx_mod_n_3;
  wire rx_mod_n_4;
  wire s_tick;
  wire tx_OBUF;
  wire tx_mod_n_0;
  wire tx_mod_n_2;
  wire tx_mod_n_3;
  wire tx_start;

  br_generator br_g
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .s_tick(s_tick));
  interface int
       (.D(b_next),
        .\FSM_sequential_state_reg_reg[1] (tx_mod_n_0),
        .In_Data(In_Data),
        .\aux_PC_reg[10] (out),
        .\aux_reg[15]_P_0 (int_n_13),
        .\b_reg_reg[0] (int_n_9),
        .\b_reg_reg[1] (int_n_8),
        .\b_reg_reg[2] (int_n_7),
        .\b_reg_reg[3] (int_n_6),
        .\b_reg_reg[3]_0 (rx_mod_n_3),
        .\b_reg_reg[3]_1 (rx_mod_n_4),
        .\b_reg_reg[4] (int_n_5),
        .\b_reg_reg[5] (int_n_4),
        .\b_reg_reg[5]_0 (rx_mod_n_1),
        .\b_reg_reg[6] (int_n_3),
        .button_OBUF(button_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ena(ena),
        .finish_program(finish_program),
        .is_s9_out(is_s9_out),
        .is_s_reg_0(int_n_0),
        .out(rx_mod_n_0),
        .\s_reg_reg[2] (rx_mod_n_2),
        .\state_reg_reg[2]_0 (int_n_10),
        .\state_reg_reg[2]_1 (int_n_11),
        .tick_reg(tx_mod_n_3),
        .tick_reg_0(tx_mod_n_2),
        .tx_start(tx_start));
  rx_module rx_mod
       (.\FSM_sequential_state_reg_reg[0]_0 (rx_mod_n_2),
        .aux_BIP_reg(rx_mod_n_4),
        .button_OBUF(button_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .is_s9_out(is_s9_out),
        .is_s_reg(rx_mod_n_1),
        .is_s_reg_0(rx_mod_n_3),
        .is_s_reg_1(int_n_0),
        .out(rx_mod_n_0),
        .rx_IBUF(rx_IBUF),
        .s_tick(s_tick),
        .\state_reg_reg[0] (int_n_10),
        .\state_reg_reg[2] (int_n_11));
  tx_module tx_mod
       (.D(b_next),
        .acc_sended_reg_P(tx_mod_n_2),
        .button_OBUF(button_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(tx_mod_n_0),
        .\out_reg[0]_P (int_n_9),
        .\out_reg[0]_P_0 (int_n_13),
        .\out_reg[1]_P (int_n_8),
        .\out_reg[2]_P (int_n_7),
        .\out_reg[3]_P (int_n_6),
        .\out_reg[4]_P (int_n_5),
        .\out_reg[5]_P (int_n_4),
        .\out_reg[6]_P (int_n_3),
        .s_tick(s_tick),
        .\state_reg_reg[2] (tx_mod_n_3),
        .tx_OBUF(tx_OBUF),
        .tx_start(tx_start));
endmodule

module br_generator
   (s_tick,
    clk_IBUF_BUFG);
  output s_tick;
  input clk_IBUF_BUFG;

  wire [7:0]ciclos;
  wire \ciclos[1]_i_1_n_0 ;
  wire \ciclos[2]_i_1_n_0 ;
  wire \ciclos[3]_i_1_n_0 ;
  wire \ciclos[4]_i_1_n_0 ;
  wire \ciclos[5]_i_1_n_0 ;
  wire \ciclos[6]_i_1_n_0 ;
  wire \ciclos[6]_i_2_n_0 ;
  wire \ciclos[7]_i_1_n_0 ;
  wire \ciclos[7]_i_2_n_0 ;
  wire \ciclos[7]_i_3_n_0 ;
  wire [0:0]ciclos_0;
  wire clk_IBUF_BUFG;
  wire s_tick;

  LUT1 #(
    .INIT(2'h1)) 
    \ciclos[0]_i_1 
       (.I0(ciclos[0]),
        .O(ciclos_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciclos[1]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .O(\ciclos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
        .O(\ciclos[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ciclos[4]_i_1 
       (.I0(ciclos[0]),
        .I1(ciclos[1]),
        .I2(ciclos[2]),
        .I3(ciclos[3]),
        .I4(ciclos[4]),
        .O(\ciclos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ciclos[5]_i_1 
       (.I0(ciclos[2]),
        .I1(ciclos[3]),
        .I2(ciclos[4]),
        .I3(ciclos[1]),
        .I4(ciclos[0]),
        .I5(ciclos[5]),
        .O(\ciclos[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \ciclos[6]_i_1 
       (.I0(\ciclos[6]_i_2_n_0 ),
        .I1(ciclos[5]),
        .I2(ciclos[3]),
        .I3(ciclos[2]),
        .I4(ciclos[4]),
        .I5(ciclos[6]),
        .O(\ciclos[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
        .O(\ciclos[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
        .D(\ciclos[1]_i_1_n_0 ),
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
        .D(\ciclos[3]_i_1_n_0 ),
        .Q(ciclos[3]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[4]_i_1_n_0 ),
        .Q(ciclos[4]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[5]_i_1_n_0 ),
        .Q(ciclos[5]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[6]_i_1_n_0 ),
        .Q(ciclos[6]),
        .R(\ciclos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ciclos_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ciclos[7]_i_2_n_0 ),
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

module interface
   (is_s_reg_0,
    ena,
    tx_start,
    \b_reg_reg[6] ,
    \b_reg_reg[5] ,
    \b_reg_reg[4] ,
    \b_reg_reg[3] ,
    \b_reg_reg[2] ,
    \b_reg_reg[1] ,
    \b_reg_reg[0] ,
    \state_reg_reg[2]_0 ,
    \state_reg_reg[2]_1 ,
    is_s9_out,
    \aux_reg[15]_P_0 ,
    D,
    \b_reg_reg[3]_0 ,
    clk_IBUF_BUFG,
    \b_reg_reg[3]_1 ,
    \s_reg_reg[2] ,
    out,
    button_OBUF,
    \b_reg_reg[5]_0 ,
    tick_reg,
    finish_program,
    tick_reg_0,
    In_Data,
    \aux_PC_reg[10] ,
    \FSM_sequential_state_reg_reg[1] );
  output is_s_reg_0;
  output ena;
  output tx_start;
  output \b_reg_reg[6] ;
  output \b_reg_reg[5] ;
  output \b_reg_reg[4] ;
  output \b_reg_reg[3] ;
  output \b_reg_reg[2] ;
  output \b_reg_reg[1] ;
  output \b_reg_reg[0] ;
  output \state_reg_reg[2]_0 ;
  output \state_reg_reg[2]_1 ;
  output is_s9_out;
  output \aux_reg[15]_P_0 ;
  output [0:0]D;
  input \b_reg_reg[3]_0 ;
  input clk_IBUF_BUFG;
  input \b_reg_reg[3]_1 ;
  input \s_reg_reg[2] ;
  input [0:0]out;
  input button_OBUF;
  input \b_reg_reg[5]_0 ;
  input tick_reg;
  input finish_program;
  input tick_reg_0;
  input [15:0]In_Data;
  input [10:0]\aux_PC_reg[10] ;
  input [0:0]\FSM_sequential_state_reg_reg[1] ;

  wire [0:0]D;
  wire [0:0]\FSM_sequential_state_reg_reg[1] ;
  wire [15:0]In_Data;
  wire acc_sended_P_i_1_n_0;
  wire acc_sended_P_i_2_n_0;
  wire acc_sended_reg_P_n_0;
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
  wire aux0__0_i_9_n_1;
  wire aux0__0_i_9_n_2;
  wire aux0__0_i_9_n_3;
  wire aux0__0_n_0;
  wire aux0__0_n_1;
  wire aux0__0_n_2;
  wire aux0__0_n_3;
  wire aux0__0_n_4;
  wire aux0__0_n_5;
  wire aux0__0_n_6;
  wire aux0__0_n_7;
  wire aux0__10_i_1_n_0;
  wire aux0__10_i_2_n_0;
  wire aux0__10_i_3_n_0;
  wire aux0__10_i_4_n_0;
  wire aux0__10_n_0;
  wire aux0__10_n_1;
  wire aux0__10_n_2;
  wire aux0__10_n_3;
  wire aux0__10_n_4;
  wire aux0__10_n_5;
  wire aux0__10_n_6;
  wire aux0__10_n_7;
  wire aux0__11_i_1_n_0;
  wire aux0__11_i_2_n_0;
  wire aux0__11_i_3_n_0;
  wire aux0__11_i_4_n_0;
  wire aux0__11_n_0;
  wire aux0__11_n_1;
  wire aux0__11_n_2;
  wire aux0__11_n_3;
  wire aux0__11_n_4;
  wire aux0__11_n_5;
  wire aux0__11_n_6;
  wire aux0__11_n_7;
  wire aux0__12_i_1_n_0;
  wire aux0__12_i_2_n_0;
  wire aux0__12_i_3_n_0;
  wire aux0__12_i_4_n_0;
  wire aux0__12_n_0;
  wire aux0__12_n_1;
  wire aux0__12_n_2;
  wire aux0__12_n_3;
  wire aux0__12_n_4;
  wire aux0__12_n_5;
  wire aux0__12_n_6;
  wire aux0__12_n_7;
  wire aux0__13_i_1_n_0;
  wire aux0__13_i_2_n_0;
  wire aux0__13_n_2;
  wire aux0__13_n_3;
  wire aux0__13_n_7;
  wire aux0__14_i_1_n_0;
  wire aux0__14_i_2_n_0;
  wire aux0__14_i_3_n_0;
  wire aux0__14_i_4_n_0;
  wire aux0__14_i_5_n_0;
  wire aux0__14_n_0;
  wire aux0__14_n_1;
  wire aux0__14_n_2;
  wire aux0__14_n_3;
  wire aux0__14_n_4;
  wire aux0__14_n_5;
  wire aux0__14_n_6;
  wire aux0__14_n_7;
  wire aux0__15_i_1_n_0;
  wire aux0__15_i_2_n_0;
  wire aux0__15_i_3_n_0;
  wire aux0__15_i_4_n_0;
  wire aux0__15_n_0;
  wire aux0__15_n_1;
  wire aux0__15_n_2;
  wire aux0__15_n_3;
  wire aux0__15_n_4;
  wire aux0__15_n_5;
  wire aux0__15_n_6;
  wire aux0__15_n_7;
  wire aux0__16_i_1_n_0;
  wire aux0__16_i_2_n_0;
  wire aux0__16_i_3_n_0;
  wire aux0__16_i_4_n_0;
  wire aux0__16_n_0;
  wire aux0__16_n_1;
  wire aux0__16_n_2;
  wire aux0__16_n_3;
  wire aux0__16_n_4;
  wire aux0__16_n_5;
  wire aux0__16_n_6;
  wire aux0__16_n_7;
  wire aux0__17_i_1_n_0;
  wire aux0__17_i_2_n_0;
  wire aux0__17_i_3_n_0;
  wire aux0__17_i_4_n_0;
  wire aux0__17_n_0;
  wire aux0__17_n_1;
  wire aux0__17_n_2;
  wire aux0__17_n_3;
  wire aux0__17_n_4;
  wire aux0__17_n_5;
  wire aux0__17_n_6;
  wire aux0__17_n_7;
  wire aux0__18_i_1_n_0;
  wire aux0__18_i_2_n_0;
  wire aux0__18_n_2;
  wire aux0__18_n_3;
  wire aux0__18_n_7;
  wire aux0__19_i_1_n_0;
  wire aux0__19_i_2_n_0;
  wire aux0__19_i_3_n_0;
  wire aux0__19_i_4_n_0;
  wire aux0__19_i_5_n_0;
  wire aux0__19_n_0;
  wire aux0__19_n_1;
  wire aux0__19_n_2;
  wire aux0__19_n_3;
  wire aux0__19_n_4;
  wire aux0__19_n_5;
  wire aux0__19_n_6;
  wire aux0__19_n_7;
  wire aux0__1_i_10_n_0;
  wire aux0__1_i_11_n_0;
  wire aux0__1_i_1_n_0;
  wire aux0__1_i_2_n_0;
  wire aux0__1_i_3_n_0;
  wire aux0__1_i_4_n_0;
  wire aux0__1_i_5_n_0;
  wire aux0__1_i_6_n_0;
  wire aux0__1_i_7_n_0;
  wire aux0__1_i_8_n_0;
  wire aux0__1_i_9_n_0;
  wire aux0__1_i_9_n_1;
  wire aux0__1_i_9_n_2;
  wire aux0__1_i_9_n_3;
  wire aux0__1_n_0;
  wire aux0__1_n_1;
  wire aux0__1_n_2;
  wire aux0__1_n_3;
  wire aux0__1_n_4;
  wire aux0__1_n_5;
  wire aux0__1_n_6;
  wire aux0__1_n_7;
  wire aux0__20_i_1_n_0;
  wire aux0__20_i_2_n_0;
  wire aux0__20_i_3_n_0;
  wire aux0__20_i_4_n_0;
  wire aux0__20_n_0;
  wire aux0__20_n_1;
  wire aux0__20_n_2;
  wire aux0__20_n_3;
  wire aux0__20_n_4;
  wire aux0__20_n_5;
  wire aux0__20_n_6;
  wire aux0__20_n_7;
  wire aux0__21_i_1_n_0;
  wire aux0__21_i_2_n_0;
  wire aux0__21_i_3_n_0;
  wire aux0__21_i_4_n_0;
  wire aux0__21_n_0;
  wire aux0__21_n_1;
  wire aux0__21_n_2;
  wire aux0__21_n_3;
  wire aux0__21_n_4;
  wire aux0__21_n_5;
  wire aux0__21_n_6;
  wire aux0__21_n_7;
  wire aux0__22_i_1_n_0;
  wire aux0__22_i_2_n_0;
  wire aux0__22_i_3_n_0;
  wire aux0__22_i_4_n_0;
  wire aux0__22_n_0;
  wire aux0__22_n_1;
  wire aux0__22_n_2;
  wire aux0__22_n_3;
  wire aux0__22_n_4;
  wire aux0__22_n_5;
  wire aux0__22_n_6;
  wire aux0__22_n_7;
  wire aux0__23_i_1_n_0;
  wire aux0__23_i_2_n_0;
  wire aux0__23_n_2;
  wire aux0__23_n_3;
  wire aux0__23_n_7;
  wire aux0__24_i_1_n_0;
  wire aux0__24_i_2_n_0;
  wire aux0__24_i_3_n_0;
  wire aux0__24_i_4_n_0;
  wire aux0__24_i_5_n_0;
  wire aux0__24_n_0;
  wire aux0__24_n_1;
  wire aux0__24_n_2;
  wire aux0__24_n_3;
  wire aux0__24_n_4;
  wire aux0__24_n_5;
  wire aux0__24_n_6;
  wire aux0__24_n_7;
  wire aux0__25_i_1_n_0;
  wire aux0__25_i_2_n_0;
  wire aux0__25_i_3_n_0;
  wire aux0__25_i_4_n_0;
  wire aux0__25_n_0;
  wire aux0__25_n_1;
  wire aux0__25_n_2;
  wire aux0__25_n_3;
  wire aux0__25_n_4;
  wire aux0__25_n_5;
  wire aux0__25_n_6;
  wire aux0__25_n_7;
  wire aux0__26_i_1_n_0;
  wire aux0__26_i_2_n_0;
  wire aux0__26_i_3_n_0;
  wire aux0__26_i_4_n_0;
  wire aux0__26_n_0;
  wire aux0__26_n_1;
  wire aux0__26_n_2;
  wire aux0__26_n_3;
  wire aux0__26_n_4;
  wire aux0__26_n_5;
  wire aux0__26_n_6;
  wire aux0__26_n_7;
  wire aux0__27_i_1_n_0;
  wire aux0__27_i_2_n_0;
  wire aux0__27_i_3_n_0;
  wire aux0__27_i_4_n_0;
  wire aux0__27_n_0;
  wire aux0__27_n_1;
  wire aux0__27_n_2;
  wire aux0__27_n_3;
  wire aux0__27_n_4;
  wire aux0__27_n_5;
  wire aux0__27_n_6;
  wire aux0__27_n_7;
  wire aux0__28_i_1_n_0;
  wire aux0__28_i_2_n_0;
  wire aux0__28_n_2;
  wire aux0__28_n_3;
  wire aux0__28_n_7;
  wire aux0__29_i_1_n_0;
  wire aux0__29_i_2_n_0;
  wire aux0__29_i_3_n_0;
  wire aux0__29_i_4_n_0;
  wire aux0__29_i_5_n_0;
  wire aux0__29_n_0;
  wire aux0__29_n_1;
  wire aux0__29_n_2;
  wire aux0__29_n_3;
  wire aux0__29_n_4;
  wire aux0__29_n_5;
  wire aux0__29_n_6;
  wire aux0__29_n_7;
  wire aux0__2_i_1_n_0;
  wire aux0__2_i_2_n_0;
  wire aux0__2_i_3_n_0;
  wire aux0__2_i_4_n_0;
  wire aux0__2_i_5_n_0;
  wire aux0__2_i_6_n_0;
  wire aux0__2_i_7_n_0;
  wire aux0__2_i_8_n_0;
  wire aux0__2_n_0;
  wire aux0__2_n_1;
  wire aux0__2_n_2;
  wire aux0__2_n_3;
  wire aux0__2_n_4;
  wire aux0__2_n_5;
  wire aux0__2_n_6;
  wire aux0__2_n_7;
  wire aux0__30_i_1_n_0;
  wire aux0__30_i_2_n_0;
  wire aux0__30_i_3_n_0;
  wire aux0__30_i_4_n_0;
  wire aux0__30_n_0;
  wire aux0__30_n_1;
  wire aux0__30_n_2;
  wire aux0__30_n_3;
  wire aux0__30_n_4;
  wire aux0__30_n_5;
  wire aux0__30_n_6;
  wire aux0__30_n_7;
  wire aux0__31_i_1_n_0;
  wire aux0__31_i_2_n_0;
  wire aux0__31_i_3_n_0;
  wire aux0__31_i_4_n_0;
  wire aux0__31_n_0;
  wire aux0__31_n_1;
  wire aux0__31_n_2;
  wire aux0__31_n_3;
  wire aux0__31_n_4;
  wire aux0__31_n_5;
  wire aux0__31_n_6;
  wire aux0__31_n_7;
  wire aux0__32_i_1_n_0;
  wire aux0__32_i_2_n_0;
  wire aux0__32_i_3_n_0;
  wire aux0__32_i_4_n_0;
  wire aux0__32_n_0;
  wire aux0__32_n_1;
  wire aux0__32_n_2;
  wire aux0__32_n_3;
  wire aux0__32_n_4;
  wire aux0__32_n_5;
  wire aux0__32_n_6;
  wire aux0__32_n_7;
  wire aux0__33_i_1_n_0;
  wire aux0__33_i_2_n_0;
  wire aux0__33_n_2;
  wire aux0__33_n_3;
  wire aux0__33_n_7;
  wire aux0__34_i_1_n_0;
  wire aux0__34_i_2_n_0;
  wire aux0__34_i_3_n_0;
  wire aux0__34_i_4_n_0;
  wire aux0__34_i_5_n_0;
  wire aux0__34_n_0;
  wire aux0__34_n_1;
  wire aux0__34_n_2;
  wire aux0__34_n_3;
  wire aux0__34_n_4;
  wire aux0__34_n_5;
  wire aux0__34_n_6;
  wire aux0__34_n_7;
  wire aux0__35_i_1_n_0;
  wire aux0__35_i_2_n_0;
  wire aux0__35_i_3_n_0;
  wire aux0__35_i_4_n_0;
  wire aux0__35_n_0;
  wire aux0__35_n_1;
  wire aux0__35_n_2;
  wire aux0__35_n_3;
  wire aux0__35_n_4;
  wire aux0__35_n_5;
  wire aux0__35_n_6;
  wire aux0__35_n_7;
  wire aux0__36_i_1_n_0;
  wire aux0__36_i_2_n_0;
  wire aux0__36_i_3_n_0;
  wire aux0__36_i_4_n_0;
  wire aux0__36_n_0;
  wire aux0__36_n_1;
  wire aux0__36_n_2;
  wire aux0__36_n_3;
  wire aux0__36_n_4;
  wire aux0__36_n_5;
  wire aux0__36_n_6;
  wire aux0__36_n_7;
  wire aux0__37_i_1_n_0;
  wire aux0__37_i_2_n_0;
  wire aux0__37_i_3_n_0;
  wire aux0__37_i_4_n_0;
  wire aux0__37_n_0;
  wire aux0__37_n_1;
  wire aux0__37_n_2;
  wire aux0__37_n_3;
  wire aux0__37_n_4;
  wire aux0__37_n_5;
  wire aux0__37_n_6;
  wire aux0__37_n_7;
  wire aux0__38_i_1_n_0;
  wire aux0__38_i_2_n_0;
  wire aux0__38_n_2;
  wire aux0__38_n_3;
  wire aux0__38_n_7;
  wire aux0__39_i_1_n_0;
  wire aux0__39_i_2_n_0;
  wire aux0__39_i_3_n_0;
  wire aux0__39_i_4_n_0;
  wire aux0__39_i_5_n_0;
  wire aux0__39_n_0;
  wire aux0__39_n_1;
  wire aux0__39_n_2;
  wire aux0__39_n_3;
  wire aux0__39_n_4;
  wire aux0__39_n_5;
  wire aux0__39_n_6;
  wire aux0__39_n_7;
  wire aux0__3_i_1_n_0;
  wire aux0__3_i_2_n_0;
  wire aux0__3_n_2;
  wire aux0__3_n_7;
  wire aux0__40_i_1_n_0;
  wire aux0__40_i_2_n_0;
  wire aux0__40_i_3_n_0;
  wire aux0__40_i_4_n_0;
  wire aux0__40_n_0;
  wire aux0__40_n_1;
  wire aux0__40_n_2;
  wire aux0__40_n_3;
  wire aux0__40_n_4;
  wire aux0__40_n_5;
  wire aux0__40_n_6;
  wire aux0__40_n_7;
  wire aux0__41_i_1_n_0;
  wire aux0__41_i_2_n_0;
  wire aux0__41_i_3_n_0;
  wire aux0__41_i_4_n_0;
  wire aux0__41_n_0;
  wire aux0__41_n_1;
  wire aux0__41_n_2;
  wire aux0__41_n_3;
  wire aux0__41_n_4;
  wire aux0__41_n_5;
  wire aux0__41_n_6;
  wire aux0__41_n_7;
  wire aux0__42_i_1_n_0;
  wire aux0__42_i_2_n_0;
  wire aux0__42_i_3_n_0;
  wire aux0__42_i_4_n_0;
  wire aux0__42_n_0;
  wire aux0__42_n_1;
  wire aux0__42_n_2;
  wire aux0__42_n_3;
  wire aux0__42_n_4;
  wire aux0__42_n_5;
  wire aux0__42_n_6;
  wire aux0__42_n_7;
  wire aux0__43_i_1_n_0;
  wire aux0__43_i_2_n_0;
  wire aux0__43_n_2;
  wire aux0__43_n_3;
  wire aux0__43_n_7;
  wire aux0__44_i_1_n_0;
  wire aux0__44_i_2_n_0;
  wire aux0__44_i_3_n_0;
  wire aux0__44_i_4_n_0;
  wire aux0__44_i_5_n_0;
  wire aux0__44_n_0;
  wire aux0__44_n_1;
  wire aux0__44_n_2;
  wire aux0__44_n_3;
  wire aux0__44_n_4;
  wire aux0__44_n_5;
  wire aux0__44_n_6;
  wire aux0__44_n_7;
  wire aux0__45_i_1_n_0;
  wire aux0__45_i_2_n_0;
  wire aux0__45_i_3_n_0;
  wire aux0__45_i_4_n_0;
  wire aux0__45_n_0;
  wire aux0__45_n_1;
  wire aux0__45_n_2;
  wire aux0__45_n_3;
  wire aux0__45_n_4;
  wire aux0__45_n_5;
  wire aux0__45_n_6;
  wire aux0__45_n_7;
  wire aux0__46_i_1_n_0;
  wire aux0__46_i_2_n_0;
  wire aux0__46_i_3_n_0;
  wire aux0__46_i_4_n_0;
  wire aux0__46_n_0;
  wire aux0__46_n_1;
  wire aux0__46_n_2;
  wire aux0__46_n_3;
  wire aux0__46_n_4;
  wire aux0__46_n_5;
  wire aux0__46_n_6;
  wire aux0__46_n_7;
  wire aux0__47_i_1_n_0;
  wire aux0__47_i_2_n_0;
  wire aux0__47_i_3_n_0;
  wire aux0__47_i_4_n_0;
  wire aux0__47_n_0;
  wire aux0__47_n_1;
  wire aux0__47_n_2;
  wire aux0__47_n_3;
  wire aux0__47_n_4;
  wire aux0__47_n_5;
  wire aux0__47_n_6;
  wire aux0__47_n_7;
  wire aux0__48_i_1_n_0;
  wire aux0__48_i_2_n_0;
  wire aux0__48_n_2;
  wire aux0__48_n_3;
  wire aux0__48_n_7;
  wire aux0__49_i_1_n_0;
  wire aux0__49_i_2_n_0;
  wire aux0__49_i_3_n_0;
  wire aux0__49_i_4_n_0;
  wire aux0__49_i_5_n_0;
  wire aux0__49_n_0;
  wire aux0__49_n_1;
  wire aux0__49_n_2;
  wire aux0__49_n_3;
  wire aux0__49_n_4;
  wire aux0__49_n_5;
  wire aux0__49_n_6;
  wire aux0__49_n_7;
  wire aux0__4_i_1_n_0;
  wire aux0__4_i_2_n_0;
  wire aux0__4_i_3_n_0;
  wire aux0__4_i_4_n_0;
  wire aux0__4_n_0;
  wire aux0__4_n_1;
  wire aux0__4_n_2;
  wire aux0__4_n_3;
  wire aux0__4_n_4;
  wire aux0__4_n_5;
  wire aux0__4_n_6;
  wire aux0__4_n_7;
  wire aux0__50_i_1_n_0;
  wire aux0__50_i_2_n_0;
  wire aux0__50_i_3_n_0;
  wire aux0__50_i_4_n_0;
  wire aux0__50_n_0;
  wire aux0__50_n_1;
  wire aux0__50_n_2;
  wire aux0__50_n_3;
  wire aux0__50_n_4;
  wire aux0__50_n_5;
  wire aux0__50_n_6;
  wire aux0__50_n_7;
  wire aux0__51_i_1_n_0;
  wire aux0__51_i_2_n_0;
  wire aux0__51_i_3_n_0;
  wire aux0__51_i_4_n_0;
  wire aux0__51_n_0;
  wire aux0__51_n_1;
  wire aux0__51_n_2;
  wire aux0__51_n_3;
  wire aux0__51_n_4;
  wire aux0__51_n_5;
  wire aux0__51_n_6;
  wire aux0__51_n_7;
  wire aux0__52_i_1_n_0;
  wire aux0__52_i_2_n_0;
  wire aux0__52_i_3_n_0;
  wire aux0__52_i_4_n_0;
  wire aux0__52_n_0;
  wire aux0__52_n_1;
  wire aux0__52_n_2;
  wire aux0__52_n_3;
  wire aux0__52_n_4;
  wire aux0__52_n_5;
  wire aux0__52_n_6;
  wire aux0__52_n_7;
  wire aux0__53_i_1_n_0;
  wire aux0__53_i_2_n_0;
  wire aux0__53_n_2;
  wire aux0__53_n_3;
  wire aux0__53_n_7;
  wire aux0__54_i_1_n_0;
  wire aux0__54_i_2_n_0;
  wire aux0__54_i_3_n_0;
  wire aux0__54_i_4_n_0;
  wire aux0__54_i_5_n_0;
  wire aux0__54_n_0;
  wire aux0__54_n_1;
  wire aux0__54_n_2;
  wire aux0__54_n_3;
  wire aux0__54_n_4;
  wire aux0__54_n_5;
  wire aux0__54_n_6;
  wire aux0__54_n_7;
  wire aux0__55_i_1_n_0;
  wire aux0__55_i_2_n_0;
  wire aux0__55_i_3_n_0;
  wire aux0__55_i_4_n_0;
  wire aux0__55_n_0;
  wire aux0__55_n_1;
  wire aux0__55_n_2;
  wire aux0__55_n_3;
  wire aux0__55_n_4;
  wire aux0__55_n_5;
  wire aux0__55_n_6;
  wire aux0__55_n_7;
  wire aux0__56_i_1_n_0;
  wire aux0__56_i_2_n_0;
  wire aux0__56_i_3_n_0;
  wire aux0__56_i_4_n_0;
  wire aux0__56_n_0;
  wire aux0__56_n_1;
  wire aux0__56_n_2;
  wire aux0__56_n_3;
  wire aux0__56_n_4;
  wire aux0__56_n_5;
  wire aux0__56_n_6;
  wire aux0__56_n_7;
  wire aux0__57_i_1_n_0;
  wire aux0__57_i_2_n_0;
  wire aux0__57_i_3_n_0;
  wire aux0__57_i_4_n_0;
  wire aux0__57_n_0;
  wire aux0__57_n_1;
  wire aux0__57_n_2;
  wire aux0__57_n_3;
  wire aux0__57_n_4;
  wire aux0__57_n_5;
  wire aux0__57_n_6;
  wire aux0__57_n_7;
  wire aux0__58_i_1_n_0;
  wire aux0__58_i_2_n_0;
  wire aux0__58_n_2;
  wire aux0__58_n_3;
  wire aux0__58_n_7;
  wire aux0__59_i_1_n_0;
  wire aux0__59_i_2_n_0;
  wire aux0__59_i_3_n_0;
  wire aux0__59_i_4_n_0;
  wire aux0__59_i_5_n_0;
  wire aux0__59_n_0;
  wire aux0__59_n_1;
  wire aux0__59_n_2;
  wire aux0__59_n_3;
  wire aux0__59_n_4;
  wire aux0__59_n_5;
  wire aux0__59_n_6;
  wire aux0__59_n_7;
  wire aux0__5_i_1_n_0;
  wire aux0__5_i_2_n_0;
  wire aux0__5_i_3_n_0;
  wire aux0__5_i_4_n_0;
  wire aux0__5_n_0;
  wire aux0__5_n_1;
  wire aux0__5_n_2;
  wire aux0__5_n_3;
  wire aux0__5_n_4;
  wire aux0__5_n_5;
  wire aux0__5_n_6;
  wire aux0__5_n_7;
  wire aux0__60_i_1_n_0;
  wire aux0__60_i_2_n_0;
  wire aux0__60_i_3_n_0;
  wire aux0__60_i_4_n_0;
  wire aux0__60_n_0;
  wire aux0__60_n_1;
  wire aux0__60_n_2;
  wire aux0__60_n_3;
  wire aux0__60_n_4;
  wire aux0__60_n_5;
  wire aux0__60_n_6;
  wire aux0__60_n_7;
  wire aux0__61_i_1_n_0;
  wire aux0__61_i_2_n_0;
  wire aux0__61_i_3_n_0;
  wire aux0__61_i_4_n_0;
  wire aux0__61_n_0;
  wire aux0__61_n_1;
  wire aux0__61_n_2;
  wire aux0__61_n_3;
  wire aux0__61_n_4;
  wire aux0__61_n_5;
  wire aux0__61_n_6;
  wire aux0__61_n_7;
  wire aux0__62_i_1_n_0;
  wire aux0__62_i_2_n_0;
  wire aux0__62_i_3_n_0;
  wire aux0__62_i_4_n_0;
  wire aux0__62_n_0;
  wire aux0__62_n_1;
  wire aux0__62_n_2;
  wire aux0__62_n_3;
  wire aux0__62_n_4;
  wire aux0__62_n_5;
  wire aux0__62_n_6;
  wire aux0__62_n_7;
  wire aux0__63_i_1_n_0;
  wire aux0__63_i_2_n_0;
  wire aux0__63_n_2;
  wire aux0__63_n_3;
  wire aux0__63_n_7;
  wire aux0__64_i_1_n_0;
  wire aux0__64_i_2_n_0;
  wire aux0__64_i_3_n_0;
  wire aux0__64_i_4_n_0;
  wire aux0__64_i_5_n_0;
  wire aux0__64_n_0;
  wire aux0__64_n_1;
  wire aux0__64_n_2;
  wire aux0__64_n_3;
  wire aux0__64_n_4;
  wire aux0__64_n_5;
  wire aux0__64_n_6;
  wire aux0__64_n_7;
  wire aux0__65_i_1_n_0;
  wire aux0__65_i_2_n_0;
  wire aux0__65_i_3_n_0;
  wire aux0__65_i_4_n_0;
  wire aux0__65_n_0;
  wire aux0__65_n_1;
  wire aux0__65_n_2;
  wire aux0__65_n_3;
  wire aux0__65_n_4;
  wire aux0__65_n_5;
  wire aux0__65_n_6;
  wire aux0__65_n_7;
  wire aux0__66_i_1_n_0;
  wire aux0__66_i_2_n_0;
  wire aux0__66_i_3_n_0;
  wire aux0__66_i_4_n_0;
  wire aux0__66_n_0;
  wire aux0__66_n_1;
  wire aux0__66_n_2;
  wire aux0__66_n_3;
  wire aux0__66_n_4;
  wire aux0__66_n_5;
  wire aux0__66_n_6;
  wire aux0__66_n_7;
  wire aux0__67_i_1_n_0;
  wire aux0__67_i_2_n_0;
  wire aux0__67_i_3_n_0;
  wire aux0__67_i_4_n_0;
  wire aux0__67_n_0;
  wire aux0__67_n_1;
  wire aux0__67_n_2;
  wire aux0__67_n_3;
  wire aux0__67_n_4;
  wire aux0__67_n_5;
  wire aux0__67_n_6;
  wire aux0__67_n_7;
  wire aux0__68_i_1_n_0;
  wire aux0__68_i_2_n_0;
  wire aux0__68_n_2;
  wire aux0__68_n_3;
  wire aux0__68_n_7;
  wire aux0__69_i_1_n_0;
  wire aux0__69_i_2_n_0;
  wire aux0__69_i_3_n_0;
  wire aux0__69_i_4_n_0;
  wire aux0__69_i_5_n_0;
  wire aux0__69_n_0;
  wire aux0__69_n_1;
  wire aux0__69_n_2;
  wire aux0__69_n_3;
  wire aux0__69_n_4;
  wire aux0__69_n_5;
  wire aux0__69_n_6;
  wire aux0__69_n_7;
  wire aux0__6_i_1_n_0;
  wire aux0__6_i_2_n_0;
  wire aux0__6_i_3_n_0;
  wire aux0__6_i_4_n_0;
  wire aux0__6_n_0;
  wire aux0__6_n_1;
  wire aux0__6_n_2;
  wire aux0__6_n_3;
  wire aux0__6_n_4;
  wire aux0__6_n_5;
  wire aux0__6_n_6;
  wire aux0__6_n_7;
  wire aux0__70_i_1_n_0;
  wire aux0__70_i_2_n_0;
  wire aux0__70_i_3_n_0;
  wire aux0__70_i_4_n_0;
  wire aux0__70_n_0;
  wire aux0__70_n_1;
  wire aux0__70_n_2;
  wire aux0__70_n_3;
  wire aux0__70_n_4;
  wire aux0__70_n_5;
  wire aux0__70_n_6;
  wire aux0__70_n_7;
  wire aux0__71_i_1_n_0;
  wire aux0__71_i_2_n_0;
  wire aux0__71_i_3_n_0;
  wire aux0__71_i_4_n_0;
  wire aux0__71_n_0;
  wire aux0__71_n_1;
  wire aux0__71_n_2;
  wire aux0__71_n_3;
  wire aux0__71_n_4;
  wire aux0__71_n_5;
  wire aux0__71_n_6;
  wire aux0__71_n_7;
  wire aux0__72_i_1_n_0;
  wire aux0__72_i_2_n_0;
  wire aux0__72_i_3_n_0;
  wire aux0__72_i_4_n_0;
  wire aux0__72_n_0;
  wire aux0__72_n_1;
  wire aux0__72_n_2;
  wire aux0__72_n_3;
  wire aux0__72_n_4;
  wire aux0__72_n_5;
  wire aux0__72_n_6;
  wire aux0__72_n_7;
  wire aux0__73_i_1_n_0;
  wire aux0__73_i_2_n_0;
  wire aux0__73_n_2;
  wire aux0__73_n_3;
  wire aux0__73_n_7;
  wire aux0__74_i_1_n_0;
  wire aux0__74_i_2_n_0;
  wire aux0__74_i_3_n_0;
  wire aux0__74_i_4_n_0;
  wire aux0__74_i_5_n_0;
  wire aux0__74_n_0;
  wire aux0__74_n_1;
  wire aux0__74_n_2;
  wire aux0__74_n_3;
  wire aux0__74_n_4;
  wire aux0__74_n_5;
  wire aux0__74_n_6;
  wire aux0__74_n_7;
  wire aux0__75_i_1_n_0;
  wire aux0__75_i_2_n_0;
  wire aux0__75_i_3_n_0;
  wire aux0__75_i_4_n_0;
  wire aux0__75_n_0;
  wire aux0__75_n_1;
  wire aux0__75_n_2;
  wire aux0__75_n_3;
  wire aux0__75_n_4;
  wire aux0__75_n_5;
  wire aux0__75_n_6;
  wire aux0__75_n_7;
  wire aux0__76_i_1_n_0;
  wire aux0__76_i_2_n_0;
  wire aux0__76_i_3_n_0;
  wire aux0__76_i_4_n_0;
  wire aux0__76_n_0;
  wire aux0__76_n_1;
  wire aux0__76_n_2;
  wire aux0__76_n_3;
  wire aux0__76_n_4;
  wire aux0__76_n_5;
  wire aux0__76_n_6;
  wire aux0__76_n_7;
  wire aux0__77_i_1_n_0;
  wire aux0__77_i_2_n_0;
  wire aux0__77_i_3_n_0;
  wire aux0__77_i_4_n_0;
  wire aux0__77_n_0;
  wire aux0__77_n_1;
  wire aux0__77_n_2;
  wire aux0__77_n_3;
  wire aux0__77_n_5;
  wire aux0__77_n_6;
  wire aux0__77_n_7;
  wire aux0__78_i_1_n_0;
  wire aux0__78_i_2_n_0;
  wire aux0__78_n_2;
  wire aux0__78_n_3;
  wire aux0__7_i_1_n_0;
  wire aux0__7_i_2_n_0;
  wire aux0__7_i_3_n_0;
  wire aux0__7_i_4_n_0;
  wire aux0__7_n_0;
  wire aux0__7_n_1;
  wire aux0__7_n_2;
  wire aux0__7_n_3;
  wire aux0__7_n_4;
  wire aux0__7_n_5;
  wire aux0__7_n_6;
  wire aux0__7_n_7;
  wire aux0__8_i_1_n_0;
  wire aux0__8_n_2;
  wire aux0__8_n_7;
  wire aux0__9_i_1_n_0;
  wire aux0__9_i_2_n_0;
  wire aux0__9_i_3_n_0;
  wire aux0__9_i_4_n_0;
  wire aux0__9_i_5_n_0;
  wire aux0__9_n_0;
  wire aux0__9_n_1;
  wire aux0__9_n_2;
  wire aux0__9_n_3;
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
  wire aux0_i_8_n_1;
  wire aux0_i_8_n_2;
  wire aux0_i_8_n_3;
  wire aux0_i_9_n_0;
  wire aux0_n_0;
  wire aux0_n_1;
  wire aux0_n_2;
  wire aux0_n_3;
  wire aux0_n_4;
  wire aux0_n_5;
  wire aux0_n_6;
  wire aux0_n_7;
  wire [15:2]aux1;
  wire \aux[0]_P_i_1_n_0 ;
  wire \aux[10]_P_i_1_n_0 ;
  wire \aux[10]_P_i_2_n_0 ;
  wire \aux[10]_P_i_3_n_0 ;
  wire \aux[10]_P_i_4_n_0 ;
  wire \aux[11]_P_i_1_n_0 ;
  wire \aux[11]_P_i_2_n_0 ;
  wire \aux[11]_P_i_3_n_0 ;
  wire \aux[11]_P_i_4_n_0 ;
  wire \aux[12]_P_i_1_n_0 ;
  wire \aux[12]_P_i_2_n_0 ;
  wire \aux[12]_P_i_3_n_0 ;
  wire \aux[12]_P_i_4_n_0 ;
  wire \aux[12]_P_i_5_n_0 ;
  wire \aux[12]_P_i_6_n_0 ;
  wire \aux[13]_P_i_1_n_0 ;
  wire \aux[13]_P_i_2_n_0 ;
  wire \aux[14]_P_i_1_n_0 ;
  wire \aux[14]_P_i_2_n_0 ;
  wire \aux[14]_P_i_3_n_0 ;
  wire \aux[14]_P_i_4_n_0 ;
  wire \aux[14]_P_i_5_n_0 ;
  wire \aux[14]_P_i_6_n_0 ;
  wire \aux[14]_P_i_7_n_0 ;
  wire \aux[15]_P_i_10_n_0 ;
  wire \aux[15]_P_i_11_n_0 ;
  wire \aux[15]_P_i_12_n_0 ;
  wire \aux[15]_P_i_13_n_0 ;
  wire \aux[15]_P_i_1_n_0 ;
  wire \aux[15]_P_i_2_n_0 ;
  wire \aux[15]_P_i_3_n_0 ;
  wire \aux[15]_P_i_4_n_0 ;
  wire \aux[15]_P_i_5_n_0 ;
  wire \aux[15]_P_i_6_n_0 ;
  wire \aux[15]_P_i_7_n_0 ;
  wire \aux[15]_P_i_9_n_0 ;
  wire \aux[1]_P_i_1_n_0 ;
  wire \aux[1]_P_i_2_n_0 ;
  wire \aux[2]_P_i_1_n_0 ;
  wire \aux[2]_P_i_2_n_0 ;
  wire \aux[3]_P_i_1_n_0 ;
  wire \aux[3]_P_i_2_n_0 ;
  wire \aux[3]_P_i_3_n_0 ;
  wire \aux[4]_P_i_1_n_0 ;
  wire \aux[4]_P_i_2_n_0 ;
  wire \aux[4]_P_i_3_n_0 ;
  wire \aux[5]_P_i_1_n_0 ;
  wire \aux[5]_P_i_2_n_0 ;
  wire \aux[5]_P_i_3_n_0 ;
  wire \aux[6]_P_i_1_n_0 ;
  wire \aux[6]_P_i_2_n_0 ;
  wire \aux[6]_P_i_3_n_0 ;
  wire \aux[7]_P_i_1_n_0 ;
  wire \aux[7]_P_i_2_n_0 ;
  wire \aux[7]_P_i_3_n_0 ;
  wire \aux[8]_P_i_1_n_0 ;
  wire \aux[8]_P_i_2_n_0 ;
  wire \aux[8]_P_i_3_n_0 ;
  wire \aux[9]_P_i_1_n_0 ;
  wire \aux[9]_P_i_2_n_0 ;
  wire \aux[9]_P_i_3_n_0 ;
  wire \aux[9]_P_i_4_n_0 ;
  wire aux_BIP_i_1_n_0;
  wire aux_BIP_i_2_n_0;
  wire \aux_Count[10]_P_i_1_n_0 ;
  wire \aux_Count_reg[0]_P_n_0 ;
  wire \aux_Count_reg[10]_P_n_0 ;
  wire \aux_Count_reg[1]_P_n_0 ;
  wire \aux_Count_reg[2]_P_n_0 ;
  wire \aux_Count_reg[3]_P_n_0 ;
  wire \aux_Count_reg[4]_P_n_0 ;
  wire \aux_Count_reg[5]_P_n_0 ;
  wire \aux_Count_reg[6]_P_n_0 ;
  wire \aux_Count_reg[7]_P_n_0 ;
  wire \aux_Count_reg[8]_P_n_0 ;
  wire \aux_Count_reg[9]_P_n_0 ;
  wire [10:0]\aux_PC_reg[10] ;
  wire \aux_reg[0]_P_n_0 ;
  wire \aux_reg[10]_P_n_0 ;
  wire \aux_reg[11]_P_n_0 ;
  wire \aux_reg[12]_P_n_0 ;
  wire \aux_reg[13]_P_n_0 ;
  wire \aux_reg[14]_P_n_0 ;
  wire \aux_reg[15]_P_0 ;
  wire \aux_reg[15]_P_n_0 ;
  wire \aux_reg[1]_P_n_0 ;
  wire \aux_reg[2]_P_n_0 ;
  wire \aux_reg[3]_P_n_0 ;
  wire \aux_reg[4]_P_n_0 ;
  wire \aux_reg[5]_P_n_0 ;
  wire \aux_reg[6]_P_n_0 ;
  wire \aux_reg[7]_P_n_0 ;
  wire \aux_reg[8]_P_n_0 ;
  wire \aux_reg[9]_P_n_0 ;
  wire \b_reg_reg[0] ;
  wire \b_reg_reg[1] ;
  wire \b_reg_reg[2] ;
  wire \b_reg_reg[3] ;
  wire \b_reg_reg[3]_0 ;
  wire \b_reg_reg[3]_1 ;
  wire \b_reg_reg[4] ;
  wire \b_reg_reg[5] ;
  wire \b_reg_reg[5]_0 ;
  wire \b_reg_reg[6] ;
  wire button_OBUF;
  wire clk_IBUF_BUFG;
  wire \div[0]_i_1_n_0 ;
  wire \div[0]_i_2_n_0 ;
  wire \div[0]_i_3_n_0 ;
  wire \div[10]_i_1_n_0 ;
  wire \div[10]_i_2_n_0 ;
  wire \div[10]_i_3_n_0 ;
  wire \div[10]_i_4_n_0 ;
  wire \div[10]_i_5_n_0 ;
  wire \div[10]_i_6_n_0 ;
  wire \div[10]_i_7_n_0 ;
  wire \div[10]_i_8_n_0 ;
  wire \div[10]_i_9_n_0 ;
  wire \div[1]_i_1_n_0 ;
  wire \div[1]_i_2_n_0 ;
  wire \div[1]_i_3_n_0 ;
  wire \div[2]_i_1_n_0 ;
  wire \div[2]_i_2_n_0 ;
  wire \div[2]_i_3_n_0 ;
  wire \div[2]_i_4_n_0 ;
  wire \div[2]_i_5_n_0 ;
  wire \div[3]_i_1_n_0 ;
  wire \div[4]_i_1_n_0 ;
  wire \div[5]_i_1_n_0 ;
  wire \div[7]_i_1_n_0 ;
  wire \div[9]_i_1_n_0 ;
  wire \div_reg_n_0_[0] ;
  wire \div_reg_n_0_[10] ;
  wire \div_reg_n_0_[1] ;
  wire \div_reg_n_0_[2] ;
  wire \div_reg_n_0_[3] ;
  wire \div_reg_n_0_[4] ;
  wire \div_reg_n_0_[5] ;
  wire \div_reg_n_0_[6] ;
  wire \div_reg_n_0_[7] ;
  wire \div_reg_n_0_[9] ;
  wire ena;
  wire finish_program;
  wire \i[1]_i_1_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire \i[6]_i_4_n_0 ;
  wire [2:0]i_reg;
  wire [6:3]i_reg__0;
  wire is_s9_out;
  wire is_s_reg_0;
  wire [0:0]out;
  wire \out[0]_P_i_1_n_0 ;
  wire \out[0]_P_i_2_n_0 ;
  wire \out[0]_P_i_3_n_0 ;
  wire \out[1]_P_i_1_n_0 ;
  wire \out[1]_P_i_2_n_0 ;
  wire \out[1]_P_i_3_n_0 ;
  wire \out[1]_P_i_4_n_0 ;
  wire \out[2]_P_i_1_n_0 ;
  wire \out[2]_P_i_2_n_0 ;
  wire \out[2]_P_i_3_n_0 ;
  wire \out[3]_P_i_1_n_0 ;
  wire \out[3]_P_i_2_n_0 ;
  wire \out[3]_P_i_4_n_0 ;
  wire \out[3]_P_i_5_n_0 ;
  wire \out[3]_P_i_6_n_0 ;
  wire \out[3]_P_i_7_n_0 ;
  wire \out[4]_P_i_1_n_0 ;
  wire \out[4]_P_i_2_n_0 ;
  wire \out[4]_P_i_3_n_0 ;
  wire \out[4]_P_i_4_n_0 ;
  wire \out[5]_P_i_1_n_0 ;
  wire \out[5]_P_i_2_n_0 ;
  wire \out[6]_P_i_1_n_0 ;
  wire \out[6]_P_i_2_n_0 ;
  wire \out[6]_P_i_3_n_0 ;
  wire \out[6]_P_i_4_n_0 ;
  wire \out[6]_P_i_5_n_0 ;
  wire \out[6]_P_i_6_n_0 ;
  wire \out[6]_P_i_7_n_0 ;
  wire \out[7]_P_i_100_n_0 ;
  wire \out[7]_P_i_101_n_0 ;
  wire \out[7]_P_i_102_n_0 ;
  wire \out[7]_P_i_103_n_0 ;
  wire \out[7]_P_i_105_n_0 ;
  wire \out[7]_P_i_106_n_0 ;
  wire \out[7]_P_i_107_n_0 ;
  wire \out[7]_P_i_108_n_0 ;
  wire \out[7]_P_i_109_n_0 ;
  wire \out[7]_P_i_10_n_0 ;
  wire \out[7]_P_i_110_n_0 ;
  wire \out[7]_P_i_111_n_0 ;
  wire \out[7]_P_i_113_n_0 ;
  wire \out[7]_P_i_114_n_0 ;
  wire \out[7]_P_i_115_n_0 ;
  wire \out[7]_P_i_116_n_0 ;
  wire \out[7]_P_i_119_n_0 ;
  wire \out[7]_P_i_120_n_0 ;
  wire \out[7]_P_i_121_n_0 ;
  wire \out[7]_P_i_122_n_0 ;
  wire \out[7]_P_i_124_n_0 ;
  wire \out[7]_P_i_125_n_0 ;
  wire \out[7]_P_i_126_n_0 ;
  wire \out[7]_P_i_127_n_0 ;
  wire \out[7]_P_i_128_n_0 ;
  wire \out[7]_P_i_129_n_0 ;
  wire \out[7]_P_i_12_n_0 ;
  wire \out[7]_P_i_130_n_0 ;
  wire \out[7]_P_i_132_n_0 ;
  wire \out[7]_P_i_133_n_0 ;
  wire \out[7]_P_i_134_n_0 ;
  wire \out[7]_P_i_135_n_0 ;
  wire \out[7]_P_i_138_n_0 ;
  wire \out[7]_P_i_139_n_0 ;
  wire \out[7]_P_i_13_n_0 ;
  wire \out[7]_P_i_140_n_0 ;
  wire \out[7]_P_i_141_n_0 ;
  wire \out[7]_P_i_143_n_0 ;
  wire \out[7]_P_i_144_n_0 ;
  wire \out[7]_P_i_145_n_0 ;
  wire \out[7]_P_i_146_n_0 ;
  wire \out[7]_P_i_147_n_0 ;
  wire \out[7]_P_i_148_n_0 ;
  wire \out[7]_P_i_149_n_0 ;
  wire \out[7]_P_i_14_n_0 ;
  wire \out[7]_P_i_151_n_0 ;
  wire \out[7]_P_i_152_n_0 ;
  wire \out[7]_P_i_153_n_0 ;
  wire \out[7]_P_i_154_n_0 ;
  wire \out[7]_P_i_157_n_0 ;
  wire \out[7]_P_i_158_n_0 ;
  wire \out[7]_P_i_159_n_0 ;
  wire \out[7]_P_i_15_n_0 ;
  wire \out[7]_P_i_160_n_0 ;
  wire \out[7]_P_i_162_n_0 ;
  wire \out[7]_P_i_163_n_0 ;
  wire \out[7]_P_i_164_n_0 ;
  wire \out[7]_P_i_165_n_0 ;
  wire \out[7]_P_i_166_n_0 ;
  wire \out[7]_P_i_167_n_0 ;
  wire \out[7]_P_i_168_n_0 ;
  wire \out[7]_P_i_170_n_0 ;
  wire \out[7]_P_i_171_n_0 ;
  wire \out[7]_P_i_172_n_0 ;
  wire \out[7]_P_i_173_n_0 ;
  wire \out[7]_P_i_176_n_0 ;
  wire \out[7]_P_i_177_n_0 ;
  wire \out[7]_P_i_178_n_0 ;
  wire \out[7]_P_i_179_n_0 ;
  wire \out[7]_P_i_17_n_0 ;
  wire \out[7]_P_i_181_n_0 ;
  wire \out[7]_P_i_182_n_0 ;
  wire \out[7]_P_i_183_n_0 ;
  wire \out[7]_P_i_184_n_0 ;
  wire \out[7]_P_i_185_n_0 ;
  wire \out[7]_P_i_186_n_0 ;
  wire \out[7]_P_i_187_n_0 ;
  wire \out[7]_P_i_189_n_0 ;
  wire \out[7]_P_i_18_n_0 ;
  wire \out[7]_P_i_190_n_0 ;
  wire \out[7]_P_i_191_n_0 ;
  wire \out[7]_P_i_192_n_0 ;
  wire \out[7]_P_i_193_n_0 ;
  wire \out[7]_P_i_194_n_0 ;
  wire \out[7]_P_i_195_n_0 ;
  wire \out[7]_P_i_196_n_0 ;
  wire \out[7]_P_i_197_n_0 ;
  wire \out[7]_P_i_198_n_0 ;
  wire \out[7]_P_i_199_n_0 ;
  wire \out[7]_P_i_19_n_0 ;
  wire \out[7]_P_i_1_n_0 ;
  wire \out[7]_P_i_200_n_0 ;
  wire \out[7]_P_i_201_n_0 ;
  wire \out[7]_P_i_202_n_0 ;
  wire \out[7]_P_i_203_n_0 ;
  wire \out[7]_P_i_204_n_0 ;
  wire \out[7]_P_i_205_n_0 ;
  wire \out[7]_P_i_206_n_0 ;
  wire \out[7]_P_i_20_n_0 ;
  wire \out[7]_P_i_22_n_0 ;
  wire \out[7]_P_i_23_n_0 ;
  wire \out[7]_P_i_24_n_0 ;
  wire \out[7]_P_i_25_n_0 ;
  wire \out[7]_P_i_28_n_0 ;
  wire \out[7]_P_i_29_n_0 ;
  wire \out[7]_P_i_2_n_0 ;
  wire \out[7]_P_i_30_n_0 ;
  wire \out[7]_P_i_31_n_0 ;
  wire \out[7]_P_i_33_n_0 ;
  wire \out[7]_P_i_34_n_0 ;
  wire \out[7]_P_i_35_n_0 ;
  wire \out[7]_P_i_36_n_0 ;
  wire \out[7]_P_i_38_n_0 ;
  wire \out[7]_P_i_39_n_0 ;
  wire \out[7]_P_i_3_n_0 ;
  wire \out[7]_P_i_40_n_0 ;
  wire \out[7]_P_i_41_n_0 ;
  wire \out[7]_P_i_43_n_0 ;
  wire \out[7]_P_i_44_n_0 ;
  wire \out[7]_P_i_45_n_0 ;
  wire \out[7]_P_i_46_n_0 ;
  wire \out[7]_P_i_49_n_0 ;
  wire \out[7]_P_i_4_n_0 ;
  wire \out[7]_P_i_50_n_0 ;
  wire \out[7]_P_i_51_n_0 ;
  wire \out[7]_P_i_52_n_0 ;
  wire \out[7]_P_i_54_n_0 ;
  wire \out[7]_P_i_55_n_0 ;
  wire \out[7]_P_i_56_n_0 ;
  wire \out[7]_P_i_57_n_0 ;
  wire \out[7]_P_i_59_n_0 ;
  wire \out[7]_P_i_5_n_0 ;
  wire \out[7]_P_i_60_n_0 ;
  wire \out[7]_P_i_61_n_0 ;
  wire \out[7]_P_i_62_n_0 ;
  wire \out[7]_P_i_64_n_0 ;
  wire \out[7]_P_i_65_n_0 ;
  wire \out[7]_P_i_66_n_0 ;
  wire \out[7]_P_i_67_n_0 ;
  wire \out[7]_P_i_69_n_0 ;
  wire \out[7]_P_i_70_n_0 ;
  wire \out[7]_P_i_71_n_0 ;
  wire \out[7]_P_i_72_n_0 ;
  wire \out[7]_P_i_75_n_0 ;
  wire \out[7]_P_i_76_n_0 ;
  wire \out[7]_P_i_77_n_0 ;
  wire \out[7]_P_i_78_n_0 ;
  wire \out[7]_P_i_80_n_0 ;
  wire \out[7]_P_i_81_n_0 ;
  wire \out[7]_P_i_82_n_0 ;
  wire \out[7]_P_i_83_n_0 ;
  wire \out[7]_P_i_85_n_0 ;
  wire \out[7]_P_i_86_n_0 ;
  wire \out[7]_P_i_87_n_0 ;
  wire \out[7]_P_i_88_n_0 ;
  wire \out[7]_P_i_89_n_0 ;
  wire \out[7]_P_i_90_n_0 ;
  wire \out[7]_P_i_91_n_0 ;
  wire \out[7]_P_i_92_n_0 ;
  wire \out[7]_P_i_93_n_0 ;
  wire \out[7]_P_i_94_n_0 ;
  wire \out[7]_P_i_95_n_0 ;
  wire \out[7]_P_i_96_n_0 ;
  wire \out[7]_P_i_97_n_0 ;
  wire \out_reg[3]_P_i_3_n_0 ;
  wire \out_reg[3]_P_i_3_n_1 ;
  wire \out_reg[3]_P_i_3_n_2 ;
  wire \out_reg[3]_P_i_3_n_3 ;
  wire \out_reg[3]_P_i_3_n_5 ;
  wire \out_reg[3]_P_i_3_n_6 ;
  wire \out_reg[3]_P_i_3_n_7 ;
  wire \out_reg[7]_P_i_104_n_0 ;
  wire \out_reg[7]_P_i_104_n_1 ;
  wire \out_reg[7]_P_i_104_n_2 ;
  wire \out_reg[7]_P_i_104_n_3 ;
  wire \out_reg[7]_P_i_104_n_4 ;
  wire \out_reg[7]_P_i_104_n_5 ;
  wire \out_reg[7]_P_i_104_n_6 ;
  wire \out_reg[7]_P_i_112_n_0 ;
  wire \out_reg[7]_P_i_112_n_1 ;
  wire \out_reg[7]_P_i_112_n_2 ;
  wire \out_reg[7]_P_i_112_n_3 ;
  wire \out_reg[7]_P_i_112_n_5 ;
  wire \out_reg[7]_P_i_112_n_6 ;
  wire \out_reg[7]_P_i_112_n_7 ;
  wire \out_reg[7]_P_i_117_n_0 ;
  wire \out_reg[7]_P_i_117_n_1 ;
  wire \out_reg[7]_P_i_117_n_2 ;
  wire \out_reg[7]_P_i_117_n_3 ;
  wire \out_reg[7]_P_i_117_n_4 ;
  wire \out_reg[7]_P_i_117_n_5 ;
  wire \out_reg[7]_P_i_117_n_6 ;
  wire \out_reg[7]_P_i_117_n_7 ;
  wire \out_reg[7]_P_i_118_n_0 ;
  wire \out_reg[7]_P_i_118_n_1 ;
  wire \out_reg[7]_P_i_118_n_2 ;
  wire \out_reg[7]_P_i_118_n_3 ;
  wire \out_reg[7]_P_i_118_n_4 ;
  wire \out_reg[7]_P_i_118_n_5 ;
  wire \out_reg[7]_P_i_118_n_6 ;
  wire \out_reg[7]_P_i_118_n_7 ;
  wire \out_reg[7]_P_i_11_n_0 ;
  wire \out_reg[7]_P_i_11_n_1 ;
  wire \out_reg[7]_P_i_11_n_2 ;
  wire \out_reg[7]_P_i_11_n_3 ;
  wire \out_reg[7]_P_i_11_n_4 ;
  wire \out_reg[7]_P_i_11_n_5 ;
  wire \out_reg[7]_P_i_11_n_6 ;
  wire \out_reg[7]_P_i_11_n_7 ;
  wire \out_reg[7]_P_i_123_n_0 ;
  wire \out_reg[7]_P_i_123_n_1 ;
  wire \out_reg[7]_P_i_123_n_2 ;
  wire \out_reg[7]_P_i_123_n_3 ;
  wire \out_reg[7]_P_i_123_n_4 ;
  wire \out_reg[7]_P_i_123_n_5 ;
  wire \out_reg[7]_P_i_123_n_6 ;
  wire \out_reg[7]_P_i_131_n_0 ;
  wire \out_reg[7]_P_i_131_n_1 ;
  wire \out_reg[7]_P_i_131_n_2 ;
  wire \out_reg[7]_P_i_131_n_3 ;
  wire \out_reg[7]_P_i_131_n_5 ;
  wire \out_reg[7]_P_i_131_n_6 ;
  wire \out_reg[7]_P_i_131_n_7 ;
  wire \out_reg[7]_P_i_136_n_0 ;
  wire \out_reg[7]_P_i_136_n_1 ;
  wire \out_reg[7]_P_i_136_n_2 ;
  wire \out_reg[7]_P_i_136_n_3 ;
  wire \out_reg[7]_P_i_136_n_4 ;
  wire \out_reg[7]_P_i_136_n_5 ;
  wire \out_reg[7]_P_i_136_n_6 ;
  wire \out_reg[7]_P_i_136_n_7 ;
  wire \out_reg[7]_P_i_137_n_0 ;
  wire \out_reg[7]_P_i_137_n_1 ;
  wire \out_reg[7]_P_i_137_n_2 ;
  wire \out_reg[7]_P_i_137_n_3 ;
  wire \out_reg[7]_P_i_137_n_4 ;
  wire \out_reg[7]_P_i_137_n_5 ;
  wire \out_reg[7]_P_i_137_n_6 ;
  wire \out_reg[7]_P_i_137_n_7 ;
  wire \out_reg[7]_P_i_142_n_0 ;
  wire \out_reg[7]_P_i_142_n_1 ;
  wire \out_reg[7]_P_i_142_n_2 ;
  wire \out_reg[7]_P_i_142_n_3 ;
  wire \out_reg[7]_P_i_142_n_4 ;
  wire \out_reg[7]_P_i_142_n_5 ;
  wire \out_reg[7]_P_i_142_n_6 ;
  wire \out_reg[7]_P_i_150_n_0 ;
  wire \out_reg[7]_P_i_150_n_1 ;
  wire \out_reg[7]_P_i_150_n_2 ;
  wire \out_reg[7]_P_i_150_n_3 ;
  wire \out_reg[7]_P_i_150_n_5 ;
  wire \out_reg[7]_P_i_150_n_6 ;
  wire \out_reg[7]_P_i_150_n_7 ;
  wire \out_reg[7]_P_i_155_n_0 ;
  wire \out_reg[7]_P_i_155_n_1 ;
  wire \out_reg[7]_P_i_155_n_2 ;
  wire \out_reg[7]_P_i_155_n_3 ;
  wire \out_reg[7]_P_i_155_n_4 ;
  wire \out_reg[7]_P_i_155_n_5 ;
  wire \out_reg[7]_P_i_155_n_6 ;
  wire \out_reg[7]_P_i_155_n_7 ;
  wire \out_reg[7]_P_i_156_n_0 ;
  wire \out_reg[7]_P_i_156_n_1 ;
  wire \out_reg[7]_P_i_156_n_2 ;
  wire \out_reg[7]_P_i_156_n_3 ;
  wire \out_reg[7]_P_i_156_n_4 ;
  wire \out_reg[7]_P_i_156_n_5 ;
  wire \out_reg[7]_P_i_156_n_6 ;
  wire \out_reg[7]_P_i_156_n_7 ;
  wire \out_reg[7]_P_i_161_n_0 ;
  wire \out_reg[7]_P_i_161_n_1 ;
  wire \out_reg[7]_P_i_161_n_2 ;
  wire \out_reg[7]_P_i_161_n_3 ;
  wire \out_reg[7]_P_i_161_n_4 ;
  wire \out_reg[7]_P_i_161_n_5 ;
  wire \out_reg[7]_P_i_161_n_6 ;
  wire \out_reg[7]_P_i_169_n_0 ;
  wire \out_reg[7]_P_i_169_n_1 ;
  wire \out_reg[7]_P_i_169_n_2 ;
  wire \out_reg[7]_P_i_169_n_3 ;
  wire \out_reg[7]_P_i_169_n_5 ;
  wire \out_reg[7]_P_i_169_n_6 ;
  wire \out_reg[7]_P_i_169_n_7 ;
  wire \out_reg[7]_P_i_16_n_0 ;
  wire \out_reg[7]_P_i_16_n_1 ;
  wire \out_reg[7]_P_i_16_n_2 ;
  wire \out_reg[7]_P_i_16_n_3 ;
  wire \out_reg[7]_P_i_16_n_4 ;
  wire \out_reg[7]_P_i_16_n_5 ;
  wire \out_reg[7]_P_i_16_n_6 ;
  wire \out_reg[7]_P_i_16_n_7 ;
  wire \out_reg[7]_P_i_174_n_0 ;
  wire \out_reg[7]_P_i_174_n_1 ;
  wire \out_reg[7]_P_i_174_n_2 ;
  wire \out_reg[7]_P_i_174_n_3 ;
  wire \out_reg[7]_P_i_174_n_4 ;
  wire \out_reg[7]_P_i_174_n_5 ;
  wire \out_reg[7]_P_i_174_n_6 ;
  wire \out_reg[7]_P_i_174_n_7 ;
  wire \out_reg[7]_P_i_175_n_0 ;
  wire \out_reg[7]_P_i_175_n_1 ;
  wire \out_reg[7]_P_i_175_n_2 ;
  wire \out_reg[7]_P_i_175_n_3 ;
  wire \out_reg[7]_P_i_175_n_4 ;
  wire \out_reg[7]_P_i_175_n_5 ;
  wire \out_reg[7]_P_i_175_n_6 ;
  wire \out_reg[7]_P_i_175_n_7 ;
  wire \out_reg[7]_P_i_180_n_0 ;
  wire \out_reg[7]_P_i_180_n_1 ;
  wire \out_reg[7]_P_i_180_n_2 ;
  wire \out_reg[7]_P_i_180_n_3 ;
  wire \out_reg[7]_P_i_180_n_4 ;
  wire \out_reg[7]_P_i_180_n_5 ;
  wire \out_reg[7]_P_i_180_n_6 ;
  wire \out_reg[7]_P_i_188_n_1 ;
  wire \out_reg[7]_P_i_188_n_3 ;
  wire \out_reg[7]_P_i_188_n_6 ;
  wire \out_reg[7]_P_i_21_n_0 ;
  wire \out_reg[7]_P_i_21_n_1 ;
  wire \out_reg[7]_P_i_21_n_2 ;
  wire \out_reg[7]_P_i_21_n_3 ;
  wire \out_reg[7]_P_i_21_n_4 ;
  wire \out_reg[7]_P_i_21_n_5 ;
  wire \out_reg[7]_P_i_21_n_6 ;
  wire \out_reg[7]_P_i_21_n_7 ;
  wire \out_reg[7]_P_i_26_n_0 ;
  wire \out_reg[7]_P_i_26_n_1 ;
  wire \out_reg[7]_P_i_26_n_2 ;
  wire \out_reg[7]_P_i_26_n_3 ;
  wire \out_reg[7]_P_i_26_n_4 ;
  wire \out_reg[7]_P_i_26_n_5 ;
  wire \out_reg[7]_P_i_26_n_6 ;
  wire \out_reg[7]_P_i_26_n_7 ;
  wire \out_reg[7]_P_i_27_n_0 ;
  wire \out_reg[7]_P_i_27_n_1 ;
  wire \out_reg[7]_P_i_27_n_2 ;
  wire \out_reg[7]_P_i_27_n_3 ;
  wire \out_reg[7]_P_i_27_n_5 ;
  wire \out_reg[7]_P_i_27_n_6 ;
  wire \out_reg[7]_P_i_27_n_7 ;
  wire \out_reg[7]_P_i_32_n_0 ;
  wire \out_reg[7]_P_i_32_n_1 ;
  wire \out_reg[7]_P_i_32_n_2 ;
  wire \out_reg[7]_P_i_32_n_3 ;
  wire \out_reg[7]_P_i_32_n_4 ;
  wire \out_reg[7]_P_i_32_n_5 ;
  wire \out_reg[7]_P_i_32_n_6 ;
  wire \out_reg[7]_P_i_32_n_7 ;
  wire \out_reg[7]_P_i_37_n_0 ;
  wire \out_reg[7]_P_i_37_n_1 ;
  wire \out_reg[7]_P_i_37_n_2 ;
  wire \out_reg[7]_P_i_37_n_3 ;
  wire \out_reg[7]_P_i_37_n_4 ;
  wire \out_reg[7]_P_i_37_n_5 ;
  wire \out_reg[7]_P_i_37_n_6 ;
  wire \out_reg[7]_P_i_37_n_7 ;
  wire \out_reg[7]_P_i_42_n_0 ;
  wire \out_reg[7]_P_i_42_n_1 ;
  wire \out_reg[7]_P_i_42_n_2 ;
  wire \out_reg[7]_P_i_42_n_3 ;
  wire \out_reg[7]_P_i_42_n_4 ;
  wire \out_reg[7]_P_i_42_n_5 ;
  wire \out_reg[7]_P_i_42_n_6 ;
  wire \out_reg[7]_P_i_42_n_7 ;
  wire \out_reg[7]_P_i_47_n_0 ;
  wire \out_reg[7]_P_i_47_n_1 ;
  wire \out_reg[7]_P_i_47_n_2 ;
  wire \out_reg[7]_P_i_47_n_3 ;
  wire \out_reg[7]_P_i_47_n_4 ;
  wire \out_reg[7]_P_i_47_n_5 ;
  wire \out_reg[7]_P_i_47_n_6 ;
  wire \out_reg[7]_P_i_47_n_7 ;
  wire \out_reg[7]_P_i_48_n_0 ;
  wire \out_reg[7]_P_i_48_n_1 ;
  wire \out_reg[7]_P_i_48_n_2 ;
  wire \out_reg[7]_P_i_48_n_3 ;
  wire \out_reg[7]_P_i_48_n_4 ;
  wire \out_reg[7]_P_i_48_n_5 ;
  wire \out_reg[7]_P_i_48_n_6 ;
  wire \out_reg[7]_P_i_48_n_7 ;
  wire \out_reg[7]_P_i_53_n_0 ;
  wire \out_reg[7]_P_i_53_n_1 ;
  wire \out_reg[7]_P_i_53_n_2 ;
  wire \out_reg[7]_P_i_53_n_3 ;
  wire \out_reg[7]_P_i_53_n_5 ;
  wire \out_reg[7]_P_i_53_n_6 ;
  wire \out_reg[7]_P_i_53_n_7 ;
  wire \out_reg[7]_P_i_58_n_0 ;
  wire \out_reg[7]_P_i_58_n_1 ;
  wire \out_reg[7]_P_i_58_n_2 ;
  wire \out_reg[7]_P_i_58_n_3 ;
  wire \out_reg[7]_P_i_58_n_4 ;
  wire \out_reg[7]_P_i_58_n_5 ;
  wire \out_reg[7]_P_i_58_n_6 ;
  wire \out_reg[7]_P_i_63_n_0 ;
  wire \out_reg[7]_P_i_63_n_1 ;
  wire \out_reg[7]_P_i_63_n_2 ;
  wire \out_reg[7]_P_i_63_n_3 ;
  wire \out_reg[7]_P_i_63_n_4 ;
  wire \out_reg[7]_P_i_63_n_5 ;
  wire \out_reg[7]_P_i_63_n_6 ;
  wire \out_reg[7]_P_i_68_n_0 ;
  wire \out_reg[7]_P_i_68_n_1 ;
  wire \out_reg[7]_P_i_68_n_2 ;
  wire \out_reg[7]_P_i_68_n_3 ;
  wire \out_reg[7]_P_i_68_n_4 ;
  wire \out_reg[7]_P_i_68_n_5 ;
  wire \out_reg[7]_P_i_68_n_6 ;
  wire \out_reg[7]_P_i_6_n_0 ;
  wire \out_reg[7]_P_i_6_n_1 ;
  wire \out_reg[7]_P_i_6_n_2 ;
  wire \out_reg[7]_P_i_6_n_3 ;
  wire \out_reg[7]_P_i_6_n_5 ;
  wire \out_reg[7]_P_i_6_n_6 ;
  wire \out_reg[7]_P_i_6_n_7 ;
  wire \out_reg[7]_P_i_73_n_0 ;
  wire \out_reg[7]_P_i_73_n_1 ;
  wire \out_reg[7]_P_i_73_n_2 ;
  wire \out_reg[7]_P_i_73_n_3 ;
  wire \out_reg[7]_P_i_73_n_4 ;
  wire \out_reg[7]_P_i_73_n_5 ;
  wire \out_reg[7]_P_i_73_n_6 ;
  wire \out_reg[7]_P_i_73_n_7 ;
  wire \out_reg[7]_P_i_74_n_0 ;
  wire \out_reg[7]_P_i_74_n_1 ;
  wire \out_reg[7]_P_i_74_n_2 ;
  wire \out_reg[7]_P_i_74_n_3 ;
  wire \out_reg[7]_P_i_74_n_4 ;
  wire \out_reg[7]_P_i_74_n_5 ;
  wire \out_reg[7]_P_i_74_n_6 ;
  wire \out_reg[7]_P_i_74_n_7 ;
  wire \out_reg[7]_P_i_79_n_0 ;
  wire \out_reg[7]_P_i_79_n_1 ;
  wire \out_reg[7]_P_i_79_n_2 ;
  wire \out_reg[7]_P_i_79_n_3 ;
  wire \out_reg[7]_P_i_79_n_4 ;
  wire \out_reg[7]_P_i_79_n_5 ;
  wire \out_reg[7]_P_i_79_n_6 ;
  wire \out_reg[7]_P_i_7_n_0 ;
  wire \out_reg[7]_P_i_7_n_1 ;
  wire \out_reg[7]_P_i_7_n_2 ;
  wire \out_reg[7]_P_i_7_n_3 ;
  wire \out_reg[7]_P_i_7_n_5 ;
  wire \out_reg[7]_P_i_7_n_6 ;
  wire \out_reg[7]_P_i_7_n_7 ;
  wire \out_reg[7]_P_i_84_n_0 ;
  wire \out_reg[7]_P_i_84_n_1 ;
  wire \out_reg[7]_P_i_84_n_2 ;
  wire \out_reg[7]_P_i_84_n_3 ;
  wire \out_reg[7]_P_i_84_n_5 ;
  wire \out_reg[7]_P_i_84_n_6 ;
  wire \out_reg[7]_P_i_84_n_7 ;
  wire \out_reg[7]_P_i_8_n_0 ;
  wire \out_reg[7]_P_i_8_n_1 ;
  wire \out_reg[7]_P_i_8_n_2 ;
  wire \out_reg[7]_P_i_8_n_3 ;
  wire \out_reg[7]_P_i_8_n_5 ;
  wire \out_reg[7]_P_i_8_n_6 ;
  wire \out_reg[7]_P_i_8_n_7 ;
  wire \out_reg[7]_P_i_98_n_0 ;
  wire \out_reg[7]_P_i_98_n_1 ;
  wire \out_reg[7]_P_i_98_n_2 ;
  wire \out_reg[7]_P_i_98_n_3 ;
  wire \out_reg[7]_P_i_98_n_4 ;
  wire \out_reg[7]_P_i_98_n_5 ;
  wire \out_reg[7]_P_i_98_n_6 ;
  wire \out_reg[7]_P_i_98_n_7 ;
  wire \out_reg[7]_P_i_99_n_0 ;
  wire \out_reg[7]_P_i_99_n_1 ;
  wire \out_reg[7]_P_i_99_n_2 ;
  wire \out_reg[7]_P_i_99_n_3 ;
  wire \out_reg[7]_P_i_99_n_4 ;
  wire \out_reg[7]_P_i_99_n_5 ;
  wire \out_reg[7]_P_i_99_n_6 ;
  wire \out_reg[7]_P_i_99_n_7 ;
  wire \out_reg[7]_P_i_9_n_0 ;
  wire \out_reg[7]_P_i_9_n_1 ;
  wire \out_reg[7]_P_i_9_n_2 ;
  wire \out_reg[7]_P_i_9_n_3 ;
  wire \out_reg[7]_P_i_9_n_5 ;
  wire \out_reg[7]_P_i_9_n_6 ;
  wire \out_reg[7]_P_i_9_n_7 ;
  wire \out_reg[7]_P_n_0 ;
  wire [6:0]p_0_in;
  wire [10:0]p_3_in;
  wire \s_reg_reg[2] ;
  wire state_reg2__790_carry__0_i_10_n_0;
  wire state_reg2__790_carry__0_i_11_n_0;
  wire state_reg2__790_carry__0_i_11_n_1;
  wire state_reg2__790_carry__0_i_11_n_2;
  wire state_reg2__790_carry__0_i_11_n_3;
  wire state_reg2__790_carry__0_i_11_n_4;
  wire state_reg2__790_carry__0_i_11_n_5;
  wire state_reg2__790_carry__0_i_11_n_6;
  wire state_reg2__790_carry__0_i_11_n_7;
  wire state_reg2__790_carry__0_i_12_n_0;
  wire state_reg2__790_carry__0_i_13_n_0;
  wire state_reg2__790_carry__0_i_14_n_0;
  wire state_reg2__790_carry__0_i_15_n_0;
  wire state_reg2__790_carry__0_i_16_n_0;
  wire state_reg2__790_carry__0_i_16_n_1;
  wire state_reg2__790_carry__0_i_16_n_2;
  wire state_reg2__790_carry__0_i_16_n_3;
  wire state_reg2__790_carry__0_i_16_n_4;
  wire state_reg2__790_carry__0_i_16_n_5;
  wire state_reg2__790_carry__0_i_16_n_6;
  wire state_reg2__790_carry__0_i_16_n_7;
  wire state_reg2__790_carry__0_i_17_n_0;
  wire state_reg2__790_carry__0_i_18_n_0;
  wire state_reg2__790_carry__0_i_19_n_0;
  wire state_reg2__790_carry__0_i_1_n_0;
  wire state_reg2__790_carry__0_i_1_n_1;
  wire state_reg2__790_carry__0_i_1_n_2;
  wire state_reg2__790_carry__0_i_1_n_3;
  wire state_reg2__790_carry__0_i_1_n_4;
  wire state_reg2__790_carry__0_i_1_n_5;
  wire state_reg2__790_carry__0_i_1_n_6;
  wire state_reg2__790_carry__0_i_1_n_7;
  wire state_reg2__790_carry__0_i_20_n_0;
  wire state_reg2__790_carry__0_i_21_n_0;
  wire state_reg2__790_carry__0_i_22_n_0;
  wire state_reg2__790_carry__0_i_23_n_0;
  wire state_reg2__790_carry__0_i_24_n_0;
  wire state_reg2__790_carry__0_i_2_n_0;
  wire state_reg2__790_carry__0_i_3_n_0;
  wire state_reg2__790_carry__0_i_4_n_0;
  wire state_reg2__790_carry__0_i_5_n_0;
  wire state_reg2__790_carry__0_i_6_n_0;
  wire state_reg2__790_carry__0_i_6_n_1;
  wire state_reg2__790_carry__0_i_6_n_2;
  wire state_reg2__790_carry__0_i_6_n_3;
  wire state_reg2__790_carry__0_i_6_n_4;
  wire state_reg2__790_carry__0_i_6_n_5;
  wire state_reg2__790_carry__0_i_6_n_6;
  wire state_reg2__790_carry__0_i_6_n_7;
  wire state_reg2__790_carry__0_i_7_n_0;
  wire state_reg2__790_carry__0_i_8_n_0;
  wire state_reg2__790_carry__0_i_9_n_0;
  wire state_reg2__790_carry__0_n_0;
  wire state_reg2__790_carry__0_n_1;
  wire state_reg2__790_carry__0_n_2;
  wire state_reg2__790_carry__0_n_3;
  wire state_reg2__790_carry__1_i_10_n_0;
  wire state_reg2__790_carry__1_i_11_n_0;
  wire state_reg2__790_carry__1_i_11_n_1;
  wire state_reg2__790_carry__1_i_11_n_2;
  wire state_reg2__790_carry__1_i_11_n_3;
  wire state_reg2__790_carry__1_i_11_n_4;
  wire state_reg2__790_carry__1_i_11_n_5;
  wire state_reg2__790_carry__1_i_11_n_6;
  wire state_reg2__790_carry__1_i_11_n_7;
  wire state_reg2__790_carry__1_i_12_n_0;
  wire state_reg2__790_carry__1_i_13_n_0;
  wire state_reg2__790_carry__1_i_14_n_0;
  wire state_reg2__790_carry__1_i_15_n_0;
  wire state_reg2__790_carry__1_i_16_n_0;
  wire state_reg2__790_carry__1_i_17_n_0;
  wire state_reg2__790_carry__1_i_18_n_0;
  wire state_reg2__790_carry__1_i_19_n_0;
  wire state_reg2__790_carry__1_i_1_n_0;
  wire state_reg2__790_carry__1_i_1_n_1;
  wire state_reg2__790_carry__1_i_1_n_2;
  wire state_reg2__790_carry__1_i_1_n_3;
  wire state_reg2__790_carry__1_i_1_n_4;
  wire state_reg2__790_carry__1_i_1_n_5;
  wire state_reg2__790_carry__1_i_1_n_6;
  wire state_reg2__790_carry__1_i_1_n_7;
  wire state_reg2__790_carry__1_i_2_n_0;
  wire state_reg2__790_carry__1_i_3_n_0;
  wire state_reg2__790_carry__1_i_4_n_0;
  wire state_reg2__790_carry__1_i_5_n_0;
  wire state_reg2__790_carry__1_i_6_n_0;
  wire state_reg2__790_carry__1_i_6_n_1;
  wire state_reg2__790_carry__1_i_6_n_2;
  wire state_reg2__790_carry__1_i_6_n_3;
  wire state_reg2__790_carry__1_i_6_n_4;
  wire state_reg2__790_carry__1_i_6_n_5;
  wire state_reg2__790_carry__1_i_6_n_6;
  wire state_reg2__790_carry__1_i_6_n_7;
  wire state_reg2__790_carry__1_i_7_n_0;
  wire state_reg2__790_carry__1_i_8_n_0;
  wire state_reg2__790_carry__1_i_9_n_0;
  wire state_reg2__790_carry__1_n_0;
  wire state_reg2__790_carry__1_n_1;
  wire state_reg2__790_carry__1_n_2;
  wire state_reg2__790_carry__1_n_3;
  wire state_reg2__790_carry__2_i_1_n_0;
  wire state_reg2__790_carry__2_i_2_n_0;
  wire state_reg2__790_carry__2_i_3_n_0;
  wire state_reg2__790_carry__2_n_1;
  wire state_reg2__790_carry__2_n_2;
  wire state_reg2__790_carry__2_n_3;
  wire state_reg2__790_carry_i_10_n_0;
  wire state_reg2__790_carry_i_11_n_0;
  wire state_reg2__790_carry_i_12_n_0;
  wire state_reg2__790_carry_i_12_n_1;
  wire state_reg2__790_carry_i_12_n_2;
  wire state_reg2__790_carry_i_12_n_3;
  wire state_reg2__790_carry_i_12_n_4;
  wire state_reg2__790_carry_i_12_n_5;
  wire state_reg2__790_carry_i_12_n_6;
  wire state_reg2__790_carry_i_13_n_0;
  wire state_reg2__790_carry_i_14_n_0;
  wire state_reg2__790_carry_i_15_n_0;
  wire state_reg2__790_carry_i_16_n_0;
  wire state_reg2__790_carry_i_17_n_0;
  wire state_reg2__790_carry_i_18_n_0;
  wire state_reg2__790_carry_i_19_n_0;
  wire state_reg2__790_carry_i_1_n_0;
  wire state_reg2__790_carry_i_1_n_1;
  wire state_reg2__790_carry_i_1_n_2;
  wire state_reg2__790_carry_i_1_n_3;
  wire state_reg2__790_carry_i_1_n_5;
  wire state_reg2__790_carry_i_1_n_6;
  wire state_reg2__790_carry_i_1_n_7;
  wire state_reg2__790_carry_i_20_n_0;
  wire state_reg2__790_carry_i_20_n_1;
  wire state_reg2__790_carry_i_20_n_2;
  wire state_reg2__790_carry_i_20_n_3;
  wire state_reg2__790_carry_i_20_n_4;
  wire state_reg2__790_carry_i_20_n_5;
  wire state_reg2__790_carry_i_20_n_6;
  wire state_reg2__790_carry_i_21_n_0;
  wire state_reg2__790_carry_i_22_n_0;
  wire state_reg2__790_carry_i_23_n_0;
  wire state_reg2__790_carry_i_24_n_0;
  wire state_reg2__790_carry_i_24_n_1;
  wire state_reg2__790_carry_i_24_n_2;
  wire state_reg2__790_carry_i_24_n_3;
  wire state_reg2__790_carry_i_24_n_4;
  wire state_reg2__790_carry_i_24_n_5;
  wire state_reg2__790_carry_i_24_n_6;
  wire state_reg2__790_carry_i_25_n_0;
  wire state_reg2__790_carry_i_26_n_0;
  wire state_reg2__790_carry_i_27_n_0;
  wire state_reg2__790_carry_i_28_n_0;
  wire state_reg2__790_carry_i_28_n_1;
  wire state_reg2__790_carry_i_28_n_2;
  wire state_reg2__790_carry_i_28_n_3;
  wire state_reg2__790_carry_i_28_n_4;
  wire state_reg2__790_carry_i_28_n_5;
  wire state_reg2__790_carry_i_28_n_6;
  wire state_reg2__790_carry_i_29_n_0;
  wire state_reg2__790_carry_i_2_n_0;
  wire state_reg2__790_carry_i_2_n_1;
  wire state_reg2__790_carry_i_2_n_2;
  wire state_reg2__790_carry_i_2_n_3;
  wire state_reg2__790_carry_i_2_n_4;
  wire state_reg2__790_carry_i_2_n_5;
  wire state_reg2__790_carry_i_2_n_6;
  wire state_reg2__790_carry_i_30_n_0;
  wire state_reg2__790_carry_i_31_n_0;
  wire state_reg2__790_carry_i_32_n_0;
  wire state_reg2__790_carry_i_33_n_0;
  wire state_reg2__790_carry_i_34_n_0;
  wire state_reg2__790_carry_i_3_n_0;
  wire state_reg2__790_carry_i_4_n_0;
  wire state_reg2__790_carry_i_5_n_0;
  wire state_reg2__790_carry_i_6_n_0;
  wire state_reg2__790_carry_i_7_n_0;
  wire state_reg2__790_carry_i_7_n_1;
  wire state_reg2__790_carry_i_7_n_2;
  wire state_reg2__790_carry_i_7_n_3;
  wire state_reg2__790_carry_i_7_n_5;
  wire state_reg2__790_carry_i_7_n_6;
  wire state_reg2__790_carry_i_7_n_7;
  wire state_reg2__790_carry_i_8_n_0;
  wire state_reg2__790_carry_i_9_n_0;
  wire state_reg2__790_carry_n_0;
  wire state_reg2__790_carry_n_1;
  wire state_reg2__790_carry_n_2;
  wire state_reg2__790_carry_n_3;
  wire state_reg2_carry__0_i_1_n_0;
  wire state_reg2_carry__0_i_2_n_0;
  wire state_reg2_carry__0_i_3_n_0;
  wire state_reg2_carry__0_i_4_n_0;
  wire state_reg2_carry__0_i_5_n_0;
  wire state_reg2_carry__0_i_6_n_0;
  wire state_reg2_carry__0_i_7_n_0;
  wire state_reg2_carry__0_i_8_n_0;
  wire state_reg2_carry__0_n_0;
  wire state_reg2_carry__0_n_1;
  wire state_reg2_carry__0_n_2;
  wire state_reg2_carry__0_n_3;
  wire state_reg2_carry__0_n_4;
  wire state_reg2_carry__0_n_5;
  wire state_reg2_carry__0_n_6;
  wire state_reg2_carry__0_n_7;
  wire state_reg2_carry__1_i_1_n_0;
  wire state_reg2_carry__1_i_2_n_0;
  wire state_reg2_carry__1_i_3_n_0;
  wire state_reg2_carry__1_i_4_n_0;
  wire state_reg2_carry__1_i_5_n_0;
  wire state_reg2_carry__1_i_6_n_0;
  wire state_reg2_carry__1_n_0;
  wire state_reg2_carry__1_n_2;
  wire state_reg2_carry__1_n_3;
  wire state_reg2_carry__1_n_5;
  wire state_reg2_carry__1_n_6;
  wire state_reg2_carry__1_n_7;
  wire state_reg2_carry_i_1_n_0;
  wire state_reg2_carry_i_2_n_0;
  wire state_reg2_carry_i_3_n_0;
  wire state_reg2_carry_i_4_n_0;
  wire state_reg2_carry_i_5_n_0;
  wire state_reg2_carry_i_6_n_0;
  wire state_reg2_carry_i_7_n_0;
  wire state_reg2_carry_n_0;
  wire state_reg2_carry_n_1;
  wire state_reg2_carry_n_2;
  wire state_reg2_carry_n_3;
  wire state_reg2_carry_n_4;
  wire state_reg2_carry_n_5;
  wire state_reg2_carry_n_6;
  wire state_reg2_carry_n_7;
  wire \state_reg[0]_i_1_n_0 ;
  wire \state_reg[0]_i_2_n_0 ;
  wire \state_reg[0]_i_3_n_0 ;
  wire \state_reg[0]_i_4_n_0 ;
  wire \state_reg[0]_i_5_n_0 ;
  wire \state_reg[1]_i_1_n_0 ;
  wire \state_reg[1]_i_2_n_0 ;
  wire \state_reg[1]_i_3_n_0 ;
  wire \state_reg[1]_i_4_n_0 ;
  wire \state_reg[1]_i_5_n_0 ;
  wire \state_reg[1]_i_6_n_0 ;
  wire \state_reg[2]_i_1_n_0 ;
  wire \state_reg[2]_i_2_n_0 ;
  wire \state_reg[2]_i_3_n_0 ;
  wire \state_reg_reg[2]_0 ;
  wire \state_reg_reg[2]_1 ;
  wire \state_reg_reg_n_0_[1] ;
  wire tick_reg;
  wire tick_reg_0;
  wire tx_start;
  wire tx_start_aux_i_1_n_0;
  wire z_flag_P_i_1_n_0;
  wire z_flag_P_i_2_n_0;
  wire z_flag_reg_P_n_0;
  wire [3:2]NLW_aux0__13_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__13_O_UNCONNECTED;
  wire [3:2]NLW_aux0__18_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__18_O_UNCONNECTED;
  wire [3:2]NLW_aux0__23_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__23_O_UNCONNECTED;
  wire [3:2]NLW_aux0__28_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__28_O_UNCONNECTED;
  wire [3:0]NLW_aux0__2_i_9_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__2_i_9_O_UNCONNECTED;
  wire [3:0]NLW_aux0__3_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__3_O_UNCONNECTED;
  wire [3:2]NLW_aux0__33_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__33_O_UNCONNECTED;
  wire [3:2]NLW_aux0__38_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__38_O_UNCONNECTED;
  wire [3:2]NLW_aux0__43_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__43_O_UNCONNECTED;
  wire [3:2]NLW_aux0__48_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__48_O_UNCONNECTED;
  wire [3:2]NLW_aux0__53_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__53_O_UNCONNECTED;
  wire [3:2]NLW_aux0__58_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__58_O_UNCONNECTED;
  wire [3:2]NLW_aux0__63_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__63_O_UNCONNECTED;
  wire [3:2]NLW_aux0__68_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__68_O_UNCONNECTED;
  wire [3:2]NLW_aux0__73_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__73_O_UNCONNECTED;
  wire [3:3]NLW_aux0__77_O_UNCONNECTED;
  wire [3:2]NLW_aux0__78_CO_UNCONNECTED;
  wire [3:0]NLW_aux0__78_O_UNCONNECTED;
  wire [3:0]NLW_aux0__8_CO_UNCONNECTED;
  wire [3:1]NLW_aux0__8_O_UNCONNECTED;
  wire [3:3]\NLW_out_reg[3]_P_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_P_i_104_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_112_O_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_P_i_123_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_131_O_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_P_i_142_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_150_O_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_P_i_161_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_169_O_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_P_i_180_O_UNCONNECTED ;
  wire [3:1]\NLW_out_reg[7]_P_i_188_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_reg[7]_P_i_188_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_27_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_53_O_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_P_i_58_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_6_O_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_P_i_63_O_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_P_i_68_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_7_O_UNCONNECTED ;
  wire [0:0]\NLW_out_reg[7]_P_i_79_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_8_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_84_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[7]_P_i_9_O_UNCONNECTED ;
  wire [3:0]NLW_state_reg2__790_carry_O_UNCONNECTED;
  wire [3:0]NLW_state_reg2__790_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_state_reg2__790_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_state_reg2__790_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_state_reg2__790_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_state_reg2__790_carry_i_1_O_UNCONNECTED;
  wire [0:0]NLW_state_reg2__790_carry_i_12_O_UNCONNECTED;
  wire [0:0]NLW_state_reg2__790_carry_i_2_O_UNCONNECTED;
  wire [0:0]NLW_state_reg2__790_carry_i_20_O_UNCONNECTED;
  wire [0:0]NLW_state_reg2__790_carry_i_24_O_UNCONNECTED;
  wire [0:0]NLW_state_reg2__790_carry_i_28_O_UNCONNECTED;
  wire [3:3]NLW_state_reg2__790_carry_i_7_O_UNCONNECTED;
  wire [2:2]NLW_state_reg2_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_state_reg2_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAA2AFF3FAA2A0000)) 
    acc_sended_P_i_1
       (.I0(tick_reg_0),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(acc_sended_P_i_2_n_0),
        .I5(acc_sended_reg_P_n_0),
        .O(acc_sended_P_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    acc_sended_P_i_2
       (.I0(\aux[15]_P_i_4_n_0 ),
        .I1(\aux[15]_P_i_3_n_0 ),
        .O(acc_sended_P_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    acc_sended_reg_P
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(acc_sended_P_i_1_n_0),
        .Q(acc_sended_reg_P_n_0),
        .R(1'b0));
  CARRY4 aux0
       (.CI(1'b0),
        .CO({aux0_n_0,aux0_n_1,aux0_n_2,aux0_n_3}),
        .CYINIT(1'b1),
        .DI({aux0_i_1_n_0,aux0_i_2_n_0,aux0_i_3_n_0,1'b1}),
        .O({aux0_n_4,aux0_n_5,aux0_n_6,aux0_n_7}),
        .S({aux0_i_4_n_0,aux0_i_5_n_0,aux0_i_6_n_0,aux0_i_7_n_0}));
  CARRY4 aux0__0
       (.CI(aux0_n_0),
        .CO({aux0__0_n_0,aux0__0_n_1,aux0__0_n_2,aux0__0_n_3}),
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
       (.I0(\div_reg_n_0_[9] ),
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
        .CO({aux0__0_i_9_n_0,aux0__0_i_9_n_1,aux0__0_i_9_n_2,aux0__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\div_reg_n_0_[9] ,\div_reg_n_0_[7] ,\div_reg_n_0_[6] ,\div_reg_n_0_[5] }),
        .O(aux1[9:6]),
        .S({aux0__0_i_10_n_0,aux0__0_i_11_n_0,aux0__0_i_12_n_0,aux0__0_i_13_n_0}));
  CARRY4 aux0__1
       (.CI(aux0__0_n_0),
        .CO({aux0__1_n_0,aux0__1_n_1,aux0__1_n_2,aux0__1_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__1_i_1_n_0,aux0__1_i_2_n_0,aux0__1_i_3_n_0,aux0__1_i_4_n_0}),
        .O({aux0__1_n_4,aux0__1_n_5,aux0__1_n_6,aux0__1_n_7}),
        .S({aux0__1_i_5_n_0,aux0__1_i_6_n_0,aux0__1_i_7_n_0,aux0__1_i_8_n_0}));
  CARRY4 aux0__10
       (.CI(aux0__9_n_0),
        .CO({aux0__10_n_0,aux0__10_n_1,aux0__10_n_2,aux0__10_n_3}),
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
        .CO({aux0__11_n_0,aux0__11_n_1,aux0__11_n_2,aux0__11_n_3}),
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
        .CO({aux0__12_n_0,aux0__12_n_1,aux0__12_n_2,aux0__12_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__7_n_5,aux0__7_n_6,aux0__7_n_7,aux0__6_n_4}),
        .O({aux0__12_n_4,aux0__12_n_5,aux0__12_n_6,aux0__12_n_7}),
        .S({aux0__12_i_1_n_0,aux0__12_i_2_n_0,aux0__12_i_3_n_0,aux0__12_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__12_i_1
       (.I0(aux0__8_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__13_CO_UNCONNECTED[3:2],aux0__13_n_2,aux0__13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__8_n_2,aux0__8_n_2}),
        .O({NLW_aux0__13_O_UNCONNECTED[3:1],aux0__13_n_7}),
        .S({1'b0,1'b0,aux0__13_i_1_n_0,aux0__13_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__13_i_1
       (.I0(aux0__8_n_2),
        .I1(aux0__8_n_7),
        .O(aux0__13_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__13_i_2
       (.I0(aux0__8_n_2),
        .I1(aux0__7_n_4),
        .O(aux0__13_i_2_n_0));
  CARRY4 aux0__14
       (.CI(1'b0),
        .CO({aux0__14_n_0,aux0__14_n_1,aux0__14_n_2,aux0__14_n_3}),
        .CYINIT(aux0__13_n_2),
        .DI({aux0__9_n_5,aux0__9_n_6,aux0__9_n_7,aux0__14_i_1_n_0}),
        .O({aux0__14_n_4,aux0__14_n_5,aux0__14_n_6,aux0__14_n_7}),
        .S({aux0__14_i_2_n_0,aux0__14_i_3_n_0,aux0__14_i_4_n_0,aux0__14_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__14_i_1
       (.I0(\aux_reg[13]_P_n_0 ),
        .O(aux0__14_i_1_n_0));
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
        .I2(\aux_reg[13]_P_n_0 ),
        .O(aux0__14_i_5_n_0));
  CARRY4 aux0__15
       (.CI(aux0__14_n_0),
        .CO({aux0__15_n_0,aux0__15_n_1,aux0__15_n_2,aux0__15_n_3}),
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
        .CO({aux0__16_n_0,aux0__16_n_1,aux0__16_n_2,aux0__16_n_3}),
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
        .CO({aux0__17_n_0,aux0__17_n_1,aux0__17_n_2,aux0__17_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__12_n_5,aux0__12_n_6,aux0__12_n_7,aux0__11_n_4}),
        .O({aux0__17_n_4,aux0__17_n_5,aux0__17_n_6,aux0__17_n_7}),
        .S({aux0__17_i_1_n_0,aux0__17_i_2_n_0,aux0__17_i_3_n_0,aux0__17_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__17_i_1
       (.I0(aux0__13_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__18_CO_UNCONNECTED[3:2],aux0__18_n_2,aux0__18_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__13_n_2,aux0__13_n_2}),
        .O({NLW_aux0__18_O_UNCONNECTED[3:1],aux0__18_n_7}),
        .S({1'b0,1'b0,aux0__18_i_1_n_0,aux0__18_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__18_i_1
       (.I0(aux0__13_n_2),
        .I1(aux0__13_n_7),
        .O(aux0__18_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__18_i_2
       (.I0(aux0__13_n_2),
        .I1(aux0__12_n_4),
        .O(aux0__18_i_2_n_0));
  CARRY4 aux0__19
       (.CI(1'b0),
        .CO({aux0__19_n_0,aux0__19_n_1,aux0__19_n_2,aux0__19_n_3}),
        .CYINIT(aux0__18_n_2),
        .DI({aux0__14_n_5,aux0__14_n_6,aux0__14_n_7,aux0__19_i_1_n_0}),
        .O({aux0__19_n_4,aux0__19_n_5,aux0__19_n_6,aux0__19_n_7}),
        .S({aux0__19_i_2_n_0,aux0__19_i_3_n_0,aux0__19_i_4_n_0,aux0__19_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__19_i_1
       (.I0(\aux_reg[12]_P_n_0 ),
        .O(aux0__19_i_1_n_0));
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
        .I2(\aux_reg[12]_P_n_0 ),
        .O(aux0__19_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__1_i_1
       (.I0(aux1[11]),
        .O(aux0__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__1_i_10
       (.I0(\div_reg_n_0_[10] ),
        .I1(\div_reg_n_0_[9] ),
        .O(aux0__1_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__1_i_11
       (.I0(\div_reg_n_0_[9] ),
        .I1(\div_reg_n_0_[7] ),
        .O(aux0__1_i_11_n_0));
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
        .CO({aux0__1_i_9_n_0,aux0__1_i_9_n_1,aux0__1_i_9_n_2,aux0__1_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\div_reg_n_0_[10] ,\div_reg_n_0_[9] }),
        .O(aux1[13:10]),
        .S({\div_reg_n_0_[10] ,\div_reg_n_0_[9] ,aux0__1_i_10_n_0,aux0__1_i_11_n_0}));
  CARRY4 aux0__2
       (.CI(aux0__1_n_0),
        .CO({aux0__2_n_0,aux0__2_n_1,aux0__2_n_2,aux0__2_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__2_i_1_n_0,aux0__2_i_2_n_0,aux0__2_i_3_n_0,aux0__2_i_4_n_0}),
        .O({aux0__2_n_4,aux0__2_n_5,aux0__2_n_6,aux0__2_n_7}),
        .S({aux0__2_i_5_n_0,aux0__2_i_6_n_0,aux0__2_i_7_n_0,aux0__2_i_8_n_0}));
  CARRY4 aux0__20
       (.CI(aux0__19_n_0),
        .CO({aux0__20_n_0,aux0__20_n_1,aux0__20_n_2,aux0__20_n_3}),
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
        .CO({aux0__21_n_0,aux0__21_n_1,aux0__21_n_2,aux0__21_n_3}),
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
        .CO({aux0__22_n_0,aux0__22_n_1,aux0__22_n_2,aux0__22_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__17_n_5,aux0__17_n_6,aux0__17_n_7,aux0__16_n_4}),
        .O({aux0__22_n_4,aux0__22_n_5,aux0__22_n_6,aux0__22_n_7}),
        .S({aux0__22_i_1_n_0,aux0__22_i_2_n_0,aux0__22_i_3_n_0,aux0__22_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__22_i_1
       (.I0(aux0__18_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__23_CO_UNCONNECTED[3:2],aux0__23_n_2,aux0__23_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__18_n_2,aux0__18_n_2}),
        .O({NLW_aux0__23_O_UNCONNECTED[3:1],aux0__23_n_7}),
        .S({1'b0,1'b0,aux0__23_i_1_n_0,aux0__23_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__23_i_1
       (.I0(aux0__18_n_2),
        .I1(aux0__18_n_7),
        .O(aux0__23_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__23_i_2
       (.I0(aux0__18_n_2),
        .I1(aux0__17_n_4),
        .O(aux0__23_i_2_n_0));
  CARRY4 aux0__24
       (.CI(1'b0),
        .CO({aux0__24_n_0,aux0__24_n_1,aux0__24_n_2,aux0__24_n_3}),
        .CYINIT(aux0__23_n_2),
        .DI({aux0__19_n_5,aux0__19_n_6,aux0__19_n_7,aux0__24_i_1_n_0}),
        .O({aux0__24_n_4,aux0__24_n_5,aux0__24_n_6,aux0__24_n_7}),
        .S({aux0__24_i_2_n_0,aux0__24_i_3_n_0,aux0__24_i_4_n_0,aux0__24_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__24_i_1
       (.I0(\aux_reg[11]_P_n_0 ),
        .O(aux0__24_i_1_n_0));
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
        .I2(\aux_reg[11]_P_n_0 ),
        .O(aux0__24_i_5_n_0));
  CARRY4 aux0__25
       (.CI(aux0__24_n_0),
        .CO({aux0__25_n_0,aux0__25_n_1,aux0__25_n_2,aux0__25_n_3}),
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
        .CO({aux0__26_n_0,aux0__26_n_1,aux0__26_n_2,aux0__26_n_3}),
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
        .CO({aux0__27_n_0,aux0__27_n_1,aux0__27_n_2,aux0__27_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__22_n_5,aux0__22_n_6,aux0__22_n_7,aux0__21_n_4}),
        .O({aux0__27_n_4,aux0__27_n_5,aux0__27_n_6,aux0__27_n_7}),
        .S({aux0__27_i_1_n_0,aux0__27_i_2_n_0,aux0__27_i_3_n_0,aux0__27_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__27_i_1
       (.I0(aux0__23_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__28_CO_UNCONNECTED[3:2],aux0__28_n_2,aux0__28_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__23_n_2,aux0__23_n_2}),
        .O({NLW_aux0__28_O_UNCONNECTED[3:1],aux0__28_n_7}),
        .S({1'b0,1'b0,aux0__28_i_1_n_0,aux0__28_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__28_i_1
       (.I0(aux0__23_n_2),
        .I1(aux0__23_n_7),
        .O(aux0__28_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__28_i_2
       (.I0(aux0__23_n_2),
        .I1(aux0__22_n_4),
        .O(aux0__28_i_2_n_0));
  CARRY4 aux0__29
       (.CI(1'b0),
        .CO({aux0__29_n_0,aux0__29_n_1,aux0__29_n_2,aux0__29_n_3}),
        .CYINIT(aux0__28_n_2),
        .DI({aux0__24_n_5,aux0__24_n_6,aux0__24_n_7,aux0__29_i_1_n_0}),
        .O({aux0__29_n_4,aux0__29_n_5,aux0__29_n_6,aux0__29_n_7}),
        .S({aux0__29_i_2_n_0,aux0__29_i_3_n_0,aux0__29_i_4_n_0,aux0__29_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__29_i_1
       (.I0(\aux_reg[10]_P_n_0 ),
        .O(aux0__29_i_1_n_0));
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
        .I2(\aux_reg[10]_P_n_0 ),
        .O(aux0__29_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__2_i_1
       (.I0(aux1[15]),
        .O(aux0__2_i_1_n_0));
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
        .CO({NLW_aux0__2_i_9_CO_UNCONNECTED[3:2],aux1[15],NLW_aux0__2_i_9_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\div_reg_n_0_[10] }),
        .O({NLW_aux0__2_i_9_O_UNCONNECTED[3:1],aux1[14]}),
        .S({1'b0,1'b0,1'b1,\div_reg_n_0_[10] }));
  CARRY4 aux0__3
       (.CI(aux0__2_n_0),
        .CO({NLW_aux0__3_CO_UNCONNECTED[3:2],aux0__3_n_2,NLW_aux0__3_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,aux0__3_i_1_n_0}),
        .O({NLW_aux0__3_O_UNCONNECTED[3:1],aux0__3_n_7}),
        .S({1'b0,1'b0,1'b1,aux0__3_i_2_n_0}));
  CARRY4 aux0__30
       (.CI(aux0__29_n_0),
        .CO({aux0__30_n_0,aux0__30_n_1,aux0__30_n_2,aux0__30_n_3}),
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
        .CO({aux0__31_n_0,aux0__31_n_1,aux0__31_n_2,aux0__31_n_3}),
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
        .CO({aux0__32_n_0,aux0__32_n_1,aux0__32_n_2,aux0__32_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__27_n_5,aux0__27_n_6,aux0__27_n_7,aux0__26_n_4}),
        .O({aux0__32_n_4,aux0__32_n_5,aux0__32_n_6,aux0__32_n_7}),
        .S({aux0__32_i_1_n_0,aux0__32_i_2_n_0,aux0__32_i_3_n_0,aux0__32_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__32_i_1
       (.I0(aux0__28_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__33_CO_UNCONNECTED[3:2],aux0__33_n_2,aux0__33_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__28_n_2,aux0__28_n_2}),
        .O({NLW_aux0__33_O_UNCONNECTED[3:1],aux0__33_n_7}),
        .S({1'b0,1'b0,aux0__33_i_1_n_0,aux0__33_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__33_i_1
       (.I0(aux0__28_n_2),
        .I1(aux0__28_n_7),
        .O(aux0__33_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__33_i_2
       (.I0(aux0__28_n_2),
        .I1(aux0__27_n_4),
        .O(aux0__33_i_2_n_0));
  CARRY4 aux0__34
       (.CI(1'b0),
        .CO({aux0__34_n_0,aux0__34_n_1,aux0__34_n_2,aux0__34_n_3}),
        .CYINIT(aux0__33_n_2),
        .DI({aux0__29_n_5,aux0__29_n_6,aux0__29_n_7,aux0__34_i_1_n_0}),
        .O({aux0__34_n_4,aux0__34_n_5,aux0__34_n_6,aux0__34_n_7}),
        .S({aux0__34_i_2_n_0,aux0__34_i_3_n_0,aux0__34_i_4_n_0,aux0__34_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__34_i_1
       (.I0(\aux_reg[9]_P_n_0 ),
        .O(aux0__34_i_1_n_0));
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
        .I2(\aux_reg[9]_P_n_0 ),
        .O(aux0__34_i_5_n_0));
  CARRY4 aux0__35
       (.CI(aux0__34_n_0),
        .CO({aux0__35_n_0,aux0__35_n_1,aux0__35_n_2,aux0__35_n_3}),
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
        .CO({aux0__36_n_0,aux0__36_n_1,aux0__36_n_2,aux0__36_n_3}),
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
        .CO({aux0__37_n_0,aux0__37_n_1,aux0__37_n_2,aux0__37_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__32_n_5,aux0__32_n_6,aux0__32_n_7,aux0__31_n_4}),
        .O({aux0__37_n_4,aux0__37_n_5,aux0__37_n_6,aux0__37_n_7}),
        .S({aux0__37_i_1_n_0,aux0__37_i_2_n_0,aux0__37_i_3_n_0,aux0__37_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__37_i_1
       (.I0(aux0__33_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__38_CO_UNCONNECTED[3:2],aux0__38_n_2,aux0__38_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__33_n_2,aux0__33_n_2}),
        .O({NLW_aux0__38_O_UNCONNECTED[3:1],aux0__38_n_7}),
        .S({1'b0,1'b0,aux0__38_i_1_n_0,aux0__38_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__38_i_1
       (.I0(aux0__33_n_2),
        .I1(aux0__33_n_7),
        .O(aux0__38_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__38_i_2
       (.I0(aux0__33_n_2),
        .I1(aux0__32_n_4),
        .O(aux0__38_i_2_n_0));
  CARRY4 aux0__39
       (.CI(1'b0),
        .CO({aux0__39_n_0,aux0__39_n_1,aux0__39_n_2,aux0__39_n_3}),
        .CYINIT(aux0__38_n_2),
        .DI({aux0__34_n_5,aux0__34_n_6,aux0__34_n_7,aux0__39_i_1_n_0}),
        .O({aux0__39_n_4,aux0__39_n_5,aux0__39_n_6,aux0__39_n_7}),
        .S({aux0__39_i_2_n_0,aux0__39_i_3_n_0,aux0__39_i_4_n_0,aux0__39_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__39_i_1
       (.I0(\aux_reg[8]_P_n_0 ),
        .O(aux0__39_i_1_n_0));
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
        .I2(\aux_reg[8]_P_n_0 ),
        .O(aux0__39_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__3_i_1
       (.I0(\div_reg_n_0_[10] ),
        .O(aux0__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    aux0__3_i_2
       (.I0(\div_reg_n_0_[10] ),
        .O(aux0__3_i_2_n_0));
  CARRY4 aux0__4
       (.CI(1'b0),
        .CO({aux0__4_n_0,aux0__4_n_1,aux0__4_n_2,aux0__4_n_3}),
        .CYINIT(aux0__3_n_2),
        .DI({aux0_n_4,aux0_n_5,aux0_n_6,aux0_n_7}),
        .O({aux0__4_n_4,aux0__4_n_5,aux0__4_n_6,aux0__4_n_7}),
        .S({aux0__4_i_1_n_0,aux0__4_i_2_n_0,aux0__4_i_3_n_0,aux0__4_i_4_n_0}));
  CARRY4 aux0__40
       (.CI(aux0__39_n_0),
        .CO({aux0__40_n_0,aux0__40_n_1,aux0__40_n_2,aux0__40_n_3}),
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
        .CO({aux0__41_n_0,aux0__41_n_1,aux0__41_n_2,aux0__41_n_3}),
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
        .CO({aux0__42_n_0,aux0__42_n_1,aux0__42_n_2,aux0__42_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__37_n_5,aux0__37_n_6,aux0__37_n_7,aux0__36_n_4}),
        .O({aux0__42_n_4,aux0__42_n_5,aux0__42_n_6,aux0__42_n_7}),
        .S({aux0__42_i_1_n_0,aux0__42_i_2_n_0,aux0__42_i_3_n_0,aux0__42_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__42_i_1
       (.I0(aux0__38_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__43_CO_UNCONNECTED[3:2],aux0__43_n_2,aux0__43_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__38_n_2,aux0__38_n_2}),
        .O({NLW_aux0__43_O_UNCONNECTED[3:1],aux0__43_n_7}),
        .S({1'b0,1'b0,aux0__43_i_1_n_0,aux0__43_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__43_i_1
       (.I0(aux0__38_n_2),
        .I1(aux0__38_n_7),
        .O(aux0__43_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__43_i_2
       (.I0(aux0__38_n_2),
        .I1(aux0__37_n_4),
        .O(aux0__43_i_2_n_0));
  CARRY4 aux0__44
       (.CI(1'b0),
        .CO({aux0__44_n_0,aux0__44_n_1,aux0__44_n_2,aux0__44_n_3}),
        .CYINIT(aux0__43_n_2),
        .DI({aux0__39_n_5,aux0__39_n_6,aux0__39_n_7,aux0__44_i_1_n_0}),
        .O({aux0__44_n_4,aux0__44_n_5,aux0__44_n_6,aux0__44_n_7}),
        .S({aux0__44_i_2_n_0,aux0__44_i_3_n_0,aux0__44_i_4_n_0,aux0__44_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__44_i_1
       (.I0(\aux_reg[7]_P_n_0 ),
        .O(aux0__44_i_1_n_0));
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
        .I2(\aux_reg[7]_P_n_0 ),
        .O(aux0__44_i_5_n_0));
  CARRY4 aux0__45
       (.CI(aux0__44_n_0),
        .CO({aux0__45_n_0,aux0__45_n_1,aux0__45_n_2,aux0__45_n_3}),
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
        .CO({aux0__46_n_0,aux0__46_n_1,aux0__46_n_2,aux0__46_n_3}),
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
        .CO({aux0__47_n_0,aux0__47_n_1,aux0__47_n_2,aux0__47_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__42_n_5,aux0__42_n_6,aux0__42_n_7,aux0__41_n_4}),
        .O({aux0__47_n_4,aux0__47_n_5,aux0__47_n_6,aux0__47_n_7}),
        .S({aux0__47_i_1_n_0,aux0__47_i_2_n_0,aux0__47_i_3_n_0,aux0__47_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__47_i_1
       (.I0(aux0__43_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__48_CO_UNCONNECTED[3:2],aux0__48_n_2,aux0__48_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__43_n_2,aux0__43_n_2}),
        .O({NLW_aux0__48_O_UNCONNECTED[3:1],aux0__48_n_7}),
        .S({1'b0,1'b0,aux0__48_i_1_n_0,aux0__48_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__48_i_1
       (.I0(aux0__43_n_2),
        .I1(aux0__43_n_7),
        .O(aux0__48_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__48_i_2
       (.I0(aux0__43_n_2),
        .I1(aux0__42_n_4),
        .O(aux0__48_i_2_n_0));
  CARRY4 aux0__49
       (.CI(1'b0),
        .CO({aux0__49_n_0,aux0__49_n_1,aux0__49_n_2,aux0__49_n_3}),
        .CYINIT(aux0__48_n_2),
        .DI({aux0__44_n_5,aux0__44_n_6,aux0__44_n_7,aux0__49_i_1_n_0}),
        .O({aux0__49_n_4,aux0__49_n_5,aux0__49_n_6,aux0__49_n_7}),
        .S({aux0__49_i_2_n_0,aux0__49_i_3_n_0,aux0__49_i_4_n_0,aux0__49_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__49_i_1
       (.I0(\aux_reg[6]_P_n_0 ),
        .O(aux0__49_i_1_n_0));
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
        .I2(\aux_reg[6]_P_n_0 ),
        .O(aux0__49_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__4_i_1
       (.I0(aux1[4]),
        .I1(aux0__3_n_2),
        .I2(aux0_n_4),
        .O(aux0__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__4_i_2
       (.I0(aux1[3]),
        .I1(aux0__3_n_2),
        .I2(aux0_n_5),
        .O(aux0__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__4_i_3
       (.I0(aux1[2]),
        .I1(aux0__3_n_2),
        .I2(aux0_n_6),
        .O(aux0__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__4_i_4
       (.I0(aux0__3_n_2),
        .I1(\div_reg_n_0_[0] ),
        .I2(aux0_n_7),
        .O(aux0__4_i_4_n_0));
  CARRY4 aux0__5
       (.CI(aux0__4_n_0),
        .CO({aux0__5_n_0,aux0__5_n_1,aux0__5_n_2,aux0__5_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__0_n_4,aux0__0_n_5,aux0__0_n_6,aux0__0_n_7}),
        .O({aux0__5_n_4,aux0__5_n_5,aux0__5_n_6,aux0__5_n_7}),
        .S({aux0__5_i_1_n_0,aux0__5_i_2_n_0,aux0__5_i_3_n_0,aux0__5_i_4_n_0}));
  CARRY4 aux0__50
       (.CI(aux0__49_n_0),
        .CO({aux0__50_n_0,aux0__50_n_1,aux0__50_n_2,aux0__50_n_3}),
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
        .CO({aux0__51_n_0,aux0__51_n_1,aux0__51_n_2,aux0__51_n_3}),
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
        .CO({aux0__52_n_0,aux0__52_n_1,aux0__52_n_2,aux0__52_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__47_n_5,aux0__47_n_6,aux0__47_n_7,aux0__46_n_4}),
        .O({aux0__52_n_4,aux0__52_n_5,aux0__52_n_6,aux0__52_n_7}),
        .S({aux0__52_i_1_n_0,aux0__52_i_2_n_0,aux0__52_i_3_n_0,aux0__52_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__52_i_1
       (.I0(aux0__48_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__53_CO_UNCONNECTED[3:2],aux0__53_n_2,aux0__53_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__48_n_2,aux0__48_n_2}),
        .O({NLW_aux0__53_O_UNCONNECTED[3:1],aux0__53_n_7}),
        .S({1'b0,1'b0,aux0__53_i_1_n_0,aux0__53_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__53_i_1
       (.I0(aux0__48_n_2),
        .I1(aux0__48_n_7),
        .O(aux0__53_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__53_i_2
       (.I0(aux0__48_n_2),
        .I1(aux0__47_n_4),
        .O(aux0__53_i_2_n_0));
  CARRY4 aux0__54
       (.CI(1'b0),
        .CO({aux0__54_n_0,aux0__54_n_1,aux0__54_n_2,aux0__54_n_3}),
        .CYINIT(aux0__53_n_2),
        .DI({aux0__49_n_5,aux0__49_n_6,aux0__49_n_7,aux0__54_i_1_n_0}),
        .O({aux0__54_n_4,aux0__54_n_5,aux0__54_n_6,aux0__54_n_7}),
        .S({aux0__54_i_2_n_0,aux0__54_i_3_n_0,aux0__54_i_4_n_0,aux0__54_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__54_i_1
       (.I0(\aux_reg[5]_P_n_0 ),
        .O(aux0__54_i_1_n_0));
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
        .I2(\aux_reg[5]_P_n_0 ),
        .O(aux0__54_i_5_n_0));
  CARRY4 aux0__55
       (.CI(aux0__54_n_0),
        .CO({aux0__55_n_0,aux0__55_n_1,aux0__55_n_2,aux0__55_n_3}),
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
        .CO({aux0__56_n_0,aux0__56_n_1,aux0__56_n_2,aux0__56_n_3}),
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
        .CO({aux0__57_n_0,aux0__57_n_1,aux0__57_n_2,aux0__57_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__52_n_5,aux0__52_n_6,aux0__52_n_7,aux0__51_n_4}),
        .O({aux0__57_n_4,aux0__57_n_5,aux0__57_n_6,aux0__57_n_7}),
        .S({aux0__57_i_1_n_0,aux0__57_i_2_n_0,aux0__57_i_3_n_0,aux0__57_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__57_i_1
       (.I0(aux0__53_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__58_CO_UNCONNECTED[3:2],aux0__58_n_2,aux0__58_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__53_n_2,aux0__53_n_2}),
        .O({NLW_aux0__58_O_UNCONNECTED[3:1],aux0__58_n_7}),
        .S({1'b0,1'b0,aux0__58_i_1_n_0,aux0__58_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__58_i_1
       (.I0(aux0__53_n_2),
        .I1(aux0__53_n_7),
        .O(aux0__58_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__58_i_2
       (.I0(aux0__53_n_2),
        .I1(aux0__52_n_4),
        .O(aux0__58_i_2_n_0));
  CARRY4 aux0__59
       (.CI(1'b0),
        .CO({aux0__59_n_0,aux0__59_n_1,aux0__59_n_2,aux0__59_n_3}),
        .CYINIT(aux0__58_n_2),
        .DI({aux0__54_n_5,aux0__54_n_6,aux0__54_n_7,aux0__59_i_1_n_0}),
        .O({aux0__59_n_4,aux0__59_n_5,aux0__59_n_6,aux0__59_n_7}),
        .S({aux0__59_i_2_n_0,aux0__59_i_3_n_0,aux0__59_i_4_n_0,aux0__59_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__59_i_1
       (.I0(\aux_reg[4]_P_n_0 ),
        .O(aux0__59_i_1_n_0));
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
        .I2(\aux_reg[4]_P_n_0 ),
        .O(aux0__59_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__5_i_1
       (.I0(aux1[8]),
        .I1(aux0__3_n_2),
        .I2(aux0__0_n_4),
        .O(aux0__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__5_i_2
       (.I0(aux1[7]),
        .I1(aux0__3_n_2),
        .I2(aux0__0_n_5),
        .O(aux0__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__5_i_3
       (.I0(aux1[6]),
        .I1(aux0__3_n_2),
        .I2(aux0__0_n_6),
        .O(aux0__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__5_i_4
       (.I0(aux1[5]),
        .I1(aux0__3_n_2),
        .I2(aux0__0_n_7),
        .O(aux0__5_i_4_n_0));
  CARRY4 aux0__6
       (.CI(aux0__5_n_0),
        .CO({aux0__6_n_0,aux0__6_n_1,aux0__6_n_2,aux0__6_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__1_n_4,aux0__1_n_5,aux0__1_n_6,aux0__1_n_7}),
        .O({aux0__6_n_4,aux0__6_n_5,aux0__6_n_6,aux0__6_n_7}),
        .S({aux0__6_i_1_n_0,aux0__6_i_2_n_0,aux0__6_i_3_n_0,aux0__6_i_4_n_0}));
  CARRY4 aux0__60
       (.CI(aux0__59_n_0),
        .CO({aux0__60_n_0,aux0__60_n_1,aux0__60_n_2,aux0__60_n_3}),
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
        .CO({aux0__61_n_0,aux0__61_n_1,aux0__61_n_2,aux0__61_n_3}),
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
        .CO({aux0__62_n_0,aux0__62_n_1,aux0__62_n_2,aux0__62_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__57_n_5,aux0__57_n_6,aux0__57_n_7,aux0__56_n_4}),
        .O({aux0__62_n_4,aux0__62_n_5,aux0__62_n_6,aux0__62_n_7}),
        .S({aux0__62_i_1_n_0,aux0__62_i_2_n_0,aux0__62_i_3_n_0,aux0__62_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__62_i_1
       (.I0(aux0__58_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__63_CO_UNCONNECTED[3:2],aux0__63_n_2,aux0__63_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__58_n_2,aux0__58_n_2}),
        .O({NLW_aux0__63_O_UNCONNECTED[3:1],aux0__63_n_7}),
        .S({1'b0,1'b0,aux0__63_i_1_n_0,aux0__63_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__63_i_1
       (.I0(aux0__58_n_2),
        .I1(aux0__58_n_7),
        .O(aux0__63_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__63_i_2
       (.I0(aux0__58_n_2),
        .I1(aux0__57_n_4),
        .O(aux0__63_i_2_n_0));
  CARRY4 aux0__64
       (.CI(1'b0),
        .CO({aux0__64_n_0,aux0__64_n_1,aux0__64_n_2,aux0__64_n_3}),
        .CYINIT(aux0__63_n_2),
        .DI({aux0__59_n_5,aux0__59_n_6,aux0__59_n_7,aux0__64_i_1_n_0}),
        .O({aux0__64_n_4,aux0__64_n_5,aux0__64_n_6,aux0__64_n_7}),
        .S({aux0__64_i_2_n_0,aux0__64_i_3_n_0,aux0__64_i_4_n_0,aux0__64_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__64_i_1
       (.I0(\aux_reg[3]_P_n_0 ),
        .O(aux0__64_i_1_n_0));
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
        .I2(\aux_reg[3]_P_n_0 ),
        .O(aux0__64_i_5_n_0));
  CARRY4 aux0__65
       (.CI(aux0__64_n_0),
        .CO({aux0__65_n_0,aux0__65_n_1,aux0__65_n_2,aux0__65_n_3}),
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
        .CO({aux0__66_n_0,aux0__66_n_1,aux0__66_n_2,aux0__66_n_3}),
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
        .CO({aux0__67_n_0,aux0__67_n_1,aux0__67_n_2,aux0__67_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__62_n_5,aux0__62_n_6,aux0__62_n_7,aux0__61_n_4}),
        .O({aux0__67_n_4,aux0__67_n_5,aux0__67_n_6,aux0__67_n_7}),
        .S({aux0__67_i_1_n_0,aux0__67_i_2_n_0,aux0__67_i_3_n_0,aux0__67_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__67_i_1
       (.I0(aux0__63_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__68_CO_UNCONNECTED[3:2],aux0__68_n_2,aux0__68_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__63_n_2,aux0__63_n_2}),
        .O({NLW_aux0__68_O_UNCONNECTED[3:1],aux0__68_n_7}),
        .S({1'b0,1'b0,aux0__68_i_1_n_0,aux0__68_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__68_i_1
       (.I0(aux0__63_n_2),
        .I1(aux0__63_n_7),
        .O(aux0__68_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__68_i_2
       (.I0(aux0__63_n_2),
        .I1(aux0__62_n_4),
        .O(aux0__68_i_2_n_0));
  CARRY4 aux0__69
       (.CI(1'b0),
        .CO({aux0__69_n_0,aux0__69_n_1,aux0__69_n_2,aux0__69_n_3}),
        .CYINIT(aux0__68_n_2),
        .DI({aux0__64_n_5,aux0__64_n_6,aux0__64_n_7,aux0__69_i_1_n_0}),
        .O({aux0__69_n_4,aux0__69_n_5,aux0__69_n_6,aux0__69_n_7}),
        .S({aux0__69_i_2_n_0,aux0__69_i_3_n_0,aux0__69_i_4_n_0,aux0__69_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__69_i_1
       (.I0(\aux_reg[2]_P_n_0 ),
        .O(aux0__69_i_1_n_0));
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
        .I2(\aux_reg[2]_P_n_0 ),
        .O(aux0__69_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__6_i_1
       (.I0(aux1[12]),
        .I1(aux0__3_n_2),
        .I2(aux0__1_n_4),
        .O(aux0__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__6_i_2
       (.I0(aux1[11]),
        .I1(aux0__3_n_2),
        .I2(aux0__1_n_5),
        .O(aux0__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__6_i_3
       (.I0(aux1[10]),
        .I1(aux0__3_n_2),
        .I2(aux0__1_n_6),
        .O(aux0__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__6_i_4
       (.I0(aux1[9]),
        .I1(aux0__3_n_2),
        .I2(aux0__1_n_7),
        .O(aux0__6_i_4_n_0));
  CARRY4 aux0__7
       (.CI(aux0__6_n_0),
        .CO({aux0__7_n_0,aux0__7_n_1,aux0__7_n_2,aux0__7_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__2_n_4,aux0__2_n_5,aux0__2_n_6,aux0__2_n_7}),
        .O({aux0__7_n_4,aux0__7_n_5,aux0__7_n_6,aux0__7_n_7}),
        .S({aux0__7_i_1_n_0,aux0__7_i_2_n_0,aux0__7_i_3_n_0,aux0__7_i_4_n_0}));
  CARRY4 aux0__70
       (.CI(aux0__69_n_0),
        .CO({aux0__70_n_0,aux0__70_n_1,aux0__70_n_2,aux0__70_n_3}),
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
        .CO({aux0__71_n_0,aux0__71_n_1,aux0__71_n_2,aux0__71_n_3}),
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
        .CO({aux0__72_n_0,aux0__72_n_1,aux0__72_n_2,aux0__72_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__67_n_5,aux0__67_n_6,aux0__67_n_7,aux0__66_n_4}),
        .O({aux0__72_n_4,aux0__72_n_5,aux0__72_n_6,aux0__72_n_7}),
        .S({aux0__72_i_1_n_0,aux0__72_i_2_n_0,aux0__72_i_3_n_0,aux0__72_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__72_i_1
       (.I0(aux0__68_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__73_CO_UNCONNECTED[3:2],aux0__73_n_2,aux0__73_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__68_n_2,aux0__68_n_2}),
        .O({NLW_aux0__73_O_UNCONNECTED[3:1],aux0__73_n_7}),
        .S({1'b0,1'b0,aux0__73_i_1_n_0,aux0__73_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__73_i_1
       (.I0(aux0__68_n_2),
        .I1(aux0__68_n_7),
        .O(aux0__73_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__73_i_2
       (.I0(aux0__68_n_2),
        .I1(aux0__67_n_4),
        .O(aux0__73_i_2_n_0));
  CARRY4 aux0__74
       (.CI(1'b0),
        .CO({aux0__74_n_0,aux0__74_n_1,aux0__74_n_2,aux0__74_n_3}),
        .CYINIT(aux0__73_n_2),
        .DI({aux0__69_n_5,aux0__69_n_6,aux0__69_n_7,aux0__74_i_1_n_0}),
        .O({aux0__74_n_4,aux0__74_n_5,aux0__74_n_6,aux0__74_n_7}),
        .S({aux0__74_i_2_n_0,aux0__74_i_3_n_0,aux0__74_i_4_n_0,aux0__74_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__74_i_1
       (.I0(\aux_reg[1]_P_n_0 ),
        .O(aux0__74_i_1_n_0));
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
        .I2(\aux_reg[1]_P_n_0 ),
        .O(aux0__74_i_5_n_0));
  CARRY4 aux0__75
       (.CI(aux0__74_n_0),
        .CO({aux0__75_n_0,aux0__75_n_1,aux0__75_n_2,aux0__75_n_3}),
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
        .CO({aux0__76_n_0,aux0__76_n_1,aux0__76_n_2,aux0__76_n_3}),
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
        .CO({aux0__77_n_0,aux0__77_n_1,aux0__77_n_2,aux0__77_n_3}),
        .CYINIT(1'b0),
        .DI({aux0__72_n_5,aux0__72_n_6,aux0__72_n_7,aux0__71_n_4}),
        .O({NLW_aux0__77_O_UNCONNECTED[3],aux0__77_n_5,aux0__77_n_6,aux0__77_n_7}),
        .S({aux0__77_i_1_n_0,aux0__77_i_2_n_0,aux0__77_i_3_n_0,aux0__77_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__77_i_1
       (.I0(aux0__73_n_2),
        .I1(\div_reg_n_0_[10] ),
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
        .CO({NLW_aux0__78_CO_UNCONNECTED[3:2],aux0__78_n_2,aux0__78_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,aux0__73_n_2,aux0__73_n_2}),
        .O(NLW_aux0__78_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,aux0__78_i_1_n_0,aux0__78_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__78_i_1
       (.I0(aux0__73_n_2),
        .I1(aux0__73_n_7),
        .O(aux0__78_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__78_i_2
       (.I0(aux0__73_n_2),
        .I1(aux0__72_n_4),
        .O(aux0__78_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__7_i_1
       (.I0(\div_reg_n_0_[10] ),
        .I1(aux0__3_n_2),
        .I2(aux0__2_n_4),
        .O(aux0__7_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__7_i_2
       (.I0(aux1[15]),
        .I1(aux0__3_n_2),
        .I2(aux0__2_n_5),
        .O(aux0__7_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__7_i_3
       (.I0(aux1[14]),
        .I1(aux0__3_n_2),
        .I2(aux0__2_n_6),
        .O(aux0__7_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    aux0__7_i_4
       (.I0(aux1[13]),
        .I1(aux0__3_n_2),
        .I2(aux0__2_n_7),
        .O(aux0__7_i_4_n_0));
  CARRY4 aux0__8
       (.CI(aux0__7_n_0),
        .CO({NLW_aux0__8_CO_UNCONNECTED[3:2],aux0__8_n_2,NLW_aux0__8_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,aux0__3_n_2}),
        .O({NLW_aux0__8_O_UNCONNECTED[3:1],aux0__8_n_7}),
        .S({1'b0,1'b0,1'b1,aux0__8_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    aux0__8_i_1
       (.I0(aux0__3_n_2),
        .I1(aux0__3_n_7),
        .O(aux0__8_i_1_n_0));
  CARRY4 aux0__9
       (.CI(1'b0),
        .CO({aux0__9_n_0,aux0__9_n_1,aux0__9_n_2,aux0__9_n_3}),
        .CYINIT(aux0__8_n_2),
        .DI({aux0__4_n_5,aux0__4_n_6,aux0__4_n_7,aux0__9_i_1_n_0}),
        .O({aux0__9_n_4,aux0__9_n_5,aux0__9_n_6,aux0__9_n_7}),
        .S({aux0__9_i_2_n_0,aux0__9_i_3_n_0,aux0__9_i_4_n_0,aux0__9_i_5_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    aux0__9_i_1
       (.I0(\aux_reg[14]_P_n_0 ),
        .O(aux0__9_i_1_n_0));
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
        .I2(\aux_reg[14]_P_n_0 ),
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
       (.I0(\aux_reg[15]_P_n_0 ),
        .O(aux0_i_7_n_0));
  CARRY4 aux0_i_8
       (.CI(1'b0),
        .CO({aux0_i_8_n_0,aux0_i_8_n_1,aux0_i_8_n_2,aux0_i_8_n_3}),
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
  LUT6 #(
    .INIT(64'h2F222F2F2F222222)) 
    \aux[0]_P_i_1 
       (.I0(In_Data[0]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\aux_Count_reg[0]_P_n_0 ),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux_reg[0]_P_n_0 ),
        .O(\aux[0]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \aux[10]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[10]),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\aux_Count_reg[10]_P_n_0 ),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[10]_P_i_3_n_0 ),
        .O(\aux[10]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \aux[10]_P_i_2 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\state_reg_reg[2]_0 ),
        .I2(\state_reg_reg[2]_1 ),
        .O(\aux[10]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF1E00E1)) 
    \aux[10]_P_i_3 
       (.I0(\aux[11]_P_i_4_n_0 ),
        .I1(\aux[10]_P_i_4_n_0 ),
        .I2(aux1[10]),
        .I3(aux0__78_n_2),
        .I4(aux0__76_n_6),
        .I5(\aux[15]_P_i_4_n_0 ),
        .O(\aux[10]_P_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \aux[10]_P_i_4 
       (.I0(aux1[9]),
        .I1(aux0__76_n_7),
        .O(\aux[10]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \aux[11]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[11]),
        .I2(\aux[14]_P_i_2_n_0 ),
        .I3(aux0__76_n_5),
        .I4(aux0__78_n_2),
        .I5(\aux[11]_P_i_2_n_0 ),
        .O(\aux[11]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF1110EEE0EEEF111)) 
    \aux[11]_P_i_2 
       (.I0(\aux[11]_P_i_3_n_0 ),
        .I1(\aux[11]_P_i_4_n_0 ),
        .I2(aux1[10]),
        .I3(aux0__76_n_6),
        .I4(aux0__76_n_5),
        .I5(aux1[11]),
        .O(\aux[11]_P_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \aux[11]_P_i_3 
       (.I0(aux0__76_n_7),
        .I1(aux1[9]),
        .I2(aux0__76_n_6),
        .I3(aux1[10]),
        .O(\aux[11]_P_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00070777)) 
    \aux[11]_P_i_4 
       (.I0(aux1[9]),
        .I1(aux0__76_n_7),
        .I2(aux1[8]),
        .I3(aux0__75_n_4),
        .I4(\aux[8]_P_i_3_n_0 ),
        .O(\aux[11]_P_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \aux[12]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[12]),
        .I2(\aux[12]_P_i_2_n_0 ),
        .O(\aux[12]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F906)) 
    \aux[12]_P_i_2 
       (.I0(\aux[12]_P_i_3_n_0 ),
        .I1(aux1[12]),
        .I2(aux0__78_n_2),
        .I3(aux0__76_n_4),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[10]_P_i_2_n_0 ),
        .O(\aux[12]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55515100)) 
    \aux[12]_P_i_3 
       (.I0(\aux[14]_P_i_5_n_0 ),
        .I1(\aux[12]_P_i_4_n_0 ),
        .I2(\aux[12]_P_i_5_n_0 ),
        .I3(aux1[7]),
        .I4(aux0__75_n_5),
        .I5(\aux[14]_P_i_6_n_0 ),
        .O(\aux[12]_P_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \aux[12]_P_i_4 
       (.I0(aux1[6]),
        .I1(aux0__75_n_6),
        .O(\aux[12]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \aux[12]_P_i_5 
       (.I0(\aux[12]_P_i_6_n_0 ),
        .I1(aux0__75_n_7),
        .I2(aux1[5]),
        .I3(aux0__74_n_4),
        .I4(aux1[4]),
        .I5(\aux[4]_P_i_3_n_0 ),
        .O(\aux[12]_P_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \aux[12]_P_i_6 
       (.I0(aux1[6]),
        .I1(aux0__75_n_6),
        .O(\aux[12]_P_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \aux[13]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[13]),
        .I2(\aux[13]_P_i_2_n_0 ),
        .O(\aux[13]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F906)) 
    \aux[13]_P_i_2 
       (.I0(aux1[13]),
        .I1(\aux[14]_P_i_4_n_0 ),
        .I2(aux0__78_n_2),
        .I3(aux0__77_n_7),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[10]_P_i_2_n_0 ),
        .O(\aux[13]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \aux[14]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[14]),
        .I2(\aux[14]_P_i_2_n_0 ),
        .I3(aux0__77_n_6),
        .I4(aux0__78_n_2),
        .I5(\aux[14]_P_i_3_n_0 ),
        .O(\aux[14]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \aux[14]_P_i_2 
       (.I0(\aux[15]_P_i_4_n_0 ),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(\aux[14]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEAABBFABBFFEEA)) 
    \aux[14]_P_i_3 
       (.I0(aux0__78_n_2),
        .I1(aux1[13]),
        .I2(aux0__77_n_7),
        .I3(\aux[14]_P_i_4_n_0 ),
        .I4(aux1[14]),
        .I5(aux0__77_n_6),
        .O(\aux[14]_P_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4F400)) 
    \aux[14]_P_i_4 
       (.I0(\aux[14]_P_i_5_n_0 ),
        .I1(\aux[8]_P_i_3_n_0 ),
        .I2(\aux[14]_P_i_6_n_0 ),
        .I3(aux1[12]),
        .I4(aux0__76_n_4),
        .O(\aux[14]_P_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hABABABFF)) 
    \aux[14]_P_i_5 
       (.I0(\aux[11]_P_i_3_n_0 ),
        .I1(aux1[11]),
        .I2(aux0__76_n_5),
        .I3(aux1[8]),
        .I4(aux0__75_n_4),
        .O(\aux[14]_P_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF111F1110000)) 
    \aux[14]_P_i_6 
       (.I0(\aux[11]_P_i_3_n_0 ),
        .I1(\aux[14]_P_i_7_n_0 ),
        .I2(aux0__76_n_6),
        .I3(aux1[10]),
        .I4(aux0__76_n_5),
        .I5(aux1[11]),
        .O(\aux[14]_P_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \aux[14]_P_i_7 
       (.I0(aux0__75_n_4),
        .I1(aux1[8]),
        .I2(aux0__76_n_7),
        .I3(aux1[9]),
        .O(\aux[14]_P_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h22002240FFFFFFFF)) 
    \aux[15]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(finish_program),
        .I3(\state_reg_reg[2]_0 ),
        .I4(button_OBUF),
        .I5(\aux[15]_P_i_3_n_0 ),
        .O(\aux[15]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEEAFFFF)) 
    \aux[15]_P_i_10 
       (.I0(\aux[15]_P_i_11_n_0 ),
        .I1(aux0__76_n_4),
        .I2(aux1[12]),
        .I3(\aux[12]_P_i_3_n_0 ),
        .I4(\aux[15]_P_i_12_n_0 ),
        .I5(\aux[15]_P_i_13_n_0 ),
        .O(\aux[15]_P_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \aux[15]_P_i_11 
       (.I0(aux1[14]),
        .I1(aux0__77_n_6),
        .O(\aux[15]_P_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \aux[15]_P_i_12 
       (.I0(aux1[13]),
        .I1(aux0__77_n_7),
        .O(\aux[15]_P_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \aux[15]_P_i_13 
       (.I0(aux0__77_n_7),
        .I1(aux1[13]),
        .I2(aux0__77_n_6),
        .I3(aux1[14]),
        .O(\aux[15]_P_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A3A3A0A3A)) 
    \aux[15]_P_i_2 
       (.I0(In_Data[15]),
        .I1(\aux[15]_P_i_4_n_0 ),
        .I2(\state_reg_reg[2]_1 ),
        .I3(\state_reg_reg[2]_0 ),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(\aux[15]_P_i_5_n_0 ),
        .O(\aux[15]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \aux[15]_P_i_3 
       (.I0(button_OBUF),
        .I1(\state_reg_reg[2]_0 ),
        .I2(\aux[15]_P_i_6_n_0 ),
        .I3(\out[1]_P_i_3_n_0 ),
        .I4(\aux[15]_P_i_7_n_0 ),
        .I5(\aux_reg[15]_P_0 ),
        .O(\aux[15]_P_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \aux[15]_P_i_4 
       (.I0(\div_reg_n_0_[3] ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\div_reg_n_0_[0] ),
        .I3(\div_reg_n_0_[9] ),
        .I4(\aux[15]_P_i_9_n_0 ),
        .O(\aux[15]_P_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5569)) 
    \aux[15]_P_i_5 
       (.I0(aux0__77_n_5),
        .I1(aux1[15]),
        .I2(\aux[15]_P_i_10_n_0 ),
        .I3(aux0__78_n_2),
        .O(\aux[15]_P_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \aux[15]_P_i_6 
       (.I0(\div[10]_i_8_n_0 ),
        .I1(\b_reg_reg[4] ),
        .I2(\b_reg_reg[3] ),
        .I3(\b_reg_reg[1] ),
        .O(\aux[15]_P_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \aux[15]_P_i_7 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(tick_reg_0),
        .O(\aux[15]_P_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0820)) 
    \aux[15]_P_i_8 
       (.I0(\div[10]_i_9_n_0 ),
        .I1(\b_reg_reg[0] ),
        .I2(\b_reg_reg[1] ),
        .I3(\b_reg_reg[2] ),
        .I4(\out[4]_P_i_2_n_0 ),
        .I5(\state_reg_reg_n_0_[1] ),
        .O(\aux_reg[15]_P_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \aux[15]_P_i_9 
       (.I0(\div_reg_n_0_[7] ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\div_reg_n_0_[2] ),
        .I3(\div_reg_n_0_[5] ),
        .I4(\div_reg_n_0_[1] ),
        .I5(\div_reg_n_0_[6] ),
        .O(\aux[15]_P_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \aux[1]_P_i_1 
       (.I0(\aux[1]_P_i_2_n_0 ),
        .I1(\state_reg_reg[2]_1 ),
        .I2(In_Data[1]),
        .O(\aux[1]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAACF30)) 
    \aux[1]_P_i_2 
       (.I0(\aux_Count_reg[1]_P_n_0 ),
        .I1(aux0__78_n_2),
        .I2(\div_reg_n_0_[0] ),
        .I3(aux0__74_n_7),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[10]_P_i_2_n_0 ),
        .O(\aux[1]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \aux[2]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[2]),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\aux_Count_reg[2]_P_n_0 ),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[2]_P_i_2_n_0 ),
        .O(\aux[2]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEA15BF40)) 
    \aux[2]_P_i_2 
       (.I0(aux0__78_n_2),
        .I1(aux0__74_n_7),
        .I2(\div_reg_n_0_[0] ),
        .I3(aux0__74_n_6),
        .I4(aux1[2]),
        .O(\aux[2]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \aux[3]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[3]),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\aux_Count_reg[3]_P_n_0 ),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[3]_P_i_2_n_0 ),
        .O(\aux[3]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF906)) 
    \aux[3]_P_i_2 
       (.I0(\aux[3]_P_i_3_n_0 ),
        .I1(aux1[3]),
        .I2(aux0__78_n_2),
        .I3(aux0__74_n_5),
        .I4(\aux[15]_P_i_4_n_0 ),
        .O(\aux[3]_P_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \aux[3]_P_i_3 
       (.I0(\div_reg_n_0_[0] ),
        .I1(aux0__74_n_7),
        .I2(aux1[2]),
        .I3(aux0__74_n_6),
        .O(\aux[3]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \aux[4]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[4]),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\aux_Count_reg[4]_P_n_0 ),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[4]_P_i_2_n_0 ),
        .O(\aux[4]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF906)) 
    \aux[4]_P_i_2 
       (.I0(\aux[4]_P_i_3_n_0 ),
        .I1(aux1[4]),
        .I2(aux0__78_n_2),
        .I3(aux0__74_n_4),
        .I4(\aux[15]_P_i_4_n_0 ),
        .O(\aux[4]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \aux[4]_P_i_3 
       (.I0(\div_reg_n_0_[0] ),
        .I1(aux0__74_n_7),
        .I2(aux1[2]),
        .I3(aux0__74_n_6),
        .I4(aux1[3]),
        .I5(aux0__74_n_5),
        .O(\aux[4]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \aux[5]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[5]),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\aux_Count_reg[5]_P_n_0 ),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[5]_P_i_2_n_0 ),
        .O(\aux[5]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF906)) 
    \aux[5]_P_i_2 
       (.I0(\aux[5]_P_i_3_n_0 ),
        .I1(aux1[5]),
        .I2(aux0__78_n_2),
        .I3(aux0__75_n_7),
        .I4(\aux[15]_P_i_4_n_0 ),
        .O(\aux[5]_P_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \aux[5]_P_i_3 
       (.I0(\aux[4]_P_i_3_n_0 ),
        .I1(aux1[4]),
        .I2(aux0__74_n_4),
        .O(\aux[5]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \aux[6]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[6]),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\aux_Count_reg[6]_P_n_0 ),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[6]_P_i_2_n_0 ),
        .O(\aux[6]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF609)) 
    \aux[6]_P_i_2 
       (.I0(\aux[6]_P_i_3_n_0 ),
        .I1(aux1[6]),
        .I2(aux0__78_n_2),
        .I3(aux0__75_n_6),
        .I4(\aux[15]_P_i_4_n_0 ),
        .O(\aux[6]_P_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h001717FF)) 
    \aux[6]_P_i_3 
       (.I0(\aux[4]_P_i_3_n_0 ),
        .I1(aux1[4]),
        .I2(aux0__74_n_4),
        .I3(aux1[5]),
        .I4(aux0__75_n_7),
        .O(\aux[6]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \aux[7]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[7]),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\aux_Count_reg[7]_P_n_0 ),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[7]_P_i_2_n_0 ),
        .O(\aux[7]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF609)) 
    \aux[7]_P_i_2 
       (.I0(\aux[7]_P_i_3_n_0 ),
        .I1(aux1[7]),
        .I2(aux0__78_n_2),
        .I3(aux0__75_n_5),
        .I4(\aux[15]_P_i_4_n_0 ),
        .O(\aux[7]_P_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \aux[7]_P_i_3 
       (.I0(\aux[6]_P_i_3_n_0 ),
        .I1(aux1[6]),
        .I2(aux0__75_n_6),
        .O(\aux[7]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \aux[8]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[8]),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\aux_Count_reg[8]_P_n_0 ),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[8]_P_i_2_n_0 ),
        .O(\aux[8]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF906)) 
    \aux[8]_P_i_2 
       (.I0(\aux[8]_P_i_3_n_0 ),
        .I1(aux1[8]),
        .I2(aux0__78_n_2),
        .I3(aux0__75_n_4),
        .I4(\aux[15]_P_i_4_n_0 ),
        .O(\aux[8]_P_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    \aux[8]_P_i_3 
       (.I0(\aux[6]_P_i_3_n_0 ),
        .I1(aux1[6]),
        .I2(aux0__75_n_6),
        .I3(aux1[7]),
        .I4(aux0__75_n_5),
        .O(\aux[8]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F44444444)) 
    \aux[9]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(In_Data[9]),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\aux_Count_reg[9]_P_n_0 ),
        .I4(\aux[15]_P_i_4_n_0 ),
        .I5(\aux[9]_P_i_2_n_0 ),
        .O(\aux[9]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFB4004B)) 
    \aux[9]_P_i_2 
       (.I0(\aux[9]_P_i_3_n_0 ),
        .I1(\aux[9]_P_i_4_n_0 ),
        .I2(aux1[9]),
        .I3(aux0__78_n_2),
        .I4(aux0__76_n_7),
        .I5(\aux[15]_P_i_4_n_0 ),
        .O(\aux[9]_P_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \aux[9]_P_i_3 
       (.I0(\aux[8]_P_i_3_n_0 ),
        .I1(aux0__75_n_4),
        .I2(aux1[8]),
        .O(\aux[9]_P_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \aux[9]_P_i_4 
       (.I0(aux1[8]),
        .I1(aux0__75_n_4),
        .O(\aux[9]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDCDCFFDF10100010)) 
    aux_BIP_i_1
       (.I0(\state_reg_reg[2]_1 ),
        .I1(button_OBUF),
        .I2(aux_BIP_i_2_n_0),
        .I3(\b_reg_reg[3]_1 ),
        .I4(\aux_Count[10]_P_i_1_n_0 ),
        .I5(ena),
        .O(aux_BIP_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    aux_BIP_i_2
       (.I0(is_s_reg_0),
        .I1(\state_reg_reg_n_0_[1] ),
        .O(aux_BIP_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    aux_BIP_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(aux_BIP_i_1_n_0),
        .Q(ena),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[0]_P_i_1 
       (.I0(\aux_PC_reg[10] [0]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[0]));
  LUT5 #(
    .INIT(32'h00CC1000)) 
    \aux_Count[10]_P_i_1 
       (.I0(button_OBUF),
        .I1(\state_reg_reg[2]_0 ),
        .I2(finish_program),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\state_reg_reg[2]_1 ),
        .O(\aux_Count[10]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[10]_P_i_2 
       (.I0(\aux_PC_reg[10] [10]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[1]_P_i_1 
       (.I0(\aux_PC_reg[10] [1]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[2]_P_i_1 
       (.I0(\aux_PC_reg[10] [2]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[3]_P_i_1 
       (.I0(\aux_PC_reg[10] [3]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[4]_P_i_1 
       (.I0(\aux_PC_reg[10] [4]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[5]_P_i_1 
       (.I0(\aux_PC_reg[10] [5]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[6]_P_i_1 
       (.I0(\aux_PC_reg[10] [6]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[7]_P_i_1 
       (.I0(\aux_PC_reg[10] [7]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[8]_P_i_1 
       (.I0(\aux_PC_reg[10] [8]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    \aux_Count[9]_P_i_1 
       (.I0(\aux_PC_reg[10] [9]),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(p_3_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[0]),
        .Q(\aux_Count_reg[0]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[10]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[10]),
        .Q(\aux_Count_reg[10]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[1]),
        .Q(\aux_Count_reg[1]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[2]),
        .Q(\aux_Count_reg[2]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[3]),
        .Q(\aux_Count_reg[3]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[4]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[4]),
        .Q(\aux_Count_reg[4]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[5]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[5]),
        .Q(\aux_Count_reg[5]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[6]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[6]),
        .Q(\aux_Count_reg[6]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[7]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[7]),
        .Q(\aux_Count_reg[7]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[8]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[8]),
        .Q(\aux_Count_reg[8]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_Count_reg[9]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux_Count[10]_P_i_1_n_0 ),
        .D(p_3_in[9]),
        .Q(\aux_Count_reg[9]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[0]_P_i_1_n_0 ),
        .Q(\aux_reg[0]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[10]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[10]_P_i_1_n_0 ),
        .Q(\aux_reg[10]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[11]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[11]_P_i_1_n_0 ),
        .Q(\aux_reg[11]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[12]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[12]_P_i_1_n_0 ),
        .Q(\aux_reg[12]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[13]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[13]_P_i_1_n_0 ),
        .Q(\aux_reg[13]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[14]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[14]_P_i_1_n_0 ),
        .Q(\aux_reg[14]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[15]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[15]_P_i_2_n_0 ),
        .Q(\aux_reg[15]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[1]_P_i_1_n_0 ),
        .Q(\aux_reg[1]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[2]_P_i_1_n_0 ),
        .Q(\aux_reg[2]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[3]_P_i_1_n_0 ),
        .Q(\aux_reg[3]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[4]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[4]_P_i_1_n_0 ),
        .Q(\aux_reg[4]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[5]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[5]_P_i_1_n_0 ),
        .Q(\aux_reg[5]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[6]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[6]_P_i_1_n_0 ),
        .Q(\aux_reg[6]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[7]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[7]_P_i_1_n_0 ),
        .Q(\aux_reg[7]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[8]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[8]_P_i_1_n_0 ),
        .Q(\aux_reg[8]_P_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aux_reg[9]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\aux[15]_P_i_1_n_0 ),
        .D(\aux[9]_P_i_1_n_0 ),
        .Q(\aux_reg[9]_P_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_2 
       (.I0(\out_reg[7]_P_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[1] ),
        .O(D));
  LUT6 #(
    .INIT(64'h080888088C888C8C)) 
    \div[0]_i_1 
       (.I0(\div[0]_i_2_n_0 ),
        .I1(\state_reg_reg[2]_0 ),
        .I2(\div[1]_i_2_n_0 ),
        .I3(\div_reg_n_0_[1] ),
        .I4(\div_reg_n_0_[2] ),
        .I5(\div[0]_i_3_n_0 ),
        .O(\div[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h66969699)) 
    \div[0]_i_2 
       (.I0(\div_reg_n_0_[4] ),
        .I1(\div[2]_i_5_n_0 ),
        .I2(\div[2]_i_2_n_0 ),
        .I3(\div_reg_n_0_[2] ),
        .I4(\div_reg_n_0_[3] ),
        .O(\div[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \div[0]_i_3 
       (.I0(\div[2]_i_2_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\div_reg_n_0_[2] ),
        .O(\div[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4444444445444444)) 
    \div[10]_i_1 
       (.I0(button_OBUF),
        .I1(\div[10]_i_3_n_0 ),
        .I2(\div[10]_i_4_n_0 ),
        .I3(\div[10]_i_5_n_0 ),
        .I4(\div[10]_i_6_n_0 ),
        .I5(\div[10]_i_7_n_0 ),
        .O(\div[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \div[10]_i_2 
       (.I0(\state_reg_reg[2]_0 ),
        .O(\div[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \div[10]_i_3 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(finish_program),
        .I3(\state_reg_reg[2]_0 ),
        .O(\div[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \div[10]_i_4 
       (.I0(\state_reg_reg[2]_0 ),
        .I1(tick_reg_0),
        .I2(\state_reg_reg[2]_1 ),
        .O(\div[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \div[10]_i_5 
       (.I0(\out[1]_P_i_3_n_0 ),
        .I1(\out[4]_P_i_2_n_0 ),
        .O(\div[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \div[10]_i_6 
       (.I0(\aux[15]_P_i_4_n_0 ),
        .I1(\b_reg_reg[1] ),
        .I2(\b_reg_reg[3] ),
        .I3(\b_reg_reg[4] ),
        .I4(\div[10]_i_8_n_0 ),
        .O(\div[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF0820)) 
    \div[10]_i_7 
       (.I0(\div[10]_i_9_n_0 ),
        .I1(\b_reg_reg[0] ),
        .I2(\b_reg_reg[1] ),
        .I3(\b_reg_reg[2] ),
        .I4(\state_reg_reg_n_0_[1] ),
        .O(\div[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \div[10]_i_8 
       (.I0(\b_reg_reg[2] ),
        .I1(\b_reg_reg[0] ),
        .I2(\b_reg_reg[5] ),
        .I3(\b_reg_reg[6] ),
        .I4(\out_reg[7]_P_n_0 ),
        .O(\div[10]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \div[10]_i_9 
       (.I0(\out_reg[7]_P_n_0 ),
        .I1(\b_reg_reg[6] ),
        .I2(\b_reg_reg[4] ),
        .I3(\b_reg_reg[3] ),
        .I4(\b_reg_reg[5] ),
        .O(\div[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \div[1]_i_1 
       (.I0(\state_reg_reg[2]_0 ),
        .I1(\div[1]_i_2_n_0 ),
        .O(\div[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4400662B2B99FFDD)) 
    \div[1]_i_2 
       (.I0(\div_reg_n_0_[4] ),
        .I1(\div[2]_i_5_n_0 ),
        .I2(\div_reg_n_0_[2] ),
        .I3(\div_reg_n_0_[3] ),
        .I4(\div[2]_i_2_n_0 ),
        .I5(\div[1]_i_3_n_0 ),
        .O(\div[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE79C39E71863C618)) 
    \div[1]_i_3 
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\div_reg_n_0_[10] ),
        .I3(\div_reg_n_0_[9] ),
        .I4(\div_reg_n_0_[5] ),
        .I5(\div_reg_n_0_[4] ),
        .O(\div[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \div[2]_i_1 
       (.I0(\div[2]_i_2_n_0 ),
        .I1(\state_reg_reg[2]_0 ),
        .O(\div[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA21A8218E7BEA7BA)) 
    \div[2]_i_2 
       (.I0(\div[2]_i_3_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\div_reg_n_0_[5] ),
        .I3(\div[2]_i_4_n_0 ),
        .I4(\div_reg_n_0_[3] ),
        .I5(\div[2]_i_5_n_0 ),
        .O(\div[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hEA5715A8)) 
    \div[2]_i_3 
       (.I0(\div_reg_n_0_[10] ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\div_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[6] ),
        .I4(\div_reg_n_0_[5] ),
        .O(\div[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h1C7331C7)) 
    \div[2]_i_4 
       (.I0(\div_reg_n_0_[5] ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\div_reg_n_0_[10] ),
        .I3(\div_reg_n_0_[7] ),
        .I4(\div_reg_n_0_[6] ),
        .O(\div[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6A1556817E9557A9)) 
    \div[2]_i_5 
       (.I0(\div_reg_n_0_[10] ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\div_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[6] ),
        .I4(\div_reg_n_0_[5] ),
        .I5(\div_reg_n_0_[4] ),
        .O(\div[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF83E3E0F0F8383E0)) 
    \div[3]_i_1 
       (.I0(\div_reg_n_0_[4] ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\div_reg_n_0_[6] ),
        .I3(\div_reg_n_0_[7] ),
        .I4(\div_reg_n_0_[9] ),
        .I5(\div_reg_n_0_[10] ),
        .O(\div[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFD7FD7F5F57D57D5)) 
    \div[4]_i_1 
       (.I0(\state_reg_reg[2]_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\div_reg_n_0_[7] ),
        .I3(\div_reg_n_0_[10] ),
        .I4(\div_reg_n_0_[9] ),
        .I5(\div_reg_n_0_[5] ),
        .O(\div[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hECC8)) 
    \div[5]_i_1 
       (.I0(\div_reg_n_0_[6] ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\div_reg_n_0_[9] ),
        .I3(\div_reg_n_0_[7] ),
        .O(\div[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \div[7]_i_1 
       (.I0(\div[10]_i_1_n_0 ),
        .I1(\state_reg_reg[2]_0 ),
        .O(\div[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \div[9]_i_1 
       (.I0(\div_reg_n_0_[10] ),
        .I1(\state_reg_reg[2]_0 ),
        .O(\div[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[10]_i_1_n_0 ),
        .D(\div[0]_i_1_n_0 ),
        .Q(\div_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[10]_i_1_n_0 ),
        .D(\div[10]_i_2_n_0 ),
        .Q(\div_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[10]_i_1_n_0 ),
        .D(\div[1]_i_1_n_0 ),
        .Q(\div_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[10]_i_1_n_0 ),
        .D(\div[2]_i_1_n_0 ),
        .Q(\div_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[10]_i_1_n_0 ),
        .D(\div[3]_i_1_n_0 ),
        .Q(\div_reg_n_0_[3] ),
        .R(\div[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[10]_i_1_n_0 ),
        .D(\div[4]_i_1_n_0 ),
        .Q(\div_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[10]_i_1_n_0 ),
        .D(\div[5]_i_1_n_0 ),
        .Q(\div_reg_n_0_[5] ),
        .R(\div[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[10]_i_1_n_0 ),
        .D(\div_reg_n_0_[9] ),
        .Q(\div_reg_n_0_[6] ),
        .R(\div[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[10]_i_1_n_0 ),
        .D(\div_reg_n_0_[10] ),
        .Q(\div_reg_n_0_[7] ),
        .R(\div[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\div[10]_i_1_n_0 ),
        .D(\div[9]_i_1_n_0 ),
        .Q(\div_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(i_reg[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \i[1]_i_1 
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i[2]_i_1 
       (.I0(i_reg[2]),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i[3]_i_1 
       (.I0(i_reg__0[3]),
        .I1(i_reg[1]),
        .I2(i_reg[0]),
        .I3(i_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i[4]_i_1 
       (.I0(i_reg__0[4]),
        .I1(i_reg[2]),
        .I2(i_reg[0]),
        .I3(i_reg[1]),
        .I4(i_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i[5]_i_1 
       (.I0(i_reg__0[5]),
        .I1(i_reg__0[3]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(i_reg[2]),
        .I5(i_reg__0[4]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'h4000)) 
    \i[6]_i_1 
       (.I0(\state_reg_reg[2]_0 ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(tick_reg_0),
        .I3(\state_reg_reg[2]_1 ),
        .O(\i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i[6]_i_2 
       (.I0(i_reg__0[6]),
        .I1(i_reg__0[4]),
        .I2(i_reg[2]),
        .I3(\i[6]_i_4_n_0 ),
        .I4(i_reg__0[3]),
        .I5(i_reg__0[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[6]_i_4 
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(\i[6]_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[6]_i_1_n_0 ),
        .D(p_0_in[0]),
        .PRE(button_OBUF),
        .Q(i_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(button_OBUF),
        .D(\i[1]_i_1_n_0 ),
        .Q(i_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(button_OBUF),
        .D(p_0_in[2]),
        .Q(i_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(button_OBUF),
        .D(p_0_in[3]),
        .Q(i_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(button_OBUF),
        .D(p_0_in[4]),
        .Q(i_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(button_OBUF),
        .D(p_0_in[5]),
        .Q(i_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\i[6]_i_1_n_0 ),
        .CLR(button_OBUF),
        .D(p_0_in[6]),
        .Q(i_reg__0[6]));
  LUT6 #(
    .INIT(64'h0404040404040400)) 
    is_s_i_3
       (.I0(button_OBUF),
        .I1(\state_reg_reg[2]_0 ),
        .I2(\state_reg_reg_n_0_[1] ),
        .I3(\b_reg_reg[5]_0 ),
        .I4(\state_reg_reg[2]_1 ),
        .I5(is_s_reg_0),
        .O(is_s9_out));
  FDRE #(
    .INIT(1'b0)) 
    is_s_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\b_reg_reg[3]_0 ),
        .Q(is_s_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hECA02C2CA0A02020)) 
    \out[0]_P_i_1 
       (.I0(state_reg2__790_carry__2_n_1),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\out[0]_P_i_2_n_0 ),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(\div[10]_i_7_n_0 ),
        .O(\out[0]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \out[0]_P_i_2 
       (.I0(\out[0]_P_i_3_n_0 ),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[0]),
        .O(\out[0]_P_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[0]_P_i_3 
       (.I0(i_reg__0[4]),
        .I1(i_reg__0[3]),
        .I2(i_reg__0[6]),
        .I3(i_reg__0[5]),
        .O(\out[0]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ABAB00AB)) 
    \out[1]_P_i_1 
       (.I0(\out[1]_P_i_2_n_0 ),
        .I1(\out[1]_P_i_3_n_0 ),
        .I2(\div[10]_i_7_n_0 ),
        .I3(\state_reg_reg[2]_0 ),
        .I4(state_reg2__790_carry_i_1_n_0),
        .I5(\out[7]_P_i_5_n_0 ),
        .O(\out[1]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hBBBBFBBB)) 
    \out[1]_P_i_2 
       (.I0(\out[1]_P_i_4_n_0 ),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\out[6]_P_i_6_n_0 ),
        .I3(acc_sended_reg_P_n_0),
        .I4(\state_reg_reg_n_0_[1] ),
        .O(\out[1]_P_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \out[1]_P_i_3 
       (.I0(\div[10]_i_8_n_0 ),
        .I1(\b_reg_reg[1] ),
        .I2(\b_reg_reg[4] ),
        .I3(\b_reg_reg[3] ),
        .O(\out[1]_P_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAA02)) 
    \out[1]_P_i_4 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .I3(\out[6]_P_i_7_n_0 ),
        .O(\out[1]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC0FF40FFC0FF4040)) 
    \out[2]_P_i_1 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(\state_reg_reg[2]_0 ),
        .I2(state_reg2__790_carry_i_7_n_0),
        .I3(\out[2]_P_i_2_n_0 ),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(\out[2]_P_i_3_n_0 ),
        .O(\out[2]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF5FFDDDDDDDD)) 
    \out[2]_P_i_2 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(\state_reg_reg[2]_0 ),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(\out[6]_P_i_7_n_0 ),
        .I5(\state_reg_reg_n_0_[1] ),
        .O(\out[2]_P_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \out[2]_P_i_3 
       (.I0(\div[10]_i_9_n_0 ),
        .I1(\b_reg_reg[1] ),
        .I2(\b_reg_reg[0] ),
        .I3(\b_reg_reg[2] ),
        .O(\out[2]_P_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA222A2A2)) 
    \out[3]_P_i_1 
       (.I0(\out[3]_P_i_2_n_0 ),
        .I1(\state_reg_reg[2]_0 ),
        .I2(\out_reg[3]_P_i_3_n_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\state_reg_reg[2]_1 ),
        .O(\out[3]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBBF)) 
    \out[3]_P_i_2 
       (.I0(\state_reg[1]_i_6_n_0 ),
        .I1(\state_reg_reg[2]_1 ),
        .I2(\out[6]_P_i_6_n_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\out[1]_P_i_3_n_0 ),
        .O(\out[3]_P_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[3]_P_i_4 
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\out_reg[7]_P_i_6_n_5 ),
        .O(\out[3]_P_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_P_i_5 
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_6_n_6 ),
        .O(\out[3]_P_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[3]_P_i_6 
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\out_reg[7]_P_i_6_n_7 ),
        .O(\out[3]_P_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[3]_P_i_7 
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\out_reg[7]_P_i_11_n_4 ),
        .O(\out[3]_P_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF5F005C0550005C0)) 
    \out[4]_P_i_1 
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\out[4]_P_i_2_n_0 ),
        .I2(\state_reg_reg[2]_1 ),
        .I3(\state_reg_reg[2]_0 ),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(\out[4]_P_i_3_n_0 ),
        .O(\out[4]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \out[4]_P_i_2 
       (.I0(\b_reg_reg[5] ),
        .I1(\b_reg_reg[6] ),
        .I2(\b_reg_reg[0] ),
        .I3(\b_reg_reg[2] ),
        .I4(\out_reg[7]_P_n_0 ),
        .I5(\out[4]_P_i_4_n_0 ),
        .O(\out[4]_P_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \out[4]_P_i_3 
       (.I0(\out[6]_P_i_7_n_0 ),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .O(\out[4]_P_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \out[4]_P_i_4 
       (.I0(\b_reg_reg[4] ),
        .I1(\b_reg_reg[3] ),
        .O(\out[4]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD7C3550000C35500)) 
    \out[5]_P_i_1 
       (.I0(\out[5]_P_i_2_n_0 ),
        .I1(\out_reg[7]_P_i_7_n_0 ),
        .I2(\out_reg[7]_P_i_6_n_0 ),
        .I3(\state_reg_reg[2]_1 ),
        .I4(\state_reg_reg[2]_0 ),
        .I5(\state_reg_reg_n_0_[1] ),
        .O(\out[5]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h06FF0600)) 
    \out[5]_P_i_2 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(\out[6]_P_i_7_n_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\div[10]_i_5_n_0 ),
        .O(\out[5]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h909090FF90909090)) 
    \out[6]_P_i_1 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\out[6]_P_i_2_n_0 ),
        .I2(\out[6]_P_i_3_n_0 ),
        .I3(\out[6]_P_i_4_n_0 ),
        .I4(\aux[10]_P_i_2_n_0 ),
        .I5(\out[6]_P_i_5_n_0 ),
        .O(\out[6]_P_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \out[6]_P_i_2 
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\out_reg[7]_P_i_6_n_0 ),
        .O(\out[6]_P_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \out[6]_P_i_3 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(\state_reg_reg[2]_0 ),
        .I2(\state_reg_reg_n_0_[1] ),
        .O(\out[6]_P_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out[6]_P_i_4 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\out[6]_P_i_6_n_0 ),
        .O(\out[6]_P_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h14FF)) 
    \out[6]_P_i_5 
       (.I0(\out[6]_P_i_7_n_0 ),
        .I1(i_reg[1]),
        .I2(i_reg[0]),
        .I3(\state_reg_reg_n_0_[1] ),
        .O(\out[6]_P_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \out[6]_P_i_6 
       (.I0(\div[10]_i_9_n_0 ),
        .I1(\b_reg_reg[0] ),
        .I2(\b_reg_reg[1] ),
        .I3(\b_reg_reg[2] ),
        .O(\out[6]_P_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out[6]_P_i_7 
       (.I0(i_reg[2]),
        .I1(i_reg__0[5]),
        .I2(i_reg__0[6]),
        .I3(i_reg__0[3]),
        .I4(i_reg__0[4]),
        .O(\out[6]_P_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h300030003800FFFF)) 
    \out[7]_P_i_1 
       (.I0(\out[7]_P_i_3_n_0 ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\state_reg_reg[2]_1 ),
        .I3(\state_reg_reg[2]_0 ),
        .I4(\out[7]_P_i_4_n_0 ),
        .I5(button_OBUF),
        .O(\out[7]_P_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[7]_P_i_10 
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\out_reg[7]_P_i_9_n_0 ),
        .I2(state_reg2__790_carry__2_n_1),
        .I3(state_reg2__790_carry_i_7_n_0),
        .O(\out[7]_P_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_100 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_98_n_5 ),
        .O(\out[7]_P_i_100_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_101 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_98_n_6 ),
        .O(\out[7]_P_i_101_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_102 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_98_n_7 ),
        .O(\out[7]_P_i_102_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_103 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_P_i_99_n_4 ),
        .O(\out[7]_P_i_103_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_105 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_P_i_99_n_5 ),
        .O(\out[7]_P_i_105_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_106 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_P_i_99_n_6 ),
        .O(\out[7]_P_i_106_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_107 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_P_i_99_n_7 ),
        .O(\out[7]_P_i_107_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_108 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_P_i_104_n_4 ),
        .O(\out[7]_P_i_108_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_109 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_P_i_104_n_5 ),
        .O(\out[7]_P_i_109_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_110 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_P_i_104_n_6 ),
        .O(\out[7]_P_i_110_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_111 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[9]_P_n_0 ),
        .O(\out[7]_P_i_111_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_113 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\out_reg[7]_P_i_112_n_5 ),
        .O(\out[7]_P_i_113_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_114 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_112_n_6 ),
        .O(\out[7]_P_i_114_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_115 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\out_reg[7]_P_i_112_n_7 ),
        .O(\out[7]_P_i_115_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_116 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\out_reg[7]_P_i_117_n_4 ),
        .O(\out[7]_P_i_116_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_119 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_117_n_5 ),
        .O(\out[7]_P_i_119_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_12 
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\out_reg[7]_P_i_7_n_5 ),
        .O(\out[7]_P_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_120 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_117_n_6 ),
        .O(\out[7]_P_i_120_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_121 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_117_n_7 ),
        .O(\out[7]_P_i_121_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_122 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_P_i_118_n_4 ),
        .O(\out[7]_P_i_122_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_124 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_P_i_118_n_5 ),
        .O(\out[7]_P_i_124_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_125 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_P_i_118_n_6 ),
        .O(\out[7]_P_i_125_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_126 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_P_i_118_n_7 ),
        .O(\out[7]_P_i_126_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_127 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_P_i_123_n_4 ),
        .O(\out[7]_P_i_127_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_128 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_P_i_123_n_5 ),
        .O(\out[7]_P_i_128_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_129 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_P_i_123_n_6 ),
        .O(\out[7]_P_i_129_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_13 
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_7_n_6 ),
        .O(\out[7]_P_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_130 
       (.I0(\out_reg[7]_P_i_112_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[10]_P_n_0 ),
        .O(\out[7]_P_i_130_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_132 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\out_reg[7]_P_i_131_n_5 ),
        .O(\out[7]_P_i_132_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_133 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_131_n_6 ),
        .O(\out[7]_P_i_133_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_134 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\out_reg[7]_P_i_131_n_7 ),
        .O(\out[7]_P_i_134_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_135 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\out_reg[7]_P_i_136_n_4 ),
        .O(\out[7]_P_i_135_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_138 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_136_n_5 ),
        .O(\out[7]_P_i_138_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_139 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_136_n_6 ),
        .O(\out[7]_P_i_139_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_14 
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\out_reg[7]_P_i_7_n_7 ),
        .O(\out[7]_P_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_140 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_136_n_7 ),
        .O(\out[7]_P_i_140_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_141 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_P_i_137_n_4 ),
        .O(\out[7]_P_i_141_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_143 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_P_i_137_n_5 ),
        .O(\out[7]_P_i_143_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_144 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_P_i_137_n_6 ),
        .O(\out[7]_P_i_144_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_145 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_P_i_137_n_7 ),
        .O(\out[7]_P_i_145_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_146 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_P_i_142_n_4 ),
        .O(\out[7]_P_i_146_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_147 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_P_i_142_n_5 ),
        .O(\out[7]_P_i_147_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_148 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_P_i_142_n_6 ),
        .O(\out[7]_P_i_148_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_149 
       (.I0(\out_reg[7]_P_i_131_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[11]_P_n_0 ),
        .O(\out[7]_P_i_149_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_15 
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\out_reg[7]_P_i_16_n_4 ),
        .O(\out[7]_P_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_151 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\out_reg[7]_P_i_150_n_5 ),
        .O(\out[7]_P_i_151_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_152 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_150_n_6 ),
        .O(\out[7]_P_i_152_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_153 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\out_reg[7]_P_i_150_n_7 ),
        .O(\out[7]_P_i_153_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_154 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\out_reg[7]_P_i_155_n_4 ),
        .O(\out[7]_P_i_154_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_157 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_155_n_5 ),
        .O(\out[7]_P_i_157_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_158 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_155_n_6 ),
        .O(\out[7]_P_i_158_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_159 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_155_n_7 ),
        .O(\out[7]_P_i_159_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_160 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_P_i_156_n_4 ),
        .O(\out[7]_P_i_160_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_162 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_P_i_156_n_5 ),
        .O(\out[7]_P_i_162_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_163 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_P_i_156_n_6 ),
        .O(\out[7]_P_i_163_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_164 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_P_i_156_n_7 ),
        .O(\out[7]_P_i_164_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_165 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_P_i_161_n_4 ),
        .O(\out[7]_P_i_165_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_166 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_P_i_161_n_5 ),
        .O(\out[7]_P_i_166_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_167 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_P_i_161_n_6 ),
        .O(\out[7]_P_i_167_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_168 
       (.I0(\out_reg[7]_P_i_150_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[12]_P_n_0 ),
        .O(\out[7]_P_i_168_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_17 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\out_reg[7]_P_i_8_n_5 ),
        .O(\out[7]_P_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_170 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\out_reg[7]_P_i_169_n_5 ),
        .O(\out[7]_P_i_170_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_171 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_169_n_6 ),
        .O(\out[7]_P_i_171_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_172 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\out_reg[7]_P_i_169_n_7 ),
        .O(\out[7]_P_i_172_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_173 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\out_reg[7]_P_i_174_n_4 ),
        .O(\out[7]_P_i_173_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_176 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_174_n_5 ),
        .O(\out[7]_P_i_176_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_177 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_174_n_6 ),
        .O(\out[7]_P_i_177_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_178 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_174_n_7 ),
        .O(\out[7]_P_i_178_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_179 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_P_i_175_n_4 ),
        .O(\out[7]_P_i_179_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_18 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_8_n_6 ),
        .O(\out[7]_P_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_181 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_P_i_175_n_5 ),
        .O(\out[7]_P_i_181_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_182 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_P_i_175_n_6 ),
        .O(\out[7]_P_i_182_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_183 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_P_i_175_n_7 ),
        .O(\out[7]_P_i_183_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_184 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_P_i_180_n_4 ),
        .O(\out[7]_P_i_184_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_185 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_P_i_180_n_5 ),
        .O(\out[7]_P_i_185_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_186 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_P_i_180_n_6 ),
        .O(\out[7]_P_i_186_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_187 
       (.I0(\out_reg[7]_P_i_169_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[13]_P_n_0 ),
        .O(\out[7]_P_i_187_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_189 
       (.I0(\div_reg_n_0_[10] ),
        .I1(\out_reg[7]_P_i_188_n_1 ),
        .O(\out[7]_P_i_189_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_19 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\out_reg[7]_P_i_8_n_7 ),
        .O(\out[7]_P_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_190 
       (.I0(\out_reg[7]_P_i_188_n_1 ),
        .I1(\out_reg[7]_P_i_188_n_6 ),
        .O(\out[7]_P_i_190_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \out[7]_P_i_191 
       (.I0(\out_reg[7]_P_i_188_n_1 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(state_reg2_carry__1_n_0),
        .O(\out[7]_P_i_191_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out[7]_P_i_192 
       (.I0(\out_reg[7]_P_i_188_n_1 ),
        .I1(state_reg2_carry__1_n_0),
        .O(\out[7]_P_i_192_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_193 
       (.I0(\out_reg[7]_P_i_188_n_1 ),
        .I1(state_reg2_carry__1_n_5),
        .O(\out[7]_P_i_193_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_194 
       (.I0(\out_reg[7]_P_i_188_n_1 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(state_reg2_carry__1_n_6),
        .O(\out[7]_P_i_194_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_195 
       (.I0(\div_reg_n_0_[9] ),
        .I1(\out_reg[7]_P_i_188_n_1 ),
        .I2(state_reg2_carry__1_n_7),
        .O(\out[7]_P_i_195_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_196 
       (.I0(\div_reg_n_0_[9] ),
        .I1(\out_reg[7]_P_i_188_n_1 ),
        .I2(state_reg2_carry__0_n_4),
        .O(\out[7]_P_i_196_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_197 
       (.I0(\div_reg_n_0_[7] ),
        .I1(\out_reg[7]_P_i_188_n_1 ),
        .I2(state_reg2_carry__0_n_5),
        .O(\out[7]_P_i_197_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_198 
       (.I0(\div_reg_n_0_[6] ),
        .I1(\out_reg[7]_P_i_188_n_1 ),
        .I2(state_reg2_carry__0_n_6),
        .O(\out[7]_P_i_198_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_199 
       (.I0(\div_reg_n_0_[5] ),
        .I1(\out_reg[7]_P_i_188_n_1 ),
        .I2(state_reg2_carry__0_n_7),
        .O(\out[7]_P_i_199_n_0 ));
  LUT6 #(
    .INIT(64'h0004444444400000)) 
    \out[7]_P_i_2 
       (.I0(\out[7]_P_i_5_n_0 ),
        .I1(\state_reg_reg[2]_0 ),
        .I2(\out_reg[7]_P_i_6_n_0 ),
        .I3(\out_reg[7]_P_i_7_n_0 ),
        .I4(\out_reg[7]_P_i_8_n_0 ),
        .I5(\out_reg[7]_P_i_9_n_0 ),
        .O(\out[7]_P_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_20 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\out_reg[7]_P_i_21_n_4 ),
        .O(\out[7]_P_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_200 
       (.I0(\div_reg_n_0_[4] ),
        .I1(\out_reg[7]_P_i_188_n_1 ),
        .I2(state_reg2_carry_n_4),
        .O(\out[7]_P_i_200_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_201 
       (.I0(\div_reg_n_0_[3] ),
        .I1(\out_reg[7]_P_i_188_n_1 ),
        .I2(state_reg2_carry_n_5),
        .O(\out[7]_P_i_201_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_202 
       (.I0(\div_reg_n_0_[2] ),
        .I1(\out_reg[7]_P_i_188_n_1 ),
        .I2(state_reg2_carry_n_6),
        .O(\out[7]_P_i_202_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_203 
       (.I0(\div_reg_n_0_[1] ),
        .I1(\out_reg[7]_P_i_188_n_1 ),
        .I2(state_reg2_carry_n_7),
        .O(\out[7]_P_i_203_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_204 
       (.I0(\out_reg[7]_P_i_188_n_1 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[14]_P_n_0 ),
        .O(\out[7]_P_i_204_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out[7]_P_i_205 
       (.I0(\div_reg_n_0_[10] ),
        .O(\out[7]_P_i_205_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out[7]_P_i_206 
       (.I0(\div_reg_n_0_[10] ),
        .O(\out[7]_P_i_206_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_22 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\out_reg[7]_P_i_9_n_5 ),
        .O(\out[7]_P_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_23 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_9_n_6 ),
        .O(\out[7]_P_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_24 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\out_reg[7]_P_i_9_n_7 ),
        .O(\out[7]_P_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_25 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\out_reg[7]_P_i_26_n_4 ),
        .O(\out[7]_P_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_28 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\out_reg[7]_P_i_27_n_5 ),
        .O(\out[7]_P_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_29 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_27_n_6 ),
        .O(\out[7]_P_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out[7]_P_i_3 
       (.I0(z_flag_reg_P_n_0),
        .I1(state_reg2__790_carry_i_1_n_0),
        .I2(\out[7]_P_i_10_n_0 ),
        .I3(\out_reg[7]_P_i_8_n_0 ),
        .I4(\out_reg[7]_P_i_6_n_0 ),
        .I5(\out_reg[7]_P_i_7_n_0 ),
        .O(\out[7]_P_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_30 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\out_reg[7]_P_i_27_n_7 ),
        .O(\out[7]_P_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_31 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\out_reg[7]_P_i_47_n_4 ),
        .O(\out[7]_P_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_33 
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_16_n_5 ),
        .O(\out[7]_P_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_34 
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_16_n_6 ),
        .O(\out[7]_P_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_35 
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_16_n_7 ),
        .O(\out[7]_P_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_36 
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_P_i_32_n_4 ),
        .O(\out[7]_P_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_38 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_21_n_5 ),
        .O(\out[7]_P_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_39 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_21_n_6 ),
        .O(\out[7]_P_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000FBFBF)) 
    \out[7]_P_i_4 
       (.I0(\state_reg[1]_i_5_n_0 ),
        .I1(tick_reg_0),
        .I2(\state_reg_reg[2]_1 ),
        .I3(finish_program),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(\state_reg_reg[2]_0 ),
        .O(\out[7]_P_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_40 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_21_n_7 ),
        .O(\out[7]_P_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_41 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_P_i_37_n_4 ),
        .O(\out[7]_P_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_43 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_26_n_5 ),
        .O(\out[7]_P_i_43_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_44 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_26_n_6 ),
        .O(\out[7]_P_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_45 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_26_n_7 ),
        .O(\out[7]_P_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_46 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_P_i_42_n_4 ),
        .O(\out[7]_P_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_49 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_47_n_5 ),
        .O(\out[7]_P_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \out[7]_P_i_5 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(\state_reg_reg[2]_0 ),
        .I2(\state_reg_reg[2]_1 ),
        .O(\out[7]_P_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_50 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_47_n_6 ),
        .O(\out[7]_P_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_51 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_47_n_7 ),
        .O(\out[7]_P_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_52 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_P_i_48_n_4 ),
        .O(\out[7]_P_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_54 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\out_reg[7]_P_i_53_n_5 ),
        .O(\out[7]_P_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_55 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_53_n_6 ),
        .O(\out[7]_P_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_56 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\out_reg[7]_P_i_53_n_7 ),
        .O(\out[7]_P_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_57 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\out_reg[7]_P_i_73_n_4 ),
        .O(\out[7]_P_i_57_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_59 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_P_i_37_n_5 ),
        .O(\out[7]_P_i_59_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_60 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_P_i_37_n_6 ),
        .O(\out[7]_P_i_60_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_61 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_P_i_37_n_7 ),
        .O(\out[7]_P_i_61_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_62 
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_P_i_58_n_4 ),
        .O(\out[7]_P_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_64 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_P_i_42_n_5 ),
        .O(\out[7]_P_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_65 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_P_i_42_n_6 ),
        .O(\out[7]_P_i_65_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_66 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_P_i_42_n_7 ),
        .O(\out[7]_P_i_66_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_67 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_P_i_63_n_4 ),
        .O(\out[7]_P_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_69 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_P_i_48_n_5 ),
        .O(\out[7]_P_i_69_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_70 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_P_i_48_n_6 ),
        .O(\out[7]_P_i_70_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_71 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_P_i_48_n_7 ),
        .O(\out[7]_P_i_71_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_72 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_P_i_68_n_4 ),
        .O(\out[7]_P_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_75 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_73_n_5 ),
        .O(\out[7]_P_i_75_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_76 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_73_n_6 ),
        .O(\out[7]_P_i_76_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_77 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_73_n_7 ),
        .O(\out[7]_P_i_77_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_78 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(\out_reg[7]_P_i_74_n_4 ),
        .O(\out[7]_P_i_78_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_80 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_P_i_74_n_5 ),
        .O(\out[7]_P_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_81 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_P_i_74_n_6 ),
        .O(\out[7]_P_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_82 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_P_i_74_n_7 ),
        .O(\out[7]_P_i_82_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_83 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(\out_reg[7]_P_i_79_n_4 ),
        .O(\out[7]_P_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_85 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\out_reg[7]_P_i_84_n_5 ),
        .O(\out[7]_P_i_85_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_86 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_84_n_6 ),
        .O(\out[7]_P_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_87 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\out_reg[7]_P_i_84_n_7 ),
        .O(\out[7]_P_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_P_i_88 
       (.I0(\out_reg[7]_P_i_84_n_0 ),
        .I1(\out_reg[7]_P_i_98_n_4 ),
        .O(\out[7]_P_i_88_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_89 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_P_i_63_n_5 ),
        .O(\out[7]_P_i_89_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_90 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_P_i_63_n_6 ),
        .O(\out[7]_P_i_90_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_91 
       (.I0(\out_reg[7]_P_i_9_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[6]_P_n_0 ),
        .O(\out[7]_P_i_91_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_92 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_P_i_68_n_5 ),
        .O(\out[7]_P_i_92_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_93 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_P_i_68_n_6 ),
        .O(\out[7]_P_i_93_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_94 
       (.I0(\out_reg[7]_P_i_27_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[7]_P_n_0 ),
        .O(\out[7]_P_i_94_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_95 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_P_i_79_n_5 ),
        .O(\out[7]_P_i_95_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_96 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_P_i_79_n_6 ),
        .O(\out[7]_P_i_96_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_P_i_97 
       (.I0(\out_reg[7]_P_i_53_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[8]_P_n_0 ),
        .O(\out[7]_P_i_97_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_P_i_1_n_0 ),
        .D(\out[0]_P_i_1_n_0 ),
        .Q(\b_reg_reg[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_P_i_1_n_0 ),
        .D(\out[1]_P_i_1_n_0 ),
        .Q(\b_reg_reg[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_P_i_1_n_0 ),
        .D(\out[2]_P_i_1_n_0 ),
        .Q(\b_reg_reg[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_P_i_1_n_0 ),
        .D(\out[3]_P_i_1_n_0 ),
        .Q(\b_reg_reg[3] ),
        .R(1'b0));
  CARRY4 \out_reg[3]_P_i_3 
       (.CI(state_reg2__790_carry__1_i_11_n_0),
        .CO({\out_reg[3]_P_i_3_n_0 ,\out_reg[3]_P_i_3_n_1 ,\out_reg[3]_P_i_3_n_2 ,\out_reg[3]_P_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_6_n_0 ,\out_reg[7]_P_i_6_n_6 ,\out_reg[7]_P_i_6_n_0 ,\out_reg[7]_P_i_6_n_0 }),
        .O({\NLW_out_reg[3]_P_i_3_O_UNCONNECTED [3],\out_reg[3]_P_i_3_n_5 ,\out_reg[3]_P_i_3_n_6 ,\out_reg[3]_P_i_3_n_7 }),
        .S({\out[3]_P_i_4_n_0 ,\out[3]_P_i_5_n_0 ,\out[3]_P_i_6_n_0 ,\out[3]_P_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_P_i_1_n_0 ),
        .D(\out[4]_P_i_1_n_0 ),
        .Q(\b_reg_reg[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_P_i_1_n_0 ),
        .D(\out[5]_P_i_1_n_0 ),
        .Q(\b_reg_reg[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[6]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_P_i_1_n_0 ),
        .D(\out[6]_P_i_1_n_0 ),
        .Q(\b_reg_reg[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[7]_P 
       (.C(clk_IBUF_BUFG),
        .CE(\out[7]_P_i_1_n_0 ),
        .D(\out[7]_P_i_2_n_0 ),
        .Q(\out_reg[7]_P_n_0 ),
        .R(1'b0));
  CARRY4 \out_reg[7]_P_i_104 
       (.CI(1'b0),
        .CO({\out_reg[7]_P_i_104_n_0 ,\out_reg[7]_P_i_104_n_1 ,\out_reg[7]_P_i_104_n_2 ,\out_reg[7]_P_i_104_n_3 }),
        .CYINIT(\out_reg[7]_P_i_112_n_0 ),
        .DI({\out_reg[7]_P_i_123_n_5 ,\out_reg[7]_P_i_123_n_6 ,\aux_reg[10]_P_n_0 ,1'b0}),
        .O({\out_reg[7]_P_i_104_n_4 ,\out_reg[7]_P_i_104_n_5 ,\out_reg[7]_P_i_104_n_6 ,\NLW_out_reg[7]_P_i_104_O_UNCONNECTED [0]}),
        .S({\out[7]_P_i_128_n_0 ,\out[7]_P_i_129_n_0 ,\out[7]_P_i_130_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_P_i_11 
       (.CI(state_reg2__790_carry__0_i_16_n_0),
        .CO({\out_reg[7]_P_i_11_n_0 ,\out_reg[7]_P_i_11_n_1 ,\out_reg[7]_P_i_11_n_2 ,\out_reg[7]_P_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_16_n_5 ,\out_reg[7]_P_i_16_n_6 ,\out_reg[7]_P_i_16_n_7 ,\out_reg[7]_P_i_32_n_4 }),
        .O({\out_reg[7]_P_i_11_n_4 ,\out_reg[7]_P_i_11_n_5 ,\out_reg[7]_P_i_11_n_6 ,\out_reg[7]_P_i_11_n_7 }),
        .S({\out[7]_P_i_33_n_0 ,\out[7]_P_i_34_n_0 ,\out[7]_P_i_35_n_0 ,\out[7]_P_i_36_n_0 }));
  CARRY4 \out_reg[7]_P_i_112 
       (.CI(\out_reg[7]_P_i_117_n_0 ),
        .CO({\out_reg[7]_P_i_112_n_0 ,\out_reg[7]_P_i_112_n_1 ,\out_reg[7]_P_i_112_n_2 ,\out_reg[7]_P_i_112_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_131_n_0 ,\out_reg[7]_P_i_131_n_6 ,\out_reg[7]_P_i_131_n_0 ,\out_reg[7]_P_i_131_n_0 }),
        .O({\NLW_out_reg[7]_P_i_112_O_UNCONNECTED [3],\out_reg[7]_P_i_112_n_5 ,\out_reg[7]_P_i_112_n_6 ,\out_reg[7]_P_i_112_n_7 }),
        .S({\out[7]_P_i_132_n_0 ,\out[7]_P_i_133_n_0 ,\out[7]_P_i_134_n_0 ,\out[7]_P_i_135_n_0 }));
  CARRY4 \out_reg[7]_P_i_117 
       (.CI(\out_reg[7]_P_i_118_n_0 ),
        .CO({\out_reg[7]_P_i_117_n_0 ,\out_reg[7]_P_i_117_n_1 ,\out_reg[7]_P_i_117_n_2 ,\out_reg[7]_P_i_117_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_136_n_5 ,\out_reg[7]_P_i_136_n_6 ,\out_reg[7]_P_i_136_n_7 ,\out_reg[7]_P_i_137_n_4 }),
        .O({\out_reg[7]_P_i_117_n_4 ,\out_reg[7]_P_i_117_n_5 ,\out_reg[7]_P_i_117_n_6 ,\out_reg[7]_P_i_117_n_7 }),
        .S({\out[7]_P_i_138_n_0 ,\out[7]_P_i_139_n_0 ,\out[7]_P_i_140_n_0 ,\out[7]_P_i_141_n_0 }));
  CARRY4 \out_reg[7]_P_i_118 
       (.CI(\out_reg[7]_P_i_123_n_0 ),
        .CO({\out_reg[7]_P_i_118_n_0 ,\out_reg[7]_P_i_118_n_1 ,\out_reg[7]_P_i_118_n_2 ,\out_reg[7]_P_i_118_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_137_n_5 ,\out_reg[7]_P_i_137_n_6 ,\out_reg[7]_P_i_137_n_7 ,\out_reg[7]_P_i_142_n_4 }),
        .O({\out_reg[7]_P_i_118_n_4 ,\out_reg[7]_P_i_118_n_5 ,\out_reg[7]_P_i_118_n_6 ,\out_reg[7]_P_i_118_n_7 }),
        .S({\out[7]_P_i_143_n_0 ,\out[7]_P_i_144_n_0 ,\out[7]_P_i_145_n_0 ,\out[7]_P_i_146_n_0 }));
  CARRY4 \out_reg[7]_P_i_123 
       (.CI(1'b0),
        .CO({\out_reg[7]_P_i_123_n_0 ,\out_reg[7]_P_i_123_n_1 ,\out_reg[7]_P_i_123_n_2 ,\out_reg[7]_P_i_123_n_3 }),
        .CYINIT(\out_reg[7]_P_i_131_n_0 ),
        .DI({\out_reg[7]_P_i_142_n_5 ,\out_reg[7]_P_i_142_n_6 ,\aux_reg[11]_P_n_0 ,1'b0}),
        .O({\out_reg[7]_P_i_123_n_4 ,\out_reg[7]_P_i_123_n_5 ,\out_reg[7]_P_i_123_n_6 ,\NLW_out_reg[7]_P_i_123_O_UNCONNECTED [0]}),
        .S({\out[7]_P_i_147_n_0 ,\out[7]_P_i_148_n_0 ,\out[7]_P_i_149_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_P_i_131 
       (.CI(\out_reg[7]_P_i_136_n_0 ),
        .CO({\out_reg[7]_P_i_131_n_0 ,\out_reg[7]_P_i_131_n_1 ,\out_reg[7]_P_i_131_n_2 ,\out_reg[7]_P_i_131_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_150_n_0 ,\out_reg[7]_P_i_150_n_6 ,\out_reg[7]_P_i_150_n_0 ,\out_reg[7]_P_i_150_n_0 }),
        .O({\NLW_out_reg[7]_P_i_131_O_UNCONNECTED [3],\out_reg[7]_P_i_131_n_5 ,\out_reg[7]_P_i_131_n_6 ,\out_reg[7]_P_i_131_n_7 }),
        .S({\out[7]_P_i_151_n_0 ,\out[7]_P_i_152_n_0 ,\out[7]_P_i_153_n_0 ,\out[7]_P_i_154_n_0 }));
  CARRY4 \out_reg[7]_P_i_136 
       (.CI(\out_reg[7]_P_i_137_n_0 ),
        .CO({\out_reg[7]_P_i_136_n_0 ,\out_reg[7]_P_i_136_n_1 ,\out_reg[7]_P_i_136_n_2 ,\out_reg[7]_P_i_136_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_155_n_5 ,\out_reg[7]_P_i_155_n_6 ,\out_reg[7]_P_i_155_n_7 ,\out_reg[7]_P_i_156_n_4 }),
        .O({\out_reg[7]_P_i_136_n_4 ,\out_reg[7]_P_i_136_n_5 ,\out_reg[7]_P_i_136_n_6 ,\out_reg[7]_P_i_136_n_7 }),
        .S({\out[7]_P_i_157_n_0 ,\out[7]_P_i_158_n_0 ,\out[7]_P_i_159_n_0 ,\out[7]_P_i_160_n_0 }));
  CARRY4 \out_reg[7]_P_i_137 
       (.CI(\out_reg[7]_P_i_142_n_0 ),
        .CO({\out_reg[7]_P_i_137_n_0 ,\out_reg[7]_P_i_137_n_1 ,\out_reg[7]_P_i_137_n_2 ,\out_reg[7]_P_i_137_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_156_n_5 ,\out_reg[7]_P_i_156_n_6 ,\out_reg[7]_P_i_156_n_7 ,\out_reg[7]_P_i_161_n_4 }),
        .O({\out_reg[7]_P_i_137_n_4 ,\out_reg[7]_P_i_137_n_5 ,\out_reg[7]_P_i_137_n_6 ,\out_reg[7]_P_i_137_n_7 }),
        .S({\out[7]_P_i_162_n_0 ,\out[7]_P_i_163_n_0 ,\out[7]_P_i_164_n_0 ,\out[7]_P_i_165_n_0 }));
  CARRY4 \out_reg[7]_P_i_142 
       (.CI(1'b0),
        .CO({\out_reg[7]_P_i_142_n_0 ,\out_reg[7]_P_i_142_n_1 ,\out_reg[7]_P_i_142_n_2 ,\out_reg[7]_P_i_142_n_3 }),
        .CYINIT(\out_reg[7]_P_i_150_n_0 ),
        .DI({\out_reg[7]_P_i_161_n_5 ,\out_reg[7]_P_i_161_n_6 ,\aux_reg[12]_P_n_0 ,1'b0}),
        .O({\out_reg[7]_P_i_142_n_4 ,\out_reg[7]_P_i_142_n_5 ,\out_reg[7]_P_i_142_n_6 ,\NLW_out_reg[7]_P_i_142_O_UNCONNECTED [0]}),
        .S({\out[7]_P_i_166_n_0 ,\out[7]_P_i_167_n_0 ,\out[7]_P_i_168_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_P_i_150 
       (.CI(\out_reg[7]_P_i_155_n_0 ),
        .CO({\out_reg[7]_P_i_150_n_0 ,\out_reg[7]_P_i_150_n_1 ,\out_reg[7]_P_i_150_n_2 ,\out_reg[7]_P_i_150_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_169_n_0 ,\out_reg[7]_P_i_169_n_6 ,\out_reg[7]_P_i_169_n_0 ,\out_reg[7]_P_i_169_n_0 }),
        .O({\NLW_out_reg[7]_P_i_150_O_UNCONNECTED [3],\out_reg[7]_P_i_150_n_5 ,\out_reg[7]_P_i_150_n_6 ,\out_reg[7]_P_i_150_n_7 }),
        .S({\out[7]_P_i_170_n_0 ,\out[7]_P_i_171_n_0 ,\out[7]_P_i_172_n_0 ,\out[7]_P_i_173_n_0 }));
  CARRY4 \out_reg[7]_P_i_155 
       (.CI(\out_reg[7]_P_i_156_n_0 ),
        .CO({\out_reg[7]_P_i_155_n_0 ,\out_reg[7]_P_i_155_n_1 ,\out_reg[7]_P_i_155_n_2 ,\out_reg[7]_P_i_155_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_174_n_5 ,\out_reg[7]_P_i_174_n_6 ,\out_reg[7]_P_i_174_n_7 ,\out_reg[7]_P_i_175_n_4 }),
        .O({\out_reg[7]_P_i_155_n_4 ,\out_reg[7]_P_i_155_n_5 ,\out_reg[7]_P_i_155_n_6 ,\out_reg[7]_P_i_155_n_7 }),
        .S({\out[7]_P_i_176_n_0 ,\out[7]_P_i_177_n_0 ,\out[7]_P_i_178_n_0 ,\out[7]_P_i_179_n_0 }));
  CARRY4 \out_reg[7]_P_i_156 
       (.CI(\out_reg[7]_P_i_161_n_0 ),
        .CO({\out_reg[7]_P_i_156_n_0 ,\out_reg[7]_P_i_156_n_1 ,\out_reg[7]_P_i_156_n_2 ,\out_reg[7]_P_i_156_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_175_n_5 ,\out_reg[7]_P_i_175_n_6 ,\out_reg[7]_P_i_175_n_7 ,\out_reg[7]_P_i_180_n_4 }),
        .O({\out_reg[7]_P_i_156_n_4 ,\out_reg[7]_P_i_156_n_5 ,\out_reg[7]_P_i_156_n_6 ,\out_reg[7]_P_i_156_n_7 }),
        .S({\out[7]_P_i_181_n_0 ,\out[7]_P_i_182_n_0 ,\out[7]_P_i_183_n_0 ,\out[7]_P_i_184_n_0 }));
  CARRY4 \out_reg[7]_P_i_16 
       (.CI(\out_reg[7]_P_i_32_n_0 ),
        .CO({\out_reg[7]_P_i_16_n_0 ,\out_reg[7]_P_i_16_n_1 ,\out_reg[7]_P_i_16_n_2 ,\out_reg[7]_P_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_21_n_5 ,\out_reg[7]_P_i_21_n_6 ,\out_reg[7]_P_i_21_n_7 ,\out_reg[7]_P_i_37_n_4 }),
        .O({\out_reg[7]_P_i_16_n_4 ,\out_reg[7]_P_i_16_n_5 ,\out_reg[7]_P_i_16_n_6 ,\out_reg[7]_P_i_16_n_7 }),
        .S({\out[7]_P_i_38_n_0 ,\out[7]_P_i_39_n_0 ,\out[7]_P_i_40_n_0 ,\out[7]_P_i_41_n_0 }));
  CARRY4 \out_reg[7]_P_i_161 
       (.CI(1'b0),
        .CO({\out_reg[7]_P_i_161_n_0 ,\out_reg[7]_P_i_161_n_1 ,\out_reg[7]_P_i_161_n_2 ,\out_reg[7]_P_i_161_n_3 }),
        .CYINIT(\out_reg[7]_P_i_169_n_0 ),
        .DI({\out_reg[7]_P_i_180_n_5 ,\out_reg[7]_P_i_180_n_6 ,\aux_reg[13]_P_n_0 ,1'b0}),
        .O({\out_reg[7]_P_i_161_n_4 ,\out_reg[7]_P_i_161_n_5 ,\out_reg[7]_P_i_161_n_6 ,\NLW_out_reg[7]_P_i_161_O_UNCONNECTED [0]}),
        .S({\out[7]_P_i_185_n_0 ,\out[7]_P_i_186_n_0 ,\out[7]_P_i_187_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_P_i_169 
       (.CI(\out_reg[7]_P_i_174_n_0 ),
        .CO({\out_reg[7]_P_i_169_n_0 ,\out_reg[7]_P_i_169_n_1 ,\out_reg[7]_P_i_169_n_2 ,\out_reg[7]_P_i_169_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_188_n_1 ,\out[7]_P_i_189_n_0 ,\out_reg[7]_P_i_188_n_1 ,\out_reg[7]_P_i_188_n_1 }),
        .O({\NLW_out_reg[7]_P_i_169_O_UNCONNECTED [3],\out_reg[7]_P_i_169_n_5 ,\out_reg[7]_P_i_169_n_6 ,\out_reg[7]_P_i_169_n_7 }),
        .S({\out[7]_P_i_190_n_0 ,\out[7]_P_i_191_n_0 ,\out[7]_P_i_192_n_0 ,\out[7]_P_i_193_n_0 }));
  CARRY4 \out_reg[7]_P_i_174 
       (.CI(\out_reg[7]_P_i_175_n_0 ),
        .CO({\out_reg[7]_P_i_174_n_0 ,\out_reg[7]_P_i_174_n_1 ,\out_reg[7]_P_i_174_n_2 ,\out_reg[7]_P_i_174_n_3 }),
        .CYINIT(1'b0),
        .DI({state_reg2_carry__1_n_6,state_reg2_carry__1_n_7,state_reg2_carry__0_n_4,state_reg2_carry__0_n_5}),
        .O({\out_reg[7]_P_i_174_n_4 ,\out_reg[7]_P_i_174_n_5 ,\out_reg[7]_P_i_174_n_6 ,\out_reg[7]_P_i_174_n_7 }),
        .S({\out[7]_P_i_194_n_0 ,\out[7]_P_i_195_n_0 ,\out[7]_P_i_196_n_0 ,\out[7]_P_i_197_n_0 }));
  CARRY4 \out_reg[7]_P_i_175 
       (.CI(\out_reg[7]_P_i_180_n_0 ),
        .CO({\out_reg[7]_P_i_175_n_0 ,\out_reg[7]_P_i_175_n_1 ,\out_reg[7]_P_i_175_n_2 ,\out_reg[7]_P_i_175_n_3 }),
        .CYINIT(1'b0),
        .DI({state_reg2_carry__0_n_6,state_reg2_carry__0_n_7,state_reg2_carry_n_4,state_reg2_carry_n_5}),
        .O({\out_reg[7]_P_i_175_n_4 ,\out_reg[7]_P_i_175_n_5 ,\out_reg[7]_P_i_175_n_6 ,\out_reg[7]_P_i_175_n_7 }),
        .S({\out[7]_P_i_198_n_0 ,\out[7]_P_i_199_n_0 ,\out[7]_P_i_200_n_0 ,\out[7]_P_i_201_n_0 }));
  CARRY4 \out_reg[7]_P_i_180 
       (.CI(1'b0),
        .CO({\out_reg[7]_P_i_180_n_0 ,\out_reg[7]_P_i_180_n_1 ,\out_reg[7]_P_i_180_n_2 ,\out_reg[7]_P_i_180_n_3 }),
        .CYINIT(\out_reg[7]_P_i_188_n_1 ),
        .DI({state_reg2_carry_n_6,state_reg2_carry_n_7,\aux_reg[14]_P_n_0 ,1'b0}),
        .O({\out_reg[7]_P_i_180_n_4 ,\out_reg[7]_P_i_180_n_5 ,\out_reg[7]_P_i_180_n_6 ,\NLW_out_reg[7]_P_i_180_O_UNCONNECTED [0]}),
        .S({\out[7]_P_i_202_n_0 ,\out[7]_P_i_203_n_0 ,\out[7]_P_i_204_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_P_i_188 
       (.CI(1'b0),
        .CO({\NLW_out_reg[7]_P_i_188_CO_UNCONNECTED [3],\out_reg[7]_P_i_188_n_1 ,\NLW_out_reg[7]_P_i_188_CO_UNCONNECTED [1],\out_reg[7]_P_i_188_n_3 }),
        .CYINIT(state_reg2_carry__1_n_0),
        .DI({1'b0,1'b0,\out[7]_P_i_205_n_0 ,1'b0}),
        .O({\NLW_out_reg[7]_P_i_188_O_UNCONNECTED [3:2],\out_reg[7]_P_i_188_n_6 ,\NLW_out_reg[7]_P_i_188_O_UNCONNECTED [0]}),
        .S({1'b0,1'b1,\out[7]_P_i_206_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_P_i_21 
       (.CI(\out_reg[7]_P_i_37_n_0 ),
        .CO({\out_reg[7]_P_i_21_n_0 ,\out_reg[7]_P_i_21_n_1 ,\out_reg[7]_P_i_21_n_2 ,\out_reg[7]_P_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_26_n_5 ,\out_reg[7]_P_i_26_n_6 ,\out_reg[7]_P_i_26_n_7 ,\out_reg[7]_P_i_42_n_4 }),
        .O({\out_reg[7]_P_i_21_n_4 ,\out_reg[7]_P_i_21_n_5 ,\out_reg[7]_P_i_21_n_6 ,\out_reg[7]_P_i_21_n_7 }),
        .S({\out[7]_P_i_43_n_0 ,\out[7]_P_i_44_n_0 ,\out[7]_P_i_45_n_0 ,\out[7]_P_i_46_n_0 }));
  CARRY4 \out_reg[7]_P_i_26 
       (.CI(\out_reg[7]_P_i_42_n_0 ),
        .CO({\out_reg[7]_P_i_26_n_0 ,\out_reg[7]_P_i_26_n_1 ,\out_reg[7]_P_i_26_n_2 ,\out_reg[7]_P_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_47_n_5 ,\out_reg[7]_P_i_47_n_6 ,\out_reg[7]_P_i_47_n_7 ,\out_reg[7]_P_i_48_n_4 }),
        .O({\out_reg[7]_P_i_26_n_4 ,\out_reg[7]_P_i_26_n_5 ,\out_reg[7]_P_i_26_n_6 ,\out_reg[7]_P_i_26_n_7 }),
        .S({\out[7]_P_i_49_n_0 ,\out[7]_P_i_50_n_0 ,\out[7]_P_i_51_n_0 ,\out[7]_P_i_52_n_0 }));
  CARRY4 \out_reg[7]_P_i_27 
       (.CI(\out_reg[7]_P_i_47_n_0 ),
        .CO({\out_reg[7]_P_i_27_n_0 ,\out_reg[7]_P_i_27_n_1 ,\out_reg[7]_P_i_27_n_2 ,\out_reg[7]_P_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_53_n_0 ,\out_reg[7]_P_i_53_n_6 ,\out_reg[7]_P_i_53_n_0 ,\out_reg[7]_P_i_53_n_0 }),
        .O({\NLW_out_reg[7]_P_i_27_O_UNCONNECTED [3],\out_reg[7]_P_i_27_n_5 ,\out_reg[7]_P_i_27_n_6 ,\out_reg[7]_P_i_27_n_7 }),
        .S({\out[7]_P_i_54_n_0 ,\out[7]_P_i_55_n_0 ,\out[7]_P_i_56_n_0 ,\out[7]_P_i_57_n_0 }));
  CARRY4 \out_reg[7]_P_i_32 
       (.CI(state_reg2__790_carry_i_28_n_0),
        .CO({\out_reg[7]_P_i_32_n_0 ,\out_reg[7]_P_i_32_n_1 ,\out_reg[7]_P_i_32_n_2 ,\out_reg[7]_P_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_37_n_5 ,\out_reg[7]_P_i_37_n_6 ,\out_reg[7]_P_i_37_n_7 ,\out_reg[7]_P_i_58_n_4 }),
        .O({\out_reg[7]_P_i_32_n_4 ,\out_reg[7]_P_i_32_n_5 ,\out_reg[7]_P_i_32_n_6 ,\out_reg[7]_P_i_32_n_7 }),
        .S({\out[7]_P_i_59_n_0 ,\out[7]_P_i_60_n_0 ,\out[7]_P_i_61_n_0 ,\out[7]_P_i_62_n_0 }));
  CARRY4 \out_reg[7]_P_i_37 
       (.CI(\out_reg[7]_P_i_58_n_0 ),
        .CO({\out_reg[7]_P_i_37_n_0 ,\out_reg[7]_P_i_37_n_1 ,\out_reg[7]_P_i_37_n_2 ,\out_reg[7]_P_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_42_n_5 ,\out_reg[7]_P_i_42_n_6 ,\out_reg[7]_P_i_42_n_7 ,\out_reg[7]_P_i_63_n_4 }),
        .O({\out_reg[7]_P_i_37_n_4 ,\out_reg[7]_P_i_37_n_5 ,\out_reg[7]_P_i_37_n_6 ,\out_reg[7]_P_i_37_n_7 }),
        .S({\out[7]_P_i_64_n_0 ,\out[7]_P_i_65_n_0 ,\out[7]_P_i_66_n_0 ,\out[7]_P_i_67_n_0 }));
  CARRY4 \out_reg[7]_P_i_42 
       (.CI(\out_reg[7]_P_i_63_n_0 ),
        .CO({\out_reg[7]_P_i_42_n_0 ,\out_reg[7]_P_i_42_n_1 ,\out_reg[7]_P_i_42_n_2 ,\out_reg[7]_P_i_42_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_48_n_5 ,\out_reg[7]_P_i_48_n_6 ,\out_reg[7]_P_i_48_n_7 ,\out_reg[7]_P_i_68_n_4 }),
        .O({\out_reg[7]_P_i_42_n_4 ,\out_reg[7]_P_i_42_n_5 ,\out_reg[7]_P_i_42_n_6 ,\out_reg[7]_P_i_42_n_7 }),
        .S({\out[7]_P_i_69_n_0 ,\out[7]_P_i_70_n_0 ,\out[7]_P_i_71_n_0 ,\out[7]_P_i_72_n_0 }));
  CARRY4 \out_reg[7]_P_i_47 
       (.CI(\out_reg[7]_P_i_48_n_0 ),
        .CO({\out_reg[7]_P_i_47_n_0 ,\out_reg[7]_P_i_47_n_1 ,\out_reg[7]_P_i_47_n_2 ,\out_reg[7]_P_i_47_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_73_n_5 ,\out_reg[7]_P_i_73_n_6 ,\out_reg[7]_P_i_73_n_7 ,\out_reg[7]_P_i_74_n_4 }),
        .O({\out_reg[7]_P_i_47_n_4 ,\out_reg[7]_P_i_47_n_5 ,\out_reg[7]_P_i_47_n_6 ,\out_reg[7]_P_i_47_n_7 }),
        .S({\out[7]_P_i_75_n_0 ,\out[7]_P_i_76_n_0 ,\out[7]_P_i_77_n_0 ,\out[7]_P_i_78_n_0 }));
  CARRY4 \out_reg[7]_P_i_48 
       (.CI(\out_reg[7]_P_i_68_n_0 ),
        .CO({\out_reg[7]_P_i_48_n_0 ,\out_reg[7]_P_i_48_n_1 ,\out_reg[7]_P_i_48_n_2 ,\out_reg[7]_P_i_48_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_74_n_5 ,\out_reg[7]_P_i_74_n_6 ,\out_reg[7]_P_i_74_n_7 ,\out_reg[7]_P_i_79_n_4 }),
        .O({\out_reg[7]_P_i_48_n_4 ,\out_reg[7]_P_i_48_n_5 ,\out_reg[7]_P_i_48_n_6 ,\out_reg[7]_P_i_48_n_7 }),
        .S({\out[7]_P_i_80_n_0 ,\out[7]_P_i_81_n_0 ,\out[7]_P_i_82_n_0 ,\out[7]_P_i_83_n_0 }));
  CARRY4 \out_reg[7]_P_i_53 
       (.CI(\out_reg[7]_P_i_73_n_0 ),
        .CO({\out_reg[7]_P_i_53_n_0 ,\out_reg[7]_P_i_53_n_1 ,\out_reg[7]_P_i_53_n_2 ,\out_reg[7]_P_i_53_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_84_n_0 ,\out_reg[7]_P_i_84_n_6 ,\out_reg[7]_P_i_84_n_0 ,\out_reg[7]_P_i_84_n_0 }),
        .O({\NLW_out_reg[7]_P_i_53_O_UNCONNECTED [3],\out_reg[7]_P_i_53_n_5 ,\out_reg[7]_P_i_53_n_6 ,\out_reg[7]_P_i_53_n_7 }),
        .S({\out[7]_P_i_85_n_0 ,\out[7]_P_i_86_n_0 ,\out[7]_P_i_87_n_0 ,\out[7]_P_i_88_n_0 }));
  CARRY4 \out_reg[7]_P_i_58 
       (.CI(1'b0),
        .CO({\out_reg[7]_P_i_58_n_0 ,\out_reg[7]_P_i_58_n_1 ,\out_reg[7]_P_i_58_n_2 ,\out_reg[7]_P_i_58_n_3 }),
        .CYINIT(\out_reg[7]_P_i_9_n_0 ),
        .DI({\out_reg[7]_P_i_63_n_5 ,\out_reg[7]_P_i_63_n_6 ,\aux_reg[6]_P_n_0 ,1'b0}),
        .O({\out_reg[7]_P_i_58_n_4 ,\out_reg[7]_P_i_58_n_5 ,\out_reg[7]_P_i_58_n_6 ,\NLW_out_reg[7]_P_i_58_O_UNCONNECTED [0]}),
        .S({\out[7]_P_i_89_n_0 ,\out[7]_P_i_90_n_0 ,\out[7]_P_i_91_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_P_i_6 
       (.CI(\out_reg[7]_P_i_11_n_0 ),
        .CO({\out_reg[7]_P_i_6_n_0 ,\out_reg[7]_P_i_6_n_1 ,\out_reg[7]_P_i_6_n_2 ,\out_reg[7]_P_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_7_n_0 ,\out_reg[7]_P_i_7_n_6 ,\out_reg[7]_P_i_7_n_0 ,\out_reg[7]_P_i_7_n_0 }),
        .O({\NLW_out_reg[7]_P_i_6_O_UNCONNECTED [3],\out_reg[7]_P_i_6_n_5 ,\out_reg[7]_P_i_6_n_6 ,\out_reg[7]_P_i_6_n_7 }),
        .S({\out[7]_P_i_12_n_0 ,\out[7]_P_i_13_n_0 ,\out[7]_P_i_14_n_0 ,\out[7]_P_i_15_n_0 }));
  CARRY4 \out_reg[7]_P_i_63 
       (.CI(1'b0),
        .CO({\out_reg[7]_P_i_63_n_0 ,\out_reg[7]_P_i_63_n_1 ,\out_reg[7]_P_i_63_n_2 ,\out_reg[7]_P_i_63_n_3 }),
        .CYINIT(\out_reg[7]_P_i_27_n_0 ),
        .DI({\out_reg[7]_P_i_68_n_5 ,\out_reg[7]_P_i_68_n_6 ,\aux_reg[7]_P_n_0 ,1'b0}),
        .O({\out_reg[7]_P_i_63_n_4 ,\out_reg[7]_P_i_63_n_5 ,\out_reg[7]_P_i_63_n_6 ,\NLW_out_reg[7]_P_i_63_O_UNCONNECTED [0]}),
        .S({\out[7]_P_i_92_n_0 ,\out[7]_P_i_93_n_0 ,\out[7]_P_i_94_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_P_i_68 
       (.CI(1'b0),
        .CO({\out_reg[7]_P_i_68_n_0 ,\out_reg[7]_P_i_68_n_1 ,\out_reg[7]_P_i_68_n_2 ,\out_reg[7]_P_i_68_n_3 }),
        .CYINIT(\out_reg[7]_P_i_53_n_0 ),
        .DI({\out_reg[7]_P_i_79_n_5 ,\out_reg[7]_P_i_79_n_6 ,\aux_reg[8]_P_n_0 ,1'b0}),
        .O({\out_reg[7]_P_i_68_n_4 ,\out_reg[7]_P_i_68_n_5 ,\out_reg[7]_P_i_68_n_6 ,\NLW_out_reg[7]_P_i_68_O_UNCONNECTED [0]}),
        .S({\out[7]_P_i_95_n_0 ,\out[7]_P_i_96_n_0 ,\out[7]_P_i_97_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_P_i_7 
       (.CI(\out_reg[7]_P_i_16_n_0 ),
        .CO({\out_reg[7]_P_i_7_n_0 ,\out_reg[7]_P_i_7_n_1 ,\out_reg[7]_P_i_7_n_2 ,\out_reg[7]_P_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_8_n_0 ,\out_reg[7]_P_i_8_n_6 ,\out_reg[7]_P_i_8_n_0 ,\out_reg[7]_P_i_8_n_0 }),
        .O({\NLW_out_reg[7]_P_i_7_O_UNCONNECTED [3],\out_reg[7]_P_i_7_n_5 ,\out_reg[7]_P_i_7_n_6 ,\out_reg[7]_P_i_7_n_7 }),
        .S({\out[7]_P_i_17_n_0 ,\out[7]_P_i_18_n_0 ,\out[7]_P_i_19_n_0 ,\out[7]_P_i_20_n_0 }));
  CARRY4 \out_reg[7]_P_i_73 
       (.CI(\out_reg[7]_P_i_74_n_0 ),
        .CO({\out_reg[7]_P_i_73_n_0 ,\out_reg[7]_P_i_73_n_1 ,\out_reg[7]_P_i_73_n_2 ,\out_reg[7]_P_i_73_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_98_n_5 ,\out_reg[7]_P_i_98_n_6 ,\out_reg[7]_P_i_98_n_7 ,\out_reg[7]_P_i_99_n_4 }),
        .O({\out_reg[7]_P_i_73_n_4 ,\out_reg[7]_P_i_73_n_5 ,\out_reg[7]_P_i_73_n_6 ,\out_reg[7]_P_i_73_n_7 }),
        .S({\out[7]_P_i_100_n_0 ,\out[7]_P_i_101_n_0 ,\out[7]_P_i_102_n_0 ,\out[7]_P_i_103_n_0 }));
  CARRY4 \out_reg[7]_P_i_74 
       (.CI(\out_reg[7]_P_i_79_n_0 ),
        .CO({\out_reg[7]_P_i_74_n_0 ,\out_reg[7]_P_i_74_n_1 ,\out_reg[7]_P_i_74_n_2 ,\out_reg[7]_P_i_74_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_99_n_5 ,\out_reg[7]_P_i_99_n_6 ,\out_reg[7]_P_i_99_n_7 ,\out_reg[7]_P_i_104_n_4 }),
        .O({\out_reg[7]_P_i_74_n_4 ,\out_reg[7]_P_i_74_n_5 ,\out_reg[7]_P_i_74_n_6 ,\out_reg[7]_P_i_74_n_7 }),
        .S({\out[7]_P_i_105_n_0 ,\out[7]_P_i_106_n_0 ,\out[7]_P_i_107_n_0 ,\out[7]_P_i_108_n_0 }));
  CARRY4 \out_reg[7]_P_i_79 
       (.CI(1'b0),
        .CO({\out_reg[7]_P_i_79_n_0 ,\out_reg[7]_P_i_79_n_1 ,\out_reg[7]_P_i_79_n_2 ,\out_reg[7]_P_i_79_n_3 }),
        .CYINIT(\out_reg[7]_P_i_84_n_0 ),
        .DI({\out_reg[7]_P_i_104_n_5 ,\out_reg[7]_P_i_104_n_6 ,\aux_reg[9]_P_n_0 ,1'b0}),
        .O({\out_reg[7]_P_i_79_n_4 ,\out_reg[7]_P_i_79_n_5 ,\out_reg[7]_P_i_79_n_6 ,\NLW_out_reg[7]_P_i_79_O_UNCONNECTED [0]}),
        .S({\out[7]_P_i_109_n_0 ,\out[7]_P_i_110_n_0 ,\out[7]_P_i_111_n_0 ,1'b1}));
  CARRY4 \out_reg[7]_P_i_8 
       (.CI(\out_reg[7]_P_i_21_n_0 ),
        .CO({\out_reg[7]_P_i_8_n_0 ,\out_reg[7]_P_i_8_n_1 ,\out_reg[7]_P_i_8_n_2 ,\out_reg[7]_P_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_9_n_0 ,\out_reg[7]_P_i_9_n_6 ,\out_reg[7]_P_i_9_n_0 ,\out_reg[7]_P_i_9_n_0 }),
        .O({\NLW_out_reg[7]_P_i_8_O_UNCONNECTED [3],\out_reg[7]_P_i_8_n_5 ,\out_reg[7]_P_i_8_n_6 ,\out_reg[7]_P_i_8_n_7 }),
        .S({\out[7]_P_i_22_n_0 ,\out[7]_P_i_23_n_0 ,\out[7]_P_i_24_n_0 ,\out[7]_P_i_25_n_0 }));
  CARRY4 \out_reg[7]_P_i_84 
       (.CI(\out_reg[7]_P_i_98_n_0 ),
        .CO({\out_reg[7]_P_i_84_n_0 ,\out_reg[7]_P_i_84_n_1 ,\out_reg[7]_P_i_84_n_2 ,\out_reg[7]_P_i_84_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_112_n_0 ,\out_reg[7]_P_i_112_n_6 ,\out_reg[7]_P_i_112_n_0 ,\out_reg[7]_P_i_112_n_0 }),
        .O({\NLW_out_reg[7]_P_i_84_O_UNCONNECTED [3],\out_reg[7]_P_i_84_n_5 ,\out_reg[7]_P_i_84_n_6 ,\out_reg[7]_P_i_84_n_7 }),
        .S({\out[7]_P_i_113_n_0 ,\out[7]_P_i_114_n_0 ,\out[7]_P_i_115_n_0 ,\out[7]_P_i_116_n_0 }));
  CARRY4 \out_reg[7]_P_i_9 
       (.CI(\out_reg[7]_P_i_26_n_0 ),
        .CO({\out_reg[7]_P_i_9_n_0 ,\out_reg[7]_P_i_9_n_1 ,\out_reg[7]_P_i_9_n_2 ,\out_reg[7]_P_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_27_n_0 ,\out_reg[7]_P_i_27_n_6 ,\out_reg[7]_P_i_27_n_0 ,\out_reg[7]_P_i_27_n_0 }),
        .O({\NLW_out_reg[7]_P_i_9_O_UNCONNECTED [3],\out_reg[7]_P_i_9_n_5 ,\out_reg[7]_P_i_9_n_6 ,\out_reg[7]_P_i_9_n_7 }),
        .S({\out[7]_P_i_28_n_0 ,\out[7]_P_i_29_n_0 ,\out[7]_P_i_30_n_0 ,\out[7]_P_i_31_n_0 }));
  CARRY4 \out_reg[7]_P_i_98 
       (.CI(\out_reg[7]_P_i_99_n_0 ),
        .CO({\out_reg[7]_P_i_98_n_0 ,\out_reg[7]_P_i_98_n_1 ,\out_reg[7]_P_i_98_n_2 ,\out_reg[7]_P_i_98_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_117_n_5 ,\out_reg[7]_P_i_117_n_6 ,\out_reg[7]_P_i_117_n_7 ,\out_reg[7]_P_i_118_n_4 }),
        .O({\out_reg[7]_P_i_98_n_4 ,\out_reg[7]_P_i_98_n_5 ,\out_reg[7]_P_i_98_n_6 ,\out_reg[7]_P_i_98_n_7 }),
        .S({\out[7]_P_i_119_n_0 ,\out[7]_P_i_120_n_0 ,\out[7]_P_i_121_n_0 ,\out[7]_P_i_122_n_0 }));
  CARRY4 \out_reg[7]_P_i_99 
       (.CI(\out_reg[7]_P_i_104_n_0 ),
        .CO({\out_reg[7]_P_i_99_n_0 ,\out_reg[7]_P_i_99_n_1 ,\out_reg[7]_P_i_99_n_2 ,\out_reg[7]_P_i_99_n_3 }),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_118_n_5 ,\out_reg[7]_P_i_118_n_6 ,\out_reg[7]_P_i_118_n_7 ,\out_reg[7]_P_i_123_n_4 }),
        .O({\out_reg[7]_P_i_99_n_4 ,\out_reg[7]_P_i_99_n_5 ,\out_reg[7]_P_i_99_n_6 ,\out_reg[7]_P_i_99_n_7 }),
        .S({\out[7]_P_i_124_n_0 ,\out[7]_P_i_125_n_0 ,\out[7]_P_i_126_n_0 ,\out[7]_P_i_127_n_0 }));
  CARRY4 state_reg2__790_carry
       (.CI(1'b0),
        .CO({state_reg2__790_carry_n_0,state_reg2__790_carry_n_1,state_reg2__790_carry_n_2,state_reg2__790_carry_n_3}),
        .CYINIT(state_reg2__790_carry_i_1_n_0),
        .DI({state_reg2__790_carry_i_2_n_4,state_reg2__790_carry_i_2_n_5,state_reg2__790_carry_i_2_n_6,\aux_reg[0]_P_n_0 }),
        .O(NLW_state_reg2__790_carry_O_UNCONNECTED[3:0]),
        .S({state_reg2__790_carry_i_3_n_0,state_reg2__790_carry_i_4_n_0,state_reg2__790_carry_i_5_n_0,state_reg2__790_carry_i_6_n_0}));
  CARRY4 state_reg2__790_carry__0
       (.CI(state_reg2__790_carry_n_0),
        .CO({state_reg2__790_carry__0_n_0,state_reg2__790_carry__0_n_1,state_reg2__790_carry__0_n_2,state_reg2__790_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__790_carry__0_i_1_n_4,state_reg2__790_carry__0_i_1_n_5,state_reg2__790_carry__0_i_1_n_6,state_reg2__790_carry__0_i_1_n_7}),
        .O(NLW_state_reg2__790_carry__0_O_UNCONNECTED[3:0]),
        .S({state_reg2__790_carry__0_i_2_n_0,state_reg2__790_carry__0_i_3_n_0,state_reg2__790_carry__0_i_4_n_0,state_reg2__790_carry__0_i_5_n_0}));
  CARRY4 state_reg2__790_carry__0_i_1
       (.CI(state_reg2__790_carry_i_2_n_0),
        .CO({state_reg2__790_carry__0_i_1_n_0,state_reg2__790_carry__0_i_1_n_1,state_reg2__790_carry__0_i_1_n_2,state_reg2__790_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__790_carry__0_i_6_n_5,state_reg2__790_carry__0_i_6_n_6,state_reg2__790_carry__0_i_6_n_7,state_reg2__790_carry_i_12_n_4}),
        .O({state_reg2__790_carry__0_i_1_n_4,state_reg2__790_carry__0_i_1_n_5,state_reg2__790_carry__0_i_1_n_6,state_reg2__790_carry__0_i_1_n_7}),
        .S({state_reg2__790_carry__0_i_7_n_0,state_reg2__790_carry__0_i_8_n_0,state_reg2__790_carry__0_i_9_n_0,state_reg2__790_carry__0_i_10_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_10
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[3] ),
        .I2(state_reg2__790_carry_i_12_n_4),
        .O(state_reg2__790_carry__0_i_10_n_0));
  CARRY4 state_reg2__790_carry__0_i_11
       (.CI(state_reg2__790_carry_i_20_n_0),
        .CO({state_reg2__790_carry__0_i_11_n_0,state_reg2__790_carry__0_i_11_n_1,state_reg2__790_carry__0_i_11_n_2,state_reg2__790_carry__0_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__790_carry__0_i_16_n_5,state_reg2__790_carry__0_i_16_n_6,state_reg2__790_carry__0_i_16_n_7,state_reg2__790_carry_i_24_n_4}),
        .O({state_reg2__790_carry__0_i_11_n_4,state_reg2__790_carry__0_i_11_n_5,state_reg2__790_carry__0_i_11_n_6,state_reg2__790_carry__0_i_11_n_7}),
        .S({state_reg2__790_carry__0_i_17_n_0,state_reg2__790_carry__0_i_18_n_0,state_reg2__790_carry__0_i_19_n_0,state_reg2__790_carry__0_i_20_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_12
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__790_carry__0_i_11_n_5),
        .O(state_reg2__790_carry__0_i_12_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_13
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(state_reg2__790_carry__0_i_11_n_6),
        .O(state_reg2__790_carry__0_i_13_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_14
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(state_reg2__790_carry__0_i_11_n_7),
        .O(state_reg2__790_carry__0_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_15
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(state_reg2__790_carry_i_20_n_4),
        .O(state_reg2__790_carry__0_i_15_n_0));
  CARRY4 state_reg2__790_carry__0_i_16
       (.CI(state_reg2__790_carry_i_24_n_0),
        .CO({state_reg2__790_carry__0_i_16_n_0,state_reg2__790_carry__0_i_16_n_1,state_reg2__790_carry__0_i_16_n_2,state_reg2__790_carry__0_i_16_n_3}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_32_n_5 ,\out_reg[7]_P_i_32_n_6 ,\out_reg[7]_P_i_32_n_7 ,state_reg2__790_carry_i_28_n_4}),
        .O({state_reg2__790_carry__0_i_16_n_4,state_reg2__790_carry__0_i_16_n_5,state_reg2__790_carry__0_i_16_n_6,state_reg2__790_carry__0_i_16_n_7}),
        .S({state_reg2__790_carry__0_i_21_n_0,state_reg2__790_carry__0_i_22_n_0,state_reg2__790_carry__0_i_23_n_0,state_reg2__790_carry__0_i_24_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_17
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__790_carry__0_i_16_n_5),
        .O(state_reg2__790_carry__0_i_17_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_18
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(state_reg2__790_carry__0_i_16_n_6),
        .O(state_reg2__790_carry__0_i_18_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_19
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(state_reg2__790_carry__0_i_16_n_7),
        .O(state_reg2__790_carry__0_i_19_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_2
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[7] ),
        .I2(state_reg2__790_carry__0_i_1_n_4),
        .O(state_reg2__790_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_20
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(state_reg2__790_carry_i_24_n_4),
        .O(state_reg2__790_carry__0_i_20_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_21
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[6] ),
        .I2(\out_reg[7]_P_i_32_n_5 ),
        .O(state_reg2__790_carry__0_i_21_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_22
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[5] ),
        .I2(\out_reg[7]_P_i_32_n_6 ),
        .O(state_reg2__790_carry__0_i_22_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_23
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[4] ),
        .I2(\out_reg[7]_P_i_32_n_7 ),
        .O(state_reg2__790_carry__0_i_23_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_24
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[3] ),
        .I2(state_reg2__790_carry_i_28_n_4),
        .O(state_reg2__790_carry__0_i_24_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_3
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__790_carry__0_i_1_n_5),
        .O(state_reg2__790_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_4
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[5] ),
        .I2(state_reg2__790_carry__0_i_1_n_6),
        .O(state_reg2__790_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_5
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[4] ),
        .I2(state_reg2__790_carry__0_i_1_n_7),
        .O(state_reg2__790_carry__0_i_5_n_0));
  CARRY4 state_reg2__790_carry__0_i_6
       (.CI(state_reg2__790_carry_i_12_n_0),
        .CO({state_reg2__790_carry__0_i_6_n_0,state_reg2__790_carry__0_i_6_n_1,state_reg2__790_carry__0_i_6_n_2,state_reg2__790_carry__0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__790_carry__0_i_11_n_5,state_reg2__790_carry__0_i_11_n_6,state_reg2__790_carry__0_i_11_n_7,state_reg2__790_carry_i_20_n_4}),
        .O({state_reg2__790_carry__0_i_6_n_4,state_reg2__790_carry__0_i_6_n_5,state_reg2__790_carry__0_i_6_n_6,state_reg2__790_carry__0_i_6_n_7}),
        .S({state_reg2__790_carry__0_i_12_n_0,state_reg2__790_carry__0_i_13_n_0,state_reg2__790_carry__0_i_14_n_0,state_reg2__790_carry__0_i_15_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_7
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[6] ),
        .I2(state_reg2__790_carry__0_i_6_n_5),
        .O(state_reg2__790_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_8
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[5] ),
        .I2(state_reg2__790_carry__0_i_6_n_6),
        .O(state_reg2__790_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__0_i_9
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[4] ),
        .I2(state_reg2__790_carry__0_i_6_n_7),
        .O(state_reg2__790_carry__0_i_9_n_0));
  CARRY4 state_reg2__790_carry__1
       (.CI(state_reg2__790_carry__0_n_0),
        .CO({state_reg2__790_carry__1_n_0,state_reg2__790_carry__1_n_1,state_reg2__790_carry__1_n_2,state_reg2__790_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__790_carry_i_1_n_0,state_reg2__790_carry__1_i_1_n_5,state_reg2__790_carry__1_i_1_n_6,state_reg2__790_carry__1_i_1_n_7}),
        .O(NLW_state_reg2__790_carry__1_O_UNCONNECTED[3:0]),
        .S({state_reg2__790_carry__1_i_2_n_0,state_reg2__790_carry__1_i_3_n_0,state_reg2__790_carry__1_i_4_n_0,state_reg2__790_carry__1_i_5_n_0}));
  CARRY4 state_reg2__790_carry__1_i_1
       (.CI(state_reg2__790_carry__0_i_1_n_0),
        .CO({state_reg2__790_carry__1_i_1_n_0,state_reg2__790_carry__1_i_1_n_1,state_reg2__790_carry__1_i_1_n_2,state_reg2__790_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__790_carry__1_i_6_n_5,state_reg2__790_carry__1_i_6_n_6,state_reg2__790_carry__1_i_6_n_7,state_reg2__790_carry__0_i_6_n_4}),
        .O({state_reg2__790_carry__1_i_1_n_4,state_reg2__790_carry__1_i_1_n_5,state_reg2__790_carry__1_i_1_n_6,state_reg2__790_carry__1_i_1_n_7}),
        .S({state_reg2__790_carry__1_i_7_n_0,state_reg2__790_carry__1_i_8_n_0,state_reg2__790_carry__1_i_9_n_0,state_reg2__790_carry__1_i_10_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_10
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[7] ),
        .I2(state_reg2__790_carry__0_i_6_n_4),
        .O(state_reg2__790_carry__1_i_10_n_0));
  CARRY4 state_reg2__790_carry__1_i_11
       (.CI(state_reg2__790_carry__0_i_11_n_0),
        .CO({state_reg2__790_carry__1_i_11_n_0,state_reg2__790_carry__1_i_11_n_1,state_reg2__790_carry__1_i_11_n_2,state_reg2__790_carry__1_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({\out_reg[7]_P_i_11_n_5 ,\out_reg[7]_P_i_11_n_6 ,\out_reg[7]_P_i_11_n_7 ,state_reg2__790_carry__0_i_16_n_4}),
        .O({state_reg2__790_carry__1_i_11_n_4,state_reg2__790_carry__1_i_11_n_5,state_reg2__790_carry__1_i_11_n_6,state_reg2__790_carry__1_i_11_n_7}),
        .S({state_reg2__790_carry__1_i_16_n_0,state_reg2__790_carry__1_i_17_n_0,state_reg2__790_carry__1_i_18_n_0,state_reg2__790_carry__1_i_19_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_12
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(state_reg2__790_carry__1_i_11_n_5),
        .O(state_reg2__790_carry__1_i_12_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_13
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(state_reg2__790_carry__1_i_11_n_6),
        .O(state_reg2__790_carry__1_i_13_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_14
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(state_reg2__790_carry__1_i_11_n_7),
        .O(state_reg2__790_carry__1_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_15
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(state_reg2__790_carry__0_i_11_n_4),
        .O(state_reg2__790_carry__1_i_15_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_16
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[7]_P_i_11_n_5 ),
        .O(state_reg2__790_carry__1_i_16_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_17
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_11_n_6 ),
        .O(state_reg2__790_carry__1_i_17_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_18
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[9] ),
        .I2(\out_reg[7]_P_i_11_n_7 ),
        .O(state_reg2__790_carry__1_i_18_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_19
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[7] ),
        .I2(state_reg2__790_carry__0_i_16_n_4),
        .O(state_reg2__790_carry__1_i_19_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__790_carry__1_i_2
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(state_reg2__790_carry__1_i_1_n_4),
        .O(state_reg2__790_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_3
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[10] ),
        .I2(state_reg2__790_carry__1_i_1_n_5),
        .O(state_reg2__790_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_4
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[9] ),
        .I2(state_reg2__790_carry__1_i_1_n_6),
        .O(state_reg2__790_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_5
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[9] ),
        .I2(state_reg2__790_carry__1_i_1_n_7),
        .O(state_reg2__790_carry__1_i_5_n_0));
  CARRY4 state_reg2__790_carry__1_i_6
       (.CI(state_reg2__790_carry__0_i_6_n_0),
        .CO({state_reg2__790_carry__1_i_6_n_0,state_reg2__790_carry__1_i_6_n_1,state_reg2__790_carry__1_i_6_n_2,state_reg2__790_carry__1_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__790_carry__1_i_11_n_5,state_reg2__790_carry__1_i_11_n_6,state_reg2__790_carry__1_i_11_n_7,state_reg2__790_carry__0_i_11_n_4}),
        .O({state_reg2__790_carry__1_i_6_n_4,state_reg2__790_carry__1_i_6_n_5,state_reg2__790_carry__1_i_6_n_6,state_reg2__790_carry__1_i_6_n_7}),
        .S({state_reg2__790_carry__1_i_12_n_0,state_reg2__790_carry__1_i_13_n_0,state_reg2__790_carry__1_i_14_n_0,state_reg2__790_carry__1_i_15_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_7
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[10] ),
        .I2(state_reg2__790_carry__1_i_6_n_5),
        .O(state_reg2__790_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_8
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[9] ),
        .I2(state_reg2__790_carry__1_i_6_n_6),
        .O(state_reg2__790_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__1_i_9
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[9] ),
        .I2(state_reg2__790_carry__1_i_6_n_7),
        .O(state_reg2__790_carry__1_i_9_n_0));
  CARRY4 state_reg2__790_carry__2
       (.CI(state_reg2__790_carry__1_n_0),
        .CO({NLW_state_reg2__790_carry__2_CO_UNCONNECTED[3],state_reg2__790_carry__2_n_1,state_reg2__790_carry__2_n_2,state_reg2__790_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,state_reg2__790_carry_i_1_n_0,state_reg2__790_carry_i_1_n_6,state_reg2__790_carry_i_1_n_0}),
        .O(NLW_state_reg2__790_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,state_reg2__790_carry__2_i_1_n_0,state_reg2__790_carry__2_i_2_n_0,state_reg2__790_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__790_carry__2_i_1
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(state_reg2__790_carry_i_1_n_5),
        .O(state_reg2__790_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry__2_i_2
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[10] ),
        .I2(state_reg2__790_carry_i_1_n_6),
        .O(state_reg2__790_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__790_carry__2_i_3
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(state_reg2__790_carry_i_1_n_7),
        .O(state_reg2__790_carry__2_i_3_n_0));
  CARRY4 state_reg2__790_carry_i_1
       (.CI(state_reg2__790_carry__1_i_1_n_0),
        .CO({state_reg2__790_carry_i_1_n_0,state_reg2__790_carry_i_1_n_1,state_reg2__790_carry_i_1_n_2,state_reg2__790_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2__790_carry_i_7_n_0,state_reg2__790_carry_i_7_n_6,state_reg2__790_carry_i_7_n_0,state_reg2__790_carry_i_7_n_0}),
        .O({NLW_state_reg2__790_carry_i_1_O_UNCONNECTED[3],state_reg2__790_carry_i_1_n_5,state_reg2__790_carry_i_1_n_6,state_reg2__790_carry_i_1_n_7}),
        .S({state_reg2__790_carry_i_8_n_0,state_reg2__790_carry_i_9_n_0,state_reg2__790_carry_i_10_n_0,state_reg2__790_carry_i_11_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__790_carry_i_10
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(state_reg2__790_carry_i_7_n_7),
        .O(state_reg2__790_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__790_carry_i_11
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(state_reg2__790_carry__1_i_6_n_4),
        .O(state_reg2__790_carry_i_11_n_0));
  CARRY4 state_reg2__790_carry_i_12
       (.CI(1'b0),
        .CO({state_reg2__790_carry_i_12_n_0,state_reg2__790_carry_i_12_n_1,state_reg2__790_carry_i_12_n_2,state_reg2__790_carry_i_12_n_3}),
        .CYINIT(\out_reg[3]_P_i_3_n_0 ),
        .DI({state_reg2__790_carry_i_20_n_5,state_reg2__790_carry_i_20_n_6,\aux_reg[2]_P_n_0 ,1'b0}),
        .O({state_reg2__790_carry_i_12_n_4,state_reg2__790_carry_i_12_n_5,state_reg2__790_carry_i_12_n_6,NLW_state_reg2__790_carry_i_12_O_UNCONNECTED[0]}),
        .S({state_reg2__790_carry_i_21_n_0,state_reg2__790_carry_i_22_n_0,state_reg2__790_carry_i_23_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_13
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[2] ),
        .I2(state_reg2__790_carry_i_12_n_5),
        .O(state_reg2__790_carry_i_13_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_14
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__790_carry_i_12_n_6),
        .O(state_reg2__790_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_15
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[1]_P_n_0 ),
        .O(state_reg2__790_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__790_carry_i_16
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\out_reg[3]_P_i_3_n_5 ),
        .O(state_reg2__790_carry_i_16_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_17
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[10] ),
        .I2(\out_reg[3]_P_i_3_n_6 ),
        .O(state_reg2__790_carry_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__790_carry_i_18
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\out_reg[3]_P_i_3_n_7 ),
        .O(state_reg2__790_carry_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__790_carry_i_19
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(state_reg2__790_carry__1_i_11_n_4),
        .O(state_reg2__790_carry_i_19_n_0));
  CARRY4 state_reg2__790_carry_i_2
       (.CI(1'b0),
        .CO({state_reg2__790_carry_i_2_n_0,state_reg2__790_carry_i_2_n_1,state_reg2__790_carry_i_2_n_2,state_reg2__790_carry_i_2_n_3}),
        .CYINIT(state_reg2__790_carry_i_7_n_0),
        .DI({state_reg2__790_carry_i_12_n_5,state_reg2__790_carry_i_12_n_6,\aux_reg[1]_P_n_0 ,1'b0}),
        .O({state_reg2__790_carry_i_2_n_4,state_reg2__790_carry_i_2_n_5,state_reg2__790_carry_i_2_n_6,NLW_state_reg2__790_carry_i_2_O_UNCONNECTED[0]}),
        .S({state_reg2__790_carry_i_13_n_0,state_reg2__790_carry_i_14_n_0,state_reg2__790_carry_i_15_n_0,1'b1}));
  CARRY4 state_reg2__790_carry_i_20
       (.CI(1'b0),
        .CO({state_reg2__790_carry_i_20_n_0,state_reg2__790_carry_i_20_n_1,state_reg2__790_carry_i_20_n_2,state_reg2__790_carry_i_20_n_3}),
        .CYINIT(\out_reg[7]_P_i_6_n_0 ),
        .DI({state_reg2__790_carry_i_24_n_5,state_reg2__790_carry_i_24_n_6,\aux_reg[3]_P_n_0 ,1'b0}),
        .O({state_reg2__790_carry_i_20_n_4,state_reg2__790_carry_i_20_n_5,state_reg2__790_carry_i_20_n_6,NLW_state_reg2__790_carry_i_20_O_UNCONNECTED[0]}),
        .S({state_reg2__790_carry_i_25_n_0,state_reg2__790_carry_i_26_n_0,state_reg2__790_carry_i_27_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_21
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(state_reg2__790_carry_i_20_n_5),
        .O(state_reg2__790_carry_i_21_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_22
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__790_carry_i_20_n_6),
        .O(state_reg2__790_carry_i_22_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_23
       (.I0(\out_reg[3]_P_i_3_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[2]_P_n_0 ),
        .O(state_reg2__790_carry_i_23_n_0));
  CARRY4 state_reg2__790_carry_i_24
       (.CI(1'b0),
        .CO({state_reg2__790_carry_i_24_n_0,state_reg2__790_carry_i_24_n_1,state_reg2__790_carry_i_24_n_2,state_reg2__790_carry_i_24_n_3}),
        .CYINIT(\out_reg[7]_P_i_7_n_0 ),
        .DI({state_reg2__790_carry_i_28_n_5,state_reg2__790_carry_i_28_n_6,\aux_reg[4]_P_n_0 ,1'b0}),
        .O({state_reg2__790_carry_i_24_n_4,state_reg2__790_carry_i_24_n_5,state_reg2__790_carry_i_24_n_6,NLW_state_reg2__790_carry_i_24_O_UNCONNECTED[0]}),
        .S({state_reg2__790_carry_i_29_n_0,state_reg2__790_carry_i_30_n_0,state_reg2__790_carry_i_31_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_25
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(state_reg2__790_carry_i_24_n_5),
        .O(state_reg2__790_carry_i_25_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_26
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__790_carry_i_24_n_6),
        .O(state_reg2__790_carry_i_26_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_27
       (.I0(\out_reg[7]_P_i_6_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[3]_P_n_0 ),
        .O(state_reg2__790_carry_i_27_n_0));
  CARRY4 state_reg2__790_carry_i_28
       (.CI(1'b0),
        .CO({state_reg2__790_carry_i_28_n_0,state_reg2__790_carry_i_28_n_1,state_reg2__790_carry_i_28_n_2,state_reg2__790_carry_i_28_n_3}),
        .CYINIT(\out_reg[7]_P_i_8_n_0 ),
        .DI({\out_reg[7]_P_i_58_n_5 ,\out_reg[7]_P_i_58_n_6 ,\aux_reg[5]_P_n_0 ,1'b0}),
        .O({state_reg2__790_carry_i_28_n_4,state_reg2__790_carry_i_28_n_5,state_reg2__790_carry_i_28_n_6,NLW_state_reg2__790_carry_i_28_O_UNCONNECTED[0]}),
        .S({state_reg2__790_carry_i_32_n_0,state_reg2__790_carry_i_33_n_0,state_reg2__790_carry_i_34_n_0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_29
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(state_reg2__790_carry_i_28_n_5),
        .O(state_reg2__790_carry_i_29_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_3
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[3] ),
        .I2(state_reg2__790_carry_i_2_n_4),
        .O(state_reg2__790_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_30
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__790_carry_i_28_n_6),
        .O(state_reg2__790_carry_i_30_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_31
       (.I0(\out_reg[7]_P_i_7_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[4]_P_n_0 ),
        .O(state_reg2__790_carry_i_31_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_32
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[2] ),
        .I2(\out_reg[7]_P_i_58_n_5 ),
        .O(state_reg2__790_carry_i_32_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_33
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[1] ),
        .I2(\out_reg[7]_P_i_58_n_6 ),
        .O(state_reg2__790_carry_i_33_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_34
       (.I0(\out_reg[7]_P_i_8_n_0 ),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[5]_P_n_0 ),
        .O(state_reg2__790_carry_i_34_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_4
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[2] ),
        .I2(state_reg2__790_carry_i_2_n_5),
        .O(state_reg2__790_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_5
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[1] ),
        .I2(state_reg2__790_carry_i_2_n_6),
        .O(state_reg2__790_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_6
       (.I0(state_reg2__790_carry_i_1_n_0),
        .I1(\div_reg_n_0_[0] ),
        .I2(\aux_reg[0]_P_n_0 ),
        .O(state_reg2__790_carry_i_6_n_0));
  CARRY4 state_reg2__790_carry_i_7
       (.CI(state_reg2__790_carry__1_i_6_n_0),
        .CO({state_reg2__790_carry_i_7_n_0,state_reg2__790_carry_i_7_n_1,state_reg2__790_carry_i_7_n_2,state_reg2__790_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({\out_reg[3]_P_i_3_n_0 ,\out_reg[3]_P_i_3_n_6 ,\out_reg[3]_P_i_3_n_0 ,\out_reg[3]_P_i_3_n_0 }),
        .O({NLW_state_reg2__790_carry_i_7_O_UNCONNECTED[3],state_reg2__790_carry_i_7_n_5,state_reg2__790_carry_i_7_n_6,state_reg2__790_carry_i_7_n_7}),
        .S({state_reg2__790_carry_i_16_n_0,state_reg2__790_carry_i_17_n_0,state_reg2__790_carry_i_18_n_0,state_reg2__790_carry_i_19_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    state_reg2__790_carry_i_8
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(state_reg2__790_carry_i_7_n_5),
        .O(state_reg2__790_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    state_reg2__790_carry_i_9
       (.I0(state_reg2__790_carry_i_7_n_0),
        .I1(\div_reg_n_0_[10] ),
        .I2(state_reg2__790_carry_i_7_n_6),
        .O(state_reg2__790_carry_i_9_n_0));
  CARRY4 state_reg2_carry
       (.CI(1'b0),
        .CO({state_reg2_carry_n_0,state_reg2_carry_n_1,state_reg2_carry_n_2,state_reg2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({state_reg2_carry_i_1_n_0,state_reg2_carry_i_2_n_0,state_reg2_carry_i_3_n_0,\aux_reg[15]_P_n_0 }),
        .O({state_reg2_carry_n_4,state_reg2_carry_n_5,state_reg2_carry_n_6,state_reg2_carry_n_7}),
        .S({state_reg2_carry_i_4_n_0,state_reg2_carry_i_5_n_0,state_reg2_carry_i_6_n_0,state_reg2_carry_i_7_n_0}));
  CARRY4 state_reg2_carry__0
       (.CI(state_reg2_carry_n_0),
        .CO({state_reg2_carry__0_n_0,state_reg2_carry__0_n_1,state_reg2_carry__0_n_2,state_reg2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg2_carry__0_i_1_n_0,state_reg2_carry__0_i_2_n_0,state_reg2_carry__0_i_3_n_0,state_reg2_carry__0_i_4_n_0}),
        .O({state_reg2_carry__0_n_4,state_reg2_carry__0_n_5,state_reg2_carry__0_n_6,state_reg2_carry__0_n_7}),
        .S({state_reg2_carry__0_i_5_n_0,state_reg2_carry__0_i_6_n_0,state_reg2_carry__0_i_7_n_0,state_reg2_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__0_i_1
       (.I0(\div_reg_n_0_[7] ),
        .O(state_reg2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__0_i_2
       (.I0(\div_reg_n_0_[6] ),
        .O(state_reg2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__0_i_3
       (.I0(\div_reg_n_0_[5] ),
        .O(state_reg2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__0_i_4
       (.I0(\div_reg_n_0_[4] ),
        .O(state_reg2_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__0_i_5
       (.I0(\div_reg_n_0_[7] ),
        .O(state_reg2_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__0_i_6
       (.I0(\div_reg_n_0_[6] ),
        .O(state_reg2_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__0_i_7
       (.I0(\div_reg_n_0_[5] ),
        .O(state_reg2_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__0_i_8
       (.I0(\div_reg_n_0_[4] ),
        .O(state_reg2_carry__0_i_8_n_0));
  CARRY4 state_reg2_carry__1
       (.CI(state_reg2_carry__0_n_0),
        .CO({state_reg2_carry__1_n_0,NLW_state_reg2_carry__1_CO_UNCONNECTED[2],state_reg2_carry__1_n_2,state_reg2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,state_reg2_carry__1_i_1_n_0,state_reg2_carry__1_i_2_n_0,state_reg2_carry__1_i_3_n_0}),
        .O({NLW_state_reg2_carry__1_O_UNCONNECTED[3],state_reg2_carry__1_n_5,state_reg2_carry__1_n_6,state_reg2_carry__1_n_7}),
        .S({1'b1,state_reg2_carry__1_i_4_n_0,state_reg2_carry__1_i_5_n_0,state_reg2_carry__1_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__1_i_1
       (.I0(\div_reg_n_0_[10] ),
        .O(state_reg2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__1_i_2
       (.I0(\div_reg_n_0_[9] ),
        .O(state_reg2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__1_i_3
       (.I0(\div_reg_n_0_[9] ),
        .O(state_reg2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__1_i_4
       (.I0(\div_reg_n_0_[10] ),
        .O(state_reg2_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__1_i_5
       (.I0(\div_reg_n_0_[9] ),
        .O(state_reg2_carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry__1_i_6
       (.I0(\div_reg_n_0_[9] ),
        .O(state_reg2_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry_i_1
       (.I0(\div_reg_n_0_[3] ),
        .O(state_reg2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry_i_2
       (.I0(\div_reg_n_0_[2] ),
        .O(state_reg2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry_i_3
       (.I0(\div_reg_n_0_[1] ),
        .O(state_reg2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry_i_4
       (.I0(\div_reg_n_0_[3] ),
        .O(state_reg2_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry_i_5
       (.I0(\div_reg_n_0_[2] ),
        .O(state_reg2_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_reg2_carry_i_6
       (.I0(\div_reg_n_0_[1] ),
        .O(state_reg2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    state_reg2_carry_i_7
       (.I0(\div_reg_n_0_[0] ),
        .I1(\aux_reg[15]_P_n_0 ),
        .O(state_reg2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFF2020222F20202)) 
    \state_reg[0]_i_1 
       (.I0(\state_reg[0]_i_2_n_0 ),
        .I1(\state_reg[0]_i_3_n_0 ),
        .I2(button_OBUF),
        .I3(\state_reg_reg[2]_1 ),
        .I4(\state_reg_reg[2]_0 ),
        .I5(\state_reg_reg_n_0_[1] ),
        .O(\state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDDFDFDDDDDDDD)) 
    \state_reg[0]_i_2 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(\state_reg[0]_i_4_n_0 ),
        .I2(\out[1]_P_i_3_n_0 ),
        .I3(acc_sended_reg_P_n_0),
        .I4(\div[10]_i_6_n_0 ),
        .I5(tick_reg),
        .O(\state_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h75352020)) 
    \state_reg[0]_i_3 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(\state_reg_reg_n_0_[1] ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\out[7]_P_i_3_n_0 ),
        .I4(\state_reg[0]_i_5_n_0 ),
        .O(\state_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF5D7000000000000)) 
    \state_reg[0]_i_4 
       (.I0(\out[0]_P_i_3_n_0 ),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[0]),
        .I4(\state_reg_reg_n_0_[1] ),
        .I5(tick_reg_0),
        .O(\state_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEAAFEFEFEFEFE)) 
    \state_reg[0]_i_5 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(is_s_reg_0),
        .I2(\b_reg_reg[3]_1 ),
        .I3(\s_reg_reg[2] ),
        .I4(\state_reg_reg[2]_0 ),
        .I5(out),
        .O(\state_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEEE0E0E0E)) 
    \state_reg[1]_i_1 
       (.I0(\state_reg[1]_i_2_n_0 ),
        .I1(\state_reg[1]_i_3_n_0 ),
        .I2(button_OBUF),
        .I3(\state_reg_reg[2]_1 ),
        .I4(\state_reg_reg[2]_0 ),
        .I5(\state_reg_reg_n_0_[1] ),
        .O(\state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555100055551500)) 
    \state_reg[1]_i_2 
       (.I0(\state_reg_reg[2]_1 ),
        .I1(\out[7]_P_i_3_n_0 ),
        .I2(\state_reg_reg[2]_0 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\state_reg[1]_i_4_n_0 ),
        .I5(finish_program),
        .O(\state_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3F003F2000000000)) 
    \state_reg[1]_i_3 
       (.I0(\state_reg[1]_i_5_n_0 ),
        .I1(\state_reg[1]_i_6_n_0 ),
        .I2(tick_reg_0),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\state_reg_reg[2]_0 ),
        .I5(\state_reg_reg[2]_1 ),
        .O(\state_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \state_reg[1]_i_4 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(is_s_reg_0),
        .I2(\b_reg_reg[3]_1 ),
        .O(\state_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2202222222220222)) 
    \state_reg[1]_i_5 
       (.I0(\div[10]_i_5_n_0 ),
        .I1(\div[10]_i_6_n_0 ),
        .I2(\div[10]_i_9_n_0 ),
        .I3(\b_reg_reg[1] ),
        .I4(\b_reg_reg[0] ),
        .I5(\b_reg_reg[2] ),
        .O(\state_reg[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hA082AAAA)) 
    \state_reg[1]_i_6 
       (.I0(\state_reg_reg_n_0_[1] ),
        .I1(i_reg[0]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .I4(\out[0]_P_i_3_n_0 ),
        .O(\state_reg[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF2E2A2E2)) 
    \state_reg[2]_i_1 
       (.I0(\state_reg[2]_i_2_n_0 ),
        .I1(button_OBUF),
        .I2(\state_reg_reg[2]_1 ),
        .I3(\state_reg_reg[2]_0 ),
        .I4(\state_reg_reg_n_0_[1] ),
        .O(\state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F4F4F4F)) 
    \state_reg[2]_i_2 
       (.I0(\state_reg[2]_i_3_n_0 ),
        .I1(\div[10]_i_3_n_0 ),
        .I2(\aux[10]_P_i_2_n_0 ),
        .I3(\div[10]_i_6_n_0 ),
        .I4(\out[1]_P_i_3_n_0 ),
        .I5(tick_reg),
        .O(\state_reg[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state_reg[2]_i_3 
       (.I0(\state_reg_reg[2]_0 ),
        .I1(\out[7]_P_i_3_n_0 ),
        .O(\state_reg[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\state_reg[0]_i_1_n_0 ),
        .Q(\state_reg_reg[2]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_reg[1]_i_1_n_0 ),
        .PRE(button_OBUF),
        .Q(\state_reg_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_reg[2]_i_1_n_0 ),
        .PRE(button_OBUF),
        .Q(\state_reg_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFF70004)) 
    tx_start_aux_i_1
       (.I0(tick_reg_0),
        .I1(\state_reg_reg[2]_1 ),
        .I2(button_OBUF),
        .I3(\state_reg_reg[2]_0 ),
        .I4(tx_start),
        .O(tx_start_aux_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_aux_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_start_aux_i_1_n_0),
        .Q(tx_start),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h222F2220)) 
    z_flag_P_i_1
       (.I0(\out[7]_P_i_3_n_0 ),
        .I1(\state_reg_reg[2]_1 ),
        .I2(acc_sended_P_i_2_n_0),
        .I3(z_flag_P_i_2_n_0),
        .I4(z_flag_reg_P_n_0),
        .O(z_flag_P_i_1_n_0));
  LUT5 #(
    .INIT(32'h02A000A0)) 
    z_flag_P_i_2
       (.I0(\state_reg_reg[2]_0 ),
        .I1(button_OBUF),
        .I2(\state_reg_reg[2]_1 ),
        .I3(\state_reg_reg_n_0_[1] ),
        .I4(\out[7]_P_i_3_n_0 ),
        .O(z_flag_P_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    z_flag_reg_P
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(z_flag_P_i_1_n_0),
        .Q(z_flag_reg_P_n_0),
        .R(1'b0));
endmodule

module rx_module
   (out,
    is_s_reg,
    \FSM_sequential_state_reg_reg[0]_0 ,
    is_s_reg_0,
    aux_BIP_reg,
    \state_reg_reg[2] ,
    s_tick,
    rx_IBUF,
    is_s9_out,
    is_s_reg_1,
    \state_reg_reg[0] ,
    clk_IBUF_BUFG,
    button_OBUF);
  output [0:0]out;
  output is_s_reg;
  output \FSM_sequential_state_reg_reg[0]_0 ;
  output is_s_reg_0;
  output aux_BIP_reg;
  input \state_reg_reg[2] ;
  input s_tick;
  input rx_IBUF;
  input is_s9_out;
  input is_s_reg_1;
  input \state_reg_reg[0] ;
  input clk_IBUF_BUFG;
  input button_OBUF;

  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_5_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire aux_BIP_i_4_n_0;
  wire aux_BIP_reg;
  wire b_next;
  wire button_OBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]dout;
  wire is_s9_out;
  wire is_s_i_2_n_0;
  wire is_s_reg;
  wire is_s_reg_0;
  wire is_s_reg_1;
  wire n_next;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire rx_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire \s_reg[3]_i_3__0_n_0 ;
  wire \s_reg[3]_i_4_n_0 ;
  wire s_tick;
  wire [2:0]sel0;
  (* RTL_KEEP = "yes" *) wire [1:1]state_reg;
  wire \state_reg_reg[0] ;
  wire \state_reg_reg[2] ;

  LUT5 #(
    .INIT(32'h23FF2300)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(s_tick),
        .I1(out),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I4(out),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h38FF3800)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(s_tick),
        .I1(state_reg),
        .I2(out),
        .I3(\FSM_sequential_state_reg[1]_i_2__0_n_0 ),
        .I4(state_reg),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4444444F)) 
    \FSM_sequential_state_reg[1]_i_2__0 
       (.I0(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(out),
        .I3(state_reg),
        .I4(rx_IBUF),
        .I5(\FSM_sequential_state_reg[1]_i_5_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h1555)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(out),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .I4(state_reg),
        .I5(s_tick),
        .O(\FSM_sequential_state_reg_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_sequential_state_reg[1]_i_5 
       (.I0(s_tick),
        .I1(out),
        .I2(state_reg),
        .I3(\s_reg[3]_i_4_n_0 ),
        .I4(s_reg[3]),
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
        .Q(out));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    aux_BIP_i_3
       (.I0(aux_BIP_i_4_n_0),
        .I1(dout[3]),
        .I2(dout[1]),
        .I3(dout[6]),
        .I4(dout[5]),
        .I5(\state_reg_reg[0] ),
        .O(aux_BIP_reg));
  LUT4 #(
    .INIT(16'hFFDF)) 
    aux_BIP_i_4
       (.I0(dout[0]),
        .I1(dout[7]),
        .I2(dout[2]),
        .I3(dout[4]),
        .O(aux_BIP_i_4_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \b_reg[7]_i_1__0 
       (.I0(\s_reg[3]_i_3__0_n_0 ),
        .I1(s_tick),
        .I2(state_reg),
        .I3(out),
        .O(b_next));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(button_OBUF),
        .D(dout[1]),
        .Q(dout[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(button_OBUF),
        .D(dout[2]),
        .Q(dout[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(button_OBUF),
        .D(dout[3]),
        .Q(dout[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(button_OBUF),
        .D(dout[4]),
        .Q(dout[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(button_OBUF),
        .D(dout[5]),
        .Q(dout[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(button_OBUF),
        .D(dout[6]),
        .Q(dout[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(button_OBUF),
        .D(dout[7]),
        .Q(dout[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next),
        .CLR(button_OBUF),
        .D(rx_IBUF),
        .Q(dout[7]));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    is_s_i_1
       (.I0(dout[3]),
        .I1(dout[1]),
        .I2(dout[4]),
        .I3(is_s_i_2_n_0),
        .I4(is_s9_out),
        .I5(is_s_reg_1),
        .O(is_s_reg_0));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    is_s_i_2
       (.I0(dout[0]),
        .I1(dout[7]),
        .I2(dout[2]),
        .I3(\state_reg_reg[2] ),
        .I4(dout[5]),
        .I5(dout[6]),
        .O(is_s_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    is_s_i_4
       (.I0(dout[5]),
        .I1(dout[6]),
        .I2(dout[1]),
        .I3(dout[3]),
        .I4(aux_BIP_i_4_n_0),
        .O(is_s_reg));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(state_reg),
        .I1(n_next),
        .I2(sel0[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F80)) 
    \n_reg[1]_i_1 
       (.I0(state_reg),
        .I1(sel0[0]),
        .I2(n_next),
        .I3(sel0[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \n_reg[2]_i_1 
       (.I0(state_reg),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(n_next),
        .I4(sel0[2]),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C00000A00000000)) 
    \n_reg[2]_i_2__0 
       (.I0(out),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I2(\s_reg[3]_i_4_n_0 ),
        .I3(s_reg[3]),
        .I4(state_reg),
        .I5(s_tick),
        .O(n_next));
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
  LUT4 #(
    .INIT(16'h02FE)) 
    \s_reg[0]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg),
        .I2(out),
        .I3(s_reg[0]),
        .O(\s_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02FEFE02)) 
    \s_reg[1]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg),
        .I2(out),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .O(\s_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFE02FE02FE02)) 
    \s_reg[2]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg),
        .I2(out),
        .I3(s_reg[2]),
        .I4(s_reg[0]),
        .I5(s_reg[1]),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44CCCC0F)) 
    \s_reg[3]_i_1__0 
       (.I0(\s_reg[3]_i_3__0_n_0 ),
        .I1(s_tick),
        .I2(rx_IBUF),
        .I3(state_reg),
        .I4(out),
        .O(s_next));
  LUT5 #(
    .INIT(32'hFE0202F2)) 
    \s_reg[3]_i_2 
       (.I0(rx_IBUF),
        .I1(out),
        .I2(state_reg),
        .I3(\s_reg[3]_i_4_n_0 ),
        .I4(s_reg[3]),
        .O(\s_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_reg[3]_i_3__0 
       (.I0(s_reg[3]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(s_reg[2]),
        .O(\s_reg[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \s_reg[3]_i_4 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
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
        .D(\s_reg[2]_i_1_n_0 ),
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
   (out,
    tx_OBUF,
    acc_sended_reg_P,
    \state_reg_reg[2] ,
    clk_IBUF_BUFG,
    button_OBUF,
    s_tick,
    tx_start,
    D,
    \out_reg[6]_P ,
    \out_reg[5]_P ,
    \out_reg[4]_P ,
    \out_reg[3]_P ,
    \out_reg[2]_P ,
    \out_reg[1]_P ,
    \out_reg[0]_P ,
    \out_reg[0]_P_0 );
  output [0:0]out;
  output tx_OBUF;
  output acc_sended_reg_P;
  output \state_reg_reg[2] ;
  input clk_IBUF_BUFG;
  input button_OBUF;
  input s_tick;
  input tx_start;
  input [0:0]D;
  input \out_reg[6]_P ;
  input \out_reg[5]_P ;
  input \out_reg[4]_P ;
  input \out_reg[3]_P ;
  input \out_reg[2]_P ;
  input \out_reg[1]_P ;
  input \out_reg[0]_P ;
  input \out_reg[0]_P_0 ;

  wire [0:0]D;
  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3__0_n_0 ;
  wire acc_sended_reg_P;
  wire [6:0]b_next;
  wire b_next_0;
  wire [0:0]b_reg;
  wire \b_reg[7]_i_3_n_0 ;
  wire \b_reg_reg_n_0_[1] ;
  wire \b_reg_reg_n_0_[2] ;
  wire \b_reg_reg_n_0_[3] ;
  wire \b_reg_reg_n_0_[4] ;
  wire \b_reg_reg_n_0_[5] ;
  wire \b_reg_reg_n_0_[6] ;
  wire \b_reg_reg_n_0_[7] ;
  wire button_OBUF;
  wire clk_IBUF_BUFG;
  wire n_next;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire \out_reg[0]_P ;
  wire \out_reg[0]_P_0 ;
  wire \out_reg[1]_P ;
  wire \out_reg[2]_P ;
  wire \out_reg[3]_P ;
  wire \out_reg[4]_P ;
  wire \out_reg[5]_P ;
  wire \out_reg[6]_P ;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1__0_n_0 ;
  wire \s_reg[1]_i_1__0_n_0 ;
  wire \s_reg[2]_i_1__0_n_0 ;
  wire \s_reg[3]_i_2__0_n_0 ;
  wire \s_reg[3]_i_3_n_0 ;
  wire s_tick;
  wire [2:0]sel0__0;
  (* RTL_KEEP = "yes" *) wire [0:0]state_reg;
  wire \state_reg_reg[2] ;
  wire tx_OBUF;
  wire tx_next;
  wire tx_start;

  LUT5 #(
    .INIT(32'h23FF2300)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(s_tick),
        .I1(state_reg),
        .I2(out),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I4(state_reg),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h58FF5800)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(out),
        .I1(s_tick),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I4(out),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCD058D05C8008800)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(state_reg),
        .I1(s_tick),
        .I2(out),
        .I3(\b_reg[7]_i_3_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .I5(tx_start),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[1]_i_3__0 
       (.I0(sel0__0[0]),
        .I1(sel0__0[1]),
        .I2(sel0__0[2]),
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
        .Q(state_reg));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(button_OBUF),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(out));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(out),
        .I2(\out_reg[0]_P ),
        .O(b_next[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(out),
        .I2(\out_reg[1]_P ),
        .O(b_next[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(out),
        .I2(\out_reg[2]_P ),
        .O(b_next[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(\b_reg_reg_n_0_[4] ),
        .I1(out),
        .I2(\out_reg[3]_P ),
        .O(b_next[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(\b_reg_reg_n_0_[5] ),
        .I1(out),
        .I2(\out_reg[4]_P ),
        .O(b_next[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(\b_reg_reg_n_0_[6] ),
        .I1(out),
        .I2(\out_reg[5]_P ),
        .O(b_next[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(\b_reg_reg_n_0_[7] ),
        .I1(out),
        .I2(\out_reg[6]_P ),
        .O(b_next[6]));
  LUT5 #(
    .INIT(32'h008F0080)) 
    \b_reg[7]_i_1 
       (.I0(s_tick),
        .I1(\b_reg[7]_i_3_n_0 ),
        .I2(out),
        .I3(state_reg),
        .I4(tx_start),
        .O(b_next_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \b_reg[7]_i_3 
       (.I0(s_reg[2]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(s_reg[3]),
        .O(\b_reg[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(button_OBUF),
        .D(b_next[0]),
        .Q(b_reg));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(button_OBUF),
        .D(b_next[1]),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(button_OBUF),
        .D(b_next[2]),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(button_OBUF),
        .D(b_next[3]),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(button_OBUF),
        .D(b_next[4]),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(button_OBUF),
        .D(b_next[5]),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(button_OBUF),
        .D(b_next[6]),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(b_next_0),
        .CLR(button_OBUF),
        .D(D),
        .Q(\b_reg_reg_n_0_[7] ));
  LUT3 #(
    .INIT(8'h40)) 
    \i[6]_i_3 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(s_tick),
        .I2(out),
        .O(acc_sended_reg_P));
  LUT3 #(
    .INIT(8'h38)) 
    \n_reg[0]_i_1 
       (.I0(out),
        .I1(n_next),
        .I2(sel0__0[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \n_reg[1]_i_1 
       (.I0(sel0__0[0]),
        .I1(out),
        .I2(n_next),
        .I3(sel0__0[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \n_reg[2]_i_1 
       (.I0(out),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .I3(n_next),
        .I4(sel0__0[2]),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20002800)) 
    \n_reg[2]_i_2 
       (.I0(\b_reg[7]_i_3_n_0 ),
        .I1(out),
        .I2(state_reg),
        .I3(s_tick),
        .I4(\FSM_sequential_state_reg[1]_i_3__0_n_0 ),
        .O(n_next));
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
    .INIT(8'h54)) 
    \s_reg[0]_i_1__0 
       (.I0(s_reg[0]),
        .I1(state_reg),
        .I2(out),
        .O(\s_reg[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6660)) 
    \s_reg[1]_i_1__0 
       (.I0(s_reg[0]),
        .I1(s_reg[1]),
        .I2(state_reg),
        .I3(out),
        .O(\s_reg[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0EEEE000)) 
    \s_reg[2]_i_1__0 
       (.I0(state_reg),
        .I1(out),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .I4(s_reg[2]),
        .O(\s_reg[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hBB03B800)) 
    \s_reg[3]_i_1 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(out),
        .I2(state_reg),
        .I3(s_tick),
        .I4(tx_start),
        .O(s_next));
  LUT6 #(
    .INIT(64'h0EEEEEEEE0000000)) 
    \s_reg[3]_i_2__0 
       (.I0(state_reg),
        .I1(out),
        .I2(s_reg[0]),
        .I3(s_reg[1]),
        .I4(s_reg[2]),
        .I5(s_reg[3]),
        .O(\s_reg[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s_reg[3]_i_3 
       (.I0(state_reg),
        .I1(s_reg[3]),
        .I2(s_reg[0]),
        .I3(s_reg[1]),
        .I4(s_reg[2]),
        .O(\s_reg[3]_i_3_n_0 ));
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
        .D(\s_reg[2]_i_1__0_n_0 ),
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
    .INIT(4'h2)) 
    \state_reg[2]_i_4 
       (.I0(acc_sended_reg_P),
        .I1(\out_reg[0]_P_0 ),
        .O(\state_reg_reg[2] ));
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
