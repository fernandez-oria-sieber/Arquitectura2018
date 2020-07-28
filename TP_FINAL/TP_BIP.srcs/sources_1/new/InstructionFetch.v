`timescale 1ns / 1ps

module InstructionFetch(
    input clk, reset,
    output [31:0] pc, instruccion
    );

wire BIP_enable, finish_program, WrRAM, RdRAM, clk, locked;
wire[10:0] PC, Addr;
wire[15:0] Program_Data, In_Data, Out_Data;
wire[31:0] out_memory;
 
ALU #(.size(32)) alu (.Op(Operation), .A(1), .B(pc), .Leds(pc));
Data_memory #(.INIT_FILE("/home/vlad/Arquitectura2018/datos.txt")) Data_memory(.Wr(0),.Rd(1),.clk(clk),
    .ena(1), .Addr(PC), .In_Data(In_Data), .Out_Data(out_memory));

assign instruccion = out_memory;
assign pc = PC;

endmodule
