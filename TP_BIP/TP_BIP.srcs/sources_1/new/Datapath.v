`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2019 11:08:44 PM
// Design Name: 
// Module Name: Datapath
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


module Datapath
	(
	input clk, reset,
	input [10:0] Data,
    input [15:0] Out_Data,
    input [1:0] SetA,
    input SetB,
    input WrAcc,
    input Op,
    output [15:0] In_Data
    );
    
	 
    reg [15:0] ACC, A, B, Inmediate_Val;
    wire [15:0] SalidaALU;
    reg [5:0] Operation;
	 
    initial
        begin
           ACC = 0;
           A = 0;
           B = 0;
           Inmediate_Val= 0;
        end
	   
    always @(posedge clk, posedge reset)
    begin
        if (reset) ACC = 0;
        else if (WrAcc) ACC = A;
        else ACC = ACC;
    end

    always @(*)
    begin
        Inmediate_Val[10:0] = Data;
        case (SetB)
            1'b0: B = Out_Data;
            1'b1: B = Inmediate_Val;
            default: B = B;
        endcase
        case (SetA)
            2'b00:      A = Out_Data;
            2'b01:      A = Inmediate_Val;
            2'b10:      A = SalidaALU;
            2'b11:      A = 0; // TODO, ver este A = 0, si ponemos A = A, da inferred latch
        endcase
        if (Op) Operation <= 6'b100000;
        else Operation <= 6'b100010;
    end
    
    ALU #(.size(16)) alu (.Op(Operation), .A(ACC), .B(B), .Leds(SalidaALU));
    assign In_Data = ACC;
endmodule