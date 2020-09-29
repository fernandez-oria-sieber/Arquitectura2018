`timescale 1ns / 1ps

module Execute(
    input clk,
    input rst,
	 
    // Input Signals
    input [1:0] inWB,
    input [2:0] inMEM,
    input [3:0] inEXE,
    input [4:0] inLD_rt,
    input [4:0] inRT_rd,
    input [31:0] inInstructionAddress, // PC
    input [31:0] inRegA,
    input [31:0] inRegB,
    input [31:0] inInstruction_ls, // entrada con extension de signo de Intruction[15:0]

    //Output Signals
    output outALUZero,
    output [1:0] outWB,
    output [2:0] outMEM,
    output [4:0] outRegF_wreg
    output [31:0] outPCJump,
    output [31:0] outALUResult,
    output [31:0] outRegB,
    );

// Registros
reg ALUZero;
reg [4:0] RegF_wreg;
reg [4:0] wreg;
reg [31:0] PCJump;
reg [31:0] Jump;
reg [31:0] ALUResult;
reg [31:0] RegB;
reg [31:0] regB_ALU;

// Cables
wire [3:0] ALUControl;
wire [31:0] ALU_B;

// Asignación Interna
assign ALU_B = regB_ALU;

// Instancia de "ALU"
ALU #(.bits(32)) alu0 (	
	.in_op(ALUControl),
	.in_A(inRegA),
	.in_B(ALU_B),
	.zero(ALUZero),
	.result(ALUResult)
);

// Instancia de "ALUControl"
ALUControl alu_control0 (
	.in_ALUop(inEXE),
	.in_func(inInstruction_ls[5:0]), // funct: selecciona la operación aritmética a realizar
	.out_op(ALUControl)
);

always @(negedge clk, posedge rst)
    begin
        if(rst)
            begin
                PCJump <= 32'b0;
                RegF_wreg <= 5'bZZZZZ;
                ALUResult <= 32'b0;
                ALUZero <= 1'b0;
                RegB <= 32'b0;
            end
        else
            begin
                PCJump <= Jump; 
                RegF_wreg <= wreg;
                RegB <= inRegB;
            end
    end

always @(*)
	begin
		if(rst)
			begin
				wreg <= 0;
				regB_ALU <= 0;
			end
		else
			begin
				Jump <= ((inInstruction_ls << 2) + inInstructionAddress);
				casez(inEXE)
					4'b0???: wreg <= inLD_rt;
					4'b1???: wreg <= inRT_rd;
					default: wreg <= inRT_rd;
				endcase
				casez(inEXE)
					4'b???1: regB_ALU <= inInstruction_ls;
					4'b???0: regB_ALU <= inRegB;
					default: regB_ALU <= inRegB;
                            //  regB_ALU <= inInstruction_ls; // probar esto como default, para nosotros tiene más sentido
				endcase
			end
	end

// Asignaciones de salida
assign outWB = inWB;
assign outMEM = inMEM;
assign outPCJump = PCJump;
assign outRegF_wreg = RegF_wreg;
assign outALUResult = ALUResult;
assign outALUZero = ALUZero;
assign outRegB = RegB;

endmodule
