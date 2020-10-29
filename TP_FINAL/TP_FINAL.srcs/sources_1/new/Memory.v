`timescale 1ns / 1ps
module Memory(input clk,
              input [4:0] inAddrRegDst,        // WB
              input [31:0] inPcToReg,          // WB
              input [31:0] inALUResult,        // Alu result
              input [31:0] inRtReg,            // Valor del reg rt
              input [1:0] in_WB,               // ControlUnit_WB [RegWrite, MemToReg]
              input [31:0] inPCJump,
              input isALUZero,                 // Si es 0, entonces BEQ hace el Branch
              input isWritePc,                 // WB
              input isStopPipe,                // WB
              input isMemWrite,                // MEM[0]?
              input isMemRead,                 // MEM[1]?
              input isBranch,                  // MEM[2]
              input [2:0] isLoadStoreType,     // viene del control unit
              output [31:0] outMem,
              output [31:0] outALUResult,
              output [4:0] outAddrRegDst,
              output [31:0] outPcToReg,
              output [31:0] outPCJump,
              output [1:0] osWB,
              output osWritePC,
              output osStopPipe,
              output [1023:0] outDataToDebug);
    
    // Registros
    reg [31:0] PCSel;
    
    // Cables
    wire [31:0] bus_store_memory;
    wire [31:0] bus_load_memory;
    // Ver  que onda con el flag zero y el MemRead (no se utiliza)
    
    DataMemory data_memory(
    .clk(clk),
    .inWrEnable(isMemWrite),
    .inAddress(inALUResult),
    .inData(bus_store_memory),
    .outData(bus_load_memory)
    );
    
    SignExtensionMemory sign_extension_memory(
    .isLoadStoreType(isLoadStoreType),
    .inDataToMem(inRtReg),
    .inMemData(bus_load_memory),
    .isMemWrite(isMemWrite);
    .outStore(bus_store_memory),
    .outLoad(outMem),
    )
    
    always @(negedge clk, posedge rst)
    begin
        if (rst)
        begin
            PCSel = 1'b0;
        end
        else
        begin
            PCSel = isALUZero && isBranch;
        end
    end
    
    // Asignación Externas
    assign outPCSel              = PCSel;
    assign outALUResult          = inALUResult;
    assign outAddrRegDst         = inAddrRegDst;
    assign outPcToReg            = inPcToReg;
    assign osWB                  = in_WB;
    assign osWritePC             = isWritePc;
    assign osStopPipe            = isStopPipe;
    // assign os_RegWrite        = is_RegWrite;
    // assign os_MemtoReg        = is_MemtoReg;
    // assign os_select_addr_reg = is_select_addr_reg;
endmodule
