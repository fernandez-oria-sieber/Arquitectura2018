`timescale 1ns / 1ps

module InstructionFetch(input clk,
                        input reset,
                        input isPCSel,                // Selector del MUX que viene de una AND en la etapa MEM, entre Branch y Zero
                        input isPCWrite,              // Selector que viene desde el Hazard Unit
                        input write_enable,
                        input [10:0] IMEM_addr,
                        input [31:0] inPCJump,        // Salida del sumador en la etapa EX
                        input [31:0] inInstruction,
                        output outFinish,
                        output [31:0] out_clk_counter,
                        output [31:0] outInstruction, //
                        output [31:0] outPC);
    
    // Registros
    reg finish;
    reg [10:0] memory_address;
    reg [31:0] pc, addr, clk_counter; // dirección de acceso a la memoria, asociada al pc
    wire [319:0] values;
    //reg [31:0] memory_value;
    
    DataMemory instruction_memory(
    .clk(clk),
    .ena(1'b1),
    .inWrEnable(write_enable),
    .inAddress(memory_address),
    .inData(inInstruction),
    .outData(outInstruction),
    .values(values)
    );
    
    // Logica del bloque
    always @(negedge clk, posedge reset)
    begin
        if (reset)
        begin
            pc <= 32'b0;
            finish <= 1'b0;
            clk_counter <= 32'b0;
            memory_address <= 11'b0;
        end
        else
        begin
            memory_address <= (write_enable) ? IMEM_addr: pc[10:0]; 
            if (isPCWrite) 
            begin
                pc <= (isPCSel) ? inPCJump : pc + 1;
                clk_counter <= clk_counter + 1'b1;
            end
            if (outInstruction && 32'b0) finish <= 1'b1;
        end
            
    end
    
    // Asignaciones de salida
    assign outPC          = pc;
    assign outFinish      = finish;
    assign out_clk_counter= clk_counter;
    
endmodule
