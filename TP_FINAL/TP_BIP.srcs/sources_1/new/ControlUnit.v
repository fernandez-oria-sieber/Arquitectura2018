`timescale 1ns / 1ps

module ControlUnit(
    input [5:0] inInstruction,
    output [1:0] outCtrl_WB,
    output [2:0] outCtrl_MEM,
    output [3:0] outCtrl_EXE
    );

reg [8:0] Ctrl;

assign outCtrl_WB = Ctrl[1:0];
assign outCtrl_MEM = Ctrl[4:2];
assign outCtrl_EXE = Ctrl[8:5];

always @(*)
	begin
		case(inInstruction) 	// EXE_MEM_WB
			6'b00_0000: Ctrl = 9'b1100_000_10;  // d'00 - RType 
			6'b10_0011: Ctrl = 9'b0001_010_11;  // d'35 - Load Word [LW]
			6'b10_1011: Ctrl = 9'bX001_001_0X;  // d'43 - Store Word [SW]
			6'b00_0100: Ctrl = 9'bX010_100_0X;  // d'04 - Branch on Equal [BEQ]
			//    00_1000
			default:
				Ctrl = 9'bXXXX_XXX_XX; // IType?
		endcase
	end
endmodule
