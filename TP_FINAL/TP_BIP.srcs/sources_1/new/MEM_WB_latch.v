`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2021 08:52:56 PM
// Design Name: 
// Module Name: MEM_WB_latch
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


module MEM_WB_latch(
    // Stage Memory/WriteBack latch
    input clk,
    input rst,
    input [1:0] inWB,
    input [4:0] inFRWrReg,
    input [31:0] inMem,
    input [31:0] inALUResult,
    input [31:0] inPCJump,
    output [1:0] outWB,
    output [4:0] outFRWrReg,
    output [31:0] outMem,
    output [31:0] outALUResult,
    output [31:0] outPCJump
    );

    reg [1:0] WB;
    reg [4:0] FRWrReg;
    reg [31:0] Mem;
    reg [31:0] ALUResult;
    reg [31:0] PCJump;

    always @(posedge rst, posedge clk)
    begin
        if(rst)
        begin
            WB <= 2'b0;
            FRWrReg <= 5'b0;
            Mem <= 32'b0;
            ALUResult <= 32'b0;
            PCJump <= 32'b0;
        end
        else
        begin
            WB <= inWB;
            FRWrReg <= inFRWrReg;
            Mem <= inMem;
            ALUResult <= inALUResult;
            PCJump <= inPCJump;
        end
    end
    
    assign outWB = WB;
    assign outFRWrReg = FRWrReg;
    assign outMem = Mem;
    assign outALUResult = ALUResult;
    assign outPCJump = PCJump;

endmodule
