`timescale 1ns / 1ps

module InstructionFetch(
    input clk, reset,
    output [31:0] pc, instruccion
    );

wire BIP_enable, finish_program, WrRAM, RdRAM, clk, locked;
wire[31:0] pc, Addr;
wire[15:0] Program_Data, In_Data, Out_Data;
wire[31:0] out_memory;
 
ALU #(.size(32)) alu (.Op(6'b100000), .A(1), .B(pc), .Leds(pc));
Data_memory #(.INIT_FILE("~/Arquitectura2018/TP_FINAL/datos.txt")) Data_memory(.Wr(0),.Rd(1),.clk(clk),
    .ena(1), .Addr(pc), .In_Data(In_Data), .Out_Data(out_memory));

assign instruccion = out_memory;

endmodule
