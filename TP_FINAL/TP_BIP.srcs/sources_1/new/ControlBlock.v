`timescale 1ns / 1ps

module ControlBlock(
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
		case(inInstruction)    //EXE_MEM_WB
			6'd00: Ctrl = 9'b1100_000_10;  // RType 
			6'd35: Ctrl = 9'b0001_010_11;  // Load Word [LW]
			6'd43: Ctrl = 9'bX001_001_0X;  // Store Word [SW]
			6'd04: Ctrl = 9'bX010_100_0X;  // Branch on Equal [BEQ]
			default:
				Ctrl = 9'bXXXX_XXX_XX;
		endcase
	end
endmodule
