`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2021 08:52:56 PM
// Design Name: 
// Module Name: IF_ID_latch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IF_ID_latch(
    input clk,
    input rst,
    //INPUTS
    input inFinish,
    input in_isWrite_IF_ID,
    input [31:0] inInstruction,
    input [31:0] inPc,
    //OUTPUT
    output outFinish,
    output [31:0] outInstruction,
    output [31:0] outPc
    );

reg finish;   
reg [31:0] instruction;
reg [31:0] pc;

always @(posedge clk, posedge rst)
begin
    if(rst)
    begin
        finish <= 1'b0;
        instruction <= 32'b0;
        pc <= 32'b0;
    end
    else if (in_isWrite_IF_ID)
    begin
        finish <= inFinish;
        instruction <= inInstruction;
        pc <= inPc;
    end
end

assign outFinish = finish;
assign outInstruction = instruction;
assign outPc = pc;
    
endmodule
