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
    input start,
    input in_isWrite_IF_ID,
    input [10:0] inPc,
    input [31:0] inInstruction,
    //OUTPUT
    output outFinish,
    output [10:0] outPc,
    output [31:0] outInstruction
    );

reg finish;   
reg [31:0] instruction;
reg [10:0] pc;

always @(posedge clk)
begin
    if(rst)
    begin
        finish <= 1'b0;
        instruction <= 32'b0;
        pc <= 11'b0;
    end
    else if (in_isWrite_IF_ID && start)
    begin
        finish <= inFinish;
        instruction <= inInstruction;
        pc <= inPc;
    end
    else
    begin
        finish <= finish;
        instruction <= instruction;
        pc <= pc;
    end
end

assign outFinish = finish;
assign outInstruction = instruction;
assign outPc = pc;
    
endmodule
