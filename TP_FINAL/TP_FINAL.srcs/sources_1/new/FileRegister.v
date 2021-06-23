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
    integer i;
    
    // Escritura por flanco ascendente por clock y reset
    always @(posedge clk, posedge rst)
    begin
        if (rst)
        begin          
            for(i=0;i<32;i=i+1) registros[i] <= 32'b0;
            regA <= 32'b0;
            regB <= 32'b0;
        end
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
