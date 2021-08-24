`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2021 08:52:56 PM
// Design Name: 
// Module Name: ID_EX_latch
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


module ID_EX_latch(
    input clk,
    input rst,
    input start,
    input inFinish,
    input [1:0] inWB,
    input [2:0] inMEM,
    input [5:0] inEXE,
    input [2:0] inLoadStoreType,
    input [4:0] inLD_rt,
    input [4:0] inRT_rd,
    input [4:0] inFUnit_rs,
    input [10:0] inPC,
    input [31:0] inRegA,
    input [31:0] inRegB,
    input [31:0] inInstruction_ls,
    output outFinish,
    output [1:0] outWB,
    output [2:0] outMEM,
    output [5:0] outEXE,
    output [2:0] outLoadStoreType,
    output [4:0] outLD_rt,
    output [4:0] outRT_rd,
    output [4:0] outFUnit_rs,
    output [10:0] outPC,
    output [31:0] outRegA,
    output [31:0] outRegB,
    output [31:0] outInstruction_ls
    );
    
    reg finish;
    reg [1:0] WB;
    reg [2:0] MEM;
    reg [5:0] EXE;
    reg [2:0] LoadStoreType;
    reg [4:0] LD_rt;
    reg [4:0] RT_rd;
    reg [4:0] FUnit_rs;
    reg [10:0] PC;
    reg [31:0] RegA;
    reg [31:0] RegB;
    reg [31:0] Instruction_ls;
    
    always @(posedge clk)
    begin
        if(rst)
        begin
            finish <= 1'b0;
            WB <= 2'b0;
            MEM <= 3'b0;
            EXE <= 6'b0;
            LoadStoreType <= 3'b0;
            LD_rt <= 5'b0;
            RT_rd <= 5'b0;
            FUnit_rs <= 5'b0;
            PC <= 11'b0;
            RegA <= 32'b0;
            RegB <= 32'b0;
            Instruction_ls <= 32'b0;
        end
        else if(start)
        begin
            finish <= inFinish;
            WB <= inWB;
            MEM <= inMEM;
            EXE <= inEXE;
            LoadStoreType <= inLoadStoreType;
            LD_rt <= inLD_rt;
            RT_rd <= inRT_rd;
            FUnit_rs <= inFUnit_rs;
            PC <= inPC;
            RegA <= inRegA;
            RegB <= inRegB;
            Instruction_ls <= inInstruction_ls;
        end
    end
    
    assign outFinish = finish;
    assign outWB = WB;
    assign outMEM = MEM;
    assign outEXE = EXE;
    assign outLoadStoreType = LoadStoreType;
    assign outLD_rt = LD_rt;
    assign outRT_rd = RT_rd;
    assign outFUnit_rs = FUnit_rs;
    assign outPC = PC;
    assign outRegA = RegA;
    assign outRegB = RegB;
    assign outInstruction_ls = Instruction_ls;
    
endmodule
