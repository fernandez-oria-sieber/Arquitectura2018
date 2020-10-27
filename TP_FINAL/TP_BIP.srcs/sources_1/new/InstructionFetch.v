`timescale 1ns / 1ps

module InstructionFetch(input clk,
                        input reset,
                        input isPCSel,                // Selector del MUX que viene de una AND en la etapa MEM, entre Branch y Zero
                        input [31:0] inPCJump,        // Salida del sumador en la etapa EX
                        output [31:0] outInstruction, //
                        output [31:0] outPC);
    
    // Registros
    reg [31:0] pc, addr; // dirección de acceso a la memoria, asociada al pc
    reg [31:0] memory_value;
    
    DataMemory #(.INIT_FILE("~/Arquitectura2018/TP_FINAL/datos.txt")) data_memory(
    .clk(clk),
    .inWrEnable(0),
    .inAddress(pc),
    .inData(0),
    .outData(memory_value)
    );
    
    // Logica del bloque
    always @(negedge clk, posedge reset)
    begin
        if (reset)
            pc <= 32'd0;
        else
        begin
            if (isPCSel) pc <= inPCJump;
            else pc         <= pc + 1;
        end
    end
    
    // // MUX + ALU(ADD)
    // always @(*)
    // begin
    //     if (reset)
    //         addr <= 0;
    //     else
    //         addr <= pc + 1;
    // end
    
    // Asignaciones de salida
    assign outInstuction = memory_value;
    assign outPC         = pc;
    
endmodule
