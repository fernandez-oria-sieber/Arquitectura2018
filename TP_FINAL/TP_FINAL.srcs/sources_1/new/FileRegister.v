`timescale 1ns / 1ps

module FileRegister(input clk,
                    input rst,
                    input isWrite,
                    input [4:0] inReadRegA,
                    input [4:0] inReadRegB,
                    input [4:0] inWriteAddr,
                    input [31:0] inWriteData,
                    output [31:0] outRegA,
                    output [31:0] outRegB,
                    output [1023:0] values);
    
    // Registros
    reg [31:0] registros[31:0]; // Matriz de 32X32
    reg [31:0] regA;
    reg [31:0] regB;
    integer i;
    
    // Escritura por flanco ascendente por clock y reset
    always @(posedge clk, posedge rst)
    begin
        if (rst) for(i=0;i<32;i=i+1) registros[i] <= 32'b0;
        else if (isWrite) registros[inWriteAddr] <= inWriteData;
    end
    
    // Lectura por flanco descendente del clock
    always @(negedge clk, negedge rst)
    begin
        if (rst)
        begin
            regA <= 32'b0;
            regB <= 32'b0;
        end
        else
        begin
            regA <= registros[inReadRegA];
            regB <= registros[inReadRegB];
        end
    end
    
    // Asignaciones de salida
    assign outRegA = regA;
    assign outRegB = regB;
    assign values = {registros[0],registros[1],registros[2],registros[3],registros[4],
                     registros[5],registros[6],registros[7],registros[8],registros[9],
                     registros[10],registros[11],registros[12],registros[13],registros[14],
                     registros[15],registros[16],registros[17],registros[18],registros[19],
                     registros[20],registros[21],registros[22],registros[23],registros[24],
                     registros[25],registros[26],registros[27],registros[28],registros[29],
                     registros[30],registros[31]}; // TODO invertir orden de registros
    
endmodule
