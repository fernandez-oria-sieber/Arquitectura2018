`timescale 1ns / 1ps

module ControlUnit(input [5:0] inInstruction,
                   input [5:0] inFunct,
                   output [1:0] outCtrl_WB,   // RegWr, MemToReg
                   output [2:0] outCtrl_MEM,  // MemRd, MemWr, Branch
                   output [5:0] outCtrl_EXE); // RegDst, ALUSrc, ALUop, shamt, Jump
    
    // Registros
    reg [10:0] ctrl;
    
    always @(*)
    begin
        casex(inInstruction)     // EXE_MEM_WB
            6'b00_0000:
                begin 
                    casex(inFunct)
                        6'b0000XX: ctrl = 11'b110010_000_11; // d'00 - RType with shamt
                        6'b00100X: ctrl = 11'b110011_000_11; // d'00 - JType
                        default:   ctrl = 11'b110000_000_11; // d'00 - RType
                    endcase
                end
            6'b10_0XXX: ctrl = 11'b000100_100_10; // d'35 - Load [L]
            6'b10_1XXX: ctrl = 11'b000100_010_0X; // d'43 - Store [S]
            6'b00_010X: ctrl = 11'bX01000_001_0X; // d'04 - Branch on Equal [BEQ]
            // 00_1000
            default:    ctrl = {inInstruction[5:0],5'b000_11}; // IType
        endcase
    end
    
    // Asignaciones de salida
    assign outCtrl_WB  = ctrl[1:0];
    assign outCtrl_MEM = ctrl[4:2];
    assign outCtrl_EXE = ctrl[10:5];
endmodule
