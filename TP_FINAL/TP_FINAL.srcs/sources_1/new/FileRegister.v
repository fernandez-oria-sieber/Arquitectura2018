`timescale 1ns / 1ps

module FileRegister(input clk,
                    input rst,
                    input isWrite,
                    input [4:0] inReadRegA,
                    input [4:0] inReadRegB,
                    input [4:0] inWriteAddr,
                    input [31:0] inWriteData,
                    output [31:0] outRegA,
                    output [31:0] outRegB);
    
    // Registros
    reg [31:0] registros[31:0]; // Matriz de 32X32
    reg [31:0] regA;
    reg [31:0] regB;
    
    // Escritura por flanco ascendente por clock y reset
    always @(posedge clk, posedge rst)
    begin
        if (rst)   [31:0] registros[31:0]        <= 0;
        else if (isWrite) registros[inWriteAddr] <= inWriteData;
    end
    
    // Lectura por flanco descendente del clock
    always @(negedge clk)
    begin
        regA <= registros[inReadRegA];
        regB <= registros[inReadRegB];
    end
    
    // Asignaciones de salida
    assign outRegA = regA;
    assign outRegB = regB;
    
endmodule
