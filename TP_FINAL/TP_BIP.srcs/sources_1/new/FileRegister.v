`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:07:06 09/09/2020
// Design Name: 
// Module Name:    FileRegister 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FileRegister(
	input clk,
    input rst,
    input inWrite,
    input [4:0] inRead_regA,
    input [4:0] inRead_regB,
    input [4:0] inWrite_addr,
    input [31:0] inWrite_data,
    output [31:0] outRegA,
    output [31:0] outRegB
    );
	 
reg [31:0] registros[31:0]; // Matriz de 32X32
reg [31:0] regA;
reg [31:0] regB;

// Escritura por flanco ascendente y reset
always @(posedge clk, posedge rst)
begin
	if (inRst)
			[31:0] registros[31:0] <= 0;
	else
        if (inWrite)
            // Escribo en la fila indicada por inWrite_addr los 32 bit provenientes de write_data
            registros[inWrite_addr] <= inWrite_data;
end

// Lectura por flanco descendente
always @(negedge clk)
begin
	regA <= registros[inRead_regA];
	regB <= registros[inRead_regB];
end

// Lectura combinacional, manipulado por el clock desendente que se encuentra en el modulo superior
// Asignaciones de salida
assign outRegA = regA;
assign outRegB = regB;

endmodule
