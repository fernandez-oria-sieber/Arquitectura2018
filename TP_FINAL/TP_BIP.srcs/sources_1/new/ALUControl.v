`timescale 1ns / 1ps
module ALU_control(
    input [3:0] in_ALUop,
    input [5:0] in_func,
    output [3:0] out_op
    );

// parameter: constante en verilog
parameter [3:0] SLL = 4'b0000;
parameter [3:0] SRL = 4'b0001;
parameter [3:0] SRA = 4'b0010;
parameter [3:0] SLLV = 4'b0011;
parameter [3:0] SRLV = 4'b0100;
parameter [3:0] SRAV = 4'b0101;
parameter [3:0] ADD = 4'b0110;
parameter [3:0] SUB = 4'b0111;
parameter [3:0] AND = 4'b1000;
parameter [3:0] OR = 4'b1001;
parameter [3:0] XOR = 4'b1010;
parameter [3:0] NOR = 4'b1011;
parameter [3:0] SLT = 4'b1100;
parameter [3:0] LUI = 4'b1101;

reg [3:0] aux_op;

always @(*)
begin
    case(in_ALUop)
        4'b0000: // R-type -> ver el campo funct
        begin
            case(in_func)
                6'b000000: aux_op = SLL;
                6'b000010: aux_op = SRL;
                6'b000011: aux_op = SRA;
                6'b000100: aux_op = SLLV;
                6'b000110: aux_op = SRLV;
                6'b000111: aux_op = SRAV;
                6'b100000: aux_op = ADD; // ADD - signed
                6'b100001: aux_op = ADD; // ADDU - unsigned
                6'b100010: aux_op = SUB; // SUB - signed
                6'b100011: aux_op = SUB; // SUBU - unsigned
                6'b100100: aux_op = AND;
                6'b100101: aux_op = OR;
                6'b100110: aux_op = XOR;
                6'b100111: aux_op = NOR;
                6'b101010: aux_op = SLT;
                default: aux_op = 4'b0000;
            endcase
        end
        4'b0001: aux_op = ADD; // L o S => suma
        4'b1000: aux_op = ADD; // ADDI
        4'b1100: aux_op = AND; // ANDI
        4'b1101: aux_op = OR; // ORI
        4'b1110: aux_op = XOR; // XORI 
        4'b1010: aux_op = SLT; // SLTI
        4'b1111: aux_op = LUI;
        default: aux_op = 4'b0000;
    endcase
end

// Asignaciones de salida
assign out_op = aux_op;

endmodule
