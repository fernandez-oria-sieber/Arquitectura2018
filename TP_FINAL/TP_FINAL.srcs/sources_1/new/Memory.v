`timescale 1ns / 1ps
module Memory(input clk,
              input rst,
              input isALUZero,             // Si es 0, entonces BEQ hace el Branch
              input isMemWrite,            // MEM[0]?
              input isMemRead,             // MEM[1]?
              input isBranch,              // MEM[2]
              input [1:0] inWB,            // ControlUnit_WB [RegWrite, MemToReg]
              input [2:0] isLoadStoreType, // Viene de ID -> op[2:0]
              input [4:0] inFRWrReg,       // FR - Registro a escribir en ID [EX]
              input [31:0] inALUResult,    // Alu result
              input [31:0] inRtReg,        // Valor del reg rt
              input [31:0] inPCJump,
              output osPC,                 // hacia IF [outPCSel]
              output [1:0] outWB,
              output [4:0] outFRWrReg,     // FR - Registro a escribir en ID [EX]
              output [31:0] outMem,        // Salida del data_memory para un Load
              output [31:0] outALUResult,  // Va hacia Forwarding Unit? y hacia WB
              output [31:0] outPCJump);    // hacia IF
    
    // Registros
    reg [4:0] FRWrReg;
    reg [31:0] PCSelect;
    
    // Cables
    wire [31:0] bus_store_memory; // Store -> sale del sign_extension entra al data_memory
    wire [31:0] bus_load_memory;  // Load -> entra al sign_extension que viene del data_memory
    
    SignExtensionMem sign_extension_memory(
    .isLoadStoreType(isLoadStoreType),
    .inDataToMem(inRtReg),
    .inMemData(bus_load_memory),
    .isMemWrite(isMemWrite),
    .outStore(bus_store_memory),
    .outLoad(outMem)
    );
    
    DataMemory data_memory(
    .clk(clk),
    .ena(1'b1),
    .inWrEnable(isMemWrite),
    .inAddress(inALUResult),
    .inData(bus_store_memory),
    .outData(bus_load_memory)
    );
    
    always @(negedge clk, posedge rst)
    begin
        if (rst)
        begin
            PCSelect = 1'b0;
            FRWrReg <= 5'b0;
        end
        else
        begin
            PCSelect = isALUZero && isBranch;
            FRWrReg <= inFRWrReg;
        end
    end
    
    // Asignación Externas
    assign outALUResult = inALUResult;
    assign outPCJump    = inPCJump;
    assign outFRWrReg   = FRWrReg;
    assign osPC         = PCSelect;
    assign outWB        = inWB;
endmodule
