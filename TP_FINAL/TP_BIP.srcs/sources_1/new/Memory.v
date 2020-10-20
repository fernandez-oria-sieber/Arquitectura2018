`timescale 1ns / 1ps
module Stage_Memory(input clk,
                    input [4:0] inAddrRegDst,        // WB
                    input [31:0] inPcToReg,          // WB
                    input [31:0] inALUResult,        // Alu result
                    input [31:0] inRtReg,            // Valor del reg rt
                    input [0:1] is_WB,               // ControlUnit_WB [RegWrite, MemToReg]
                    input isWritePc,                 // WB
                    input isStopPipe,                // WB
                    input isMemWrite,
                    input isMemRead,
                    input [2:0] isLoadStoreType,     // viene del control unit
                    output [31:0] onOutputMem,
                    output [31:0] onALUResult,
                    output [4:0] onAddrRegDst,
                    output [31:0] onPcToReg,
                    output osWritePC,
                    output [1:0] osWB,
                    output osStopPipe,
                    output [1023:0] outDataToDebug);
    
    wire [31:0] bus_store_memory;
    wire [31:0] bus_load_memory;
    //Ver  que onda con el flag zero y el MemRead (no se utiliza)
    
    // StoreInstuction u_store_instruction_type(
    // .isLoadStoreType([1:0] isLoadStoreType),
    // .inData_to_mem(inRtReg),
    // .outStore(bus_store_memory)
    // );
    // LoadInstuction u_load_instruction_type(
    // .isLoadStoreType(isLoadStoreType),
    // .inMemData(bus_load_memory),
    // .outLoad(onOutputMem)
    // );
    
    Data_memory u_data_memory(
    .clk(clk),
    .inWrEnable(isMemWrite),
    .inAddress(inALUResult),
    .inData(bus_store_memory),
    .outData(bus_load_memory)
    );
    
    SignExtensionMem u_sign_extension_memory(
    .isLoadStoreType(isLoadStoreType),
    .inDataToMem(inRtReg),
    .inMemData(bus_load_memory),
    .isMemWrite(isMemWrite);
    .outStore(bus_store_memory),
    .outLoad(onOutputMem),
    )
    
    assign onALUResult           = inALUResult;
    assign onAddrRegDst          = inAddrRegDst;
    assign onPcToReg             = inPcToReg;
    assign osWB                  = is_WB;
    assign osWritePC             = isWritePc;
    assign osStopPipe            = isStopPipe;
    // assign os_RegWrite        = is_RegWrite;
    // assign os_MemtoReg        = is_MemtoReg;
    // assign os_select_addr_reg = is_select_addr_reg;
endmodule
