`timescale 1ns / 1ps

module InstructionFetch(
    input clk, reset,
	input PCSel, // Selector del MUX que viene de una AND en la etapa MEM, entre Branch y Zero  
	input [31:0] PCJump, // Salida del sumador en la etapa EX
    output [31:0] instruction, PC
    );

reg [31:0] pc, addr; // dirección de acceso a la memoria, asociada al pc
reg [15:0] in_data;
reg [31:0] out_memory;

Data_memory #(.INIT_FILE("~/Arquitectura2018/TP_FINAL/datos.txt")) Data_memory(
    .Wr(0),.Rd(1),.clk(clk), .ena(1), .Addr(addr), .In_Data(in_data), .Out_Data(out_memory));

// MUX + ALU(ADD)
always @ (*)
begin
	if(reset)
		addr <= 0;
	else
		addr <= pc + 1;
end

// Logica del bloque
always @ (negedge clk, posedge reset)
begin
	if (reset)
		begin
			pc <= 32'd0;
		end
	else
		begin
			pc <= addr;
		end
end

// Asignaciones de salida
assign instruction = out_memory;
assign PC = pc;

endmodule
