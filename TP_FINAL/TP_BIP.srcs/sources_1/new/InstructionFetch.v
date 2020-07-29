`timescale 1ns / 1ps

module InstructionFetch(
    input clk, reset,
    output [31:0] instruccion, PC
    );

wire[31:0] pc, addr;
wire[15:0] in_data;
wire[31:0] out_memory;
 
// MUX + ALU(ADD)
always @ (*)
begin
	if(reset)
		addr <= 0;
	else
		begin
			case (1'b0)
				1'b0: addr <= out_alu;
				1'b1: addr <= 0;
			endcase
		end
end

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

ALU #(.size(32)) alu (.Op(6'b100000), .A(1), .B(pc), .Leds(out_alu));
Data_memory #(.INIT_FILE("~/Arquitectura2018/TP_FINAL/datos.txt")) Data_memory(
    .Wr(0),.Rd(1),.clk(clk), .ena(1), .Addr(addr), .In_Data(in_data), .Out_Data(out_memory));

assign instruccion = out_memory;
assign PC = pc;

endmodule
