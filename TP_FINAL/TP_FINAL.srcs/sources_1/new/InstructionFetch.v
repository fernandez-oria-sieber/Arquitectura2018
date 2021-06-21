`timescale 1ns / 1ps

module InstructionFetch(input clk,
                        input reset,
                        input isPCSel,                // Selector del MUX que viene de una AND en la etapa MEM, entre Branch y Zero
                        input isPCWrite,              // Selector que viene desde el Hazard Unit
                        input [31:0] inPCJump,        // Salida del sumador en la etapa EX
                        output [31:0] outInstruction, //
                        output [31:0] outPC);
    
    // Registros
    reg [31:0] pc, addr; // dirección de acceso a la memoria, asociada al pc
    reg [31:0] memory_value;
    
    DataMemory #(.INIT_FILE("~/Arquitectura2018/TP_FINAL/datos.txt")) data_memory(
    .clk(clk),
    .ena(1'b1),
    .inWrEnable(1'b0),
    .inAddress(pc),
    .inData(32'b0),
    .outData(memory_value)
    );
    
    // Logica del bloque
    always @(negedge clk, posedge reset)
    begin
        if (reset)
            pc <= 32'b0;
        else
            if (isPCWrite) pc <= (isPCSel) ? inPCJump : pc + 1;
    end
    
    // Asignaciones de salida
    assign outInstruction = memory_value;
    assign outPC          = pc;
    
endmodule
