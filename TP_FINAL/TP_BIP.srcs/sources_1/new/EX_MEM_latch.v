`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2021 08:52:56 PM
// Design Name: 
// Module Name: EX_MEM_latch
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


module EX_MEM_latch(
    input           clk,
    input           rst,
    input           inALUZero,
    input           start,
    input           inFinish,
    input [1:0]     inWB,
    input [2:0]     inMEM,
    input [2:0]     inLoadStoreType,
    input [4:0]     inFRWrReg,
    input [31:0]    inPCJump,
    input [31:0]    inALUResult,
    input [31:0]    inRegB,
    output          outALUZero,
    output          outFinish,
    output [1:0]    outWB,
    output [2:0]    outMEM,
    output [2:0]    outLoadStoreType,
    output [4:0]    outFRWrReg,
    output [31:0]   outPCJump,
    output [31:0]   outALUResult,
    output [31:0]   outRegB
    );
    
    reg finish;
    reg  ALUZero;
    reg [1:0] WB;
    reg [2:0] MEM;
    reg [2:0] LoadStoreType;
    reg [4:0] FRWrReg;
    reg [31:0] PCJump;
    reg [31:0] ALUResult;
    reg [31:0] RegB;

    always @(posedge clk)
    begin
        if(rst)
        begin
            finish <= 1'b0;
            ALUZero <= 1'b0;
            WB <= 2'b0;
            MEM <= 3'b0;
            LoadStoreType <= 3'b0;
            FRWrReg <= 5'b0;
            ALUResult <= 32'b0;
            RegB <= 32'b0;
            PCJump <= 32'b0;
        end
        else if (start)
        begin
            finish <= inFinish;
            ALUZero <= inALUZero;
            WB <= inWB;
            MEM <= inMEM;
            LoadStoreType <= inLoadStoreType;
            FRWrReg <= inFRWrReg;
            ALUResult <= inALUResult;
            RegB <= inRegB;
            PCJump <= inPCJump;
        end
    end
    
    assign outFinish = finish;
    assign outALUZero = ALUZero;
    assign outWB = WB;
    assign outMEM = MEM;
    assign outLoadStoreType = LoadStoreType;
    assign outFRWrReg = FRWrReg;
    assign outALUResult = ALUResult;
    assign outRegB = RegB;
    assign outPCJump = PCJump;

endmodule
