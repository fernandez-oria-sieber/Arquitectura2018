`timescale 1ns / 1ps
module ALU_control(input [5:0] inALUOp,
                   input [5:0] inFunc,
                   output [3:0] outOp);

// parameter: constante en verilog
parameter [3:0] SLL  = 4'b0000;
parameter [3:0] SRL  = 4'b0001;
parameter [3:0] SRA  = 4'b0010;
parameter [3:0] SLLV = 4'b0011;
parameter [3:0] SRLV = 4'b0100;
parameter [3:0] SRAV = 4'b0101;
parameter [3:0] ADD  = 4'b0110;
parameter [3:0] SUB  = 4'b0111;
parameter [3:0] AND  = 4'b1000;
parameter [3:0] OR   = 4'b1001;
parameter [3:0] XOR  = 4'b1010;
parameter [3:0] NOR  = 4'b1011;
parameter [3:0] SLT  = 4'b1100;
parameter [3:0] LUI  = 4'b1101;

// Registros
reg [3:0] aux_op;

always @(*)
begin
    casex(inALUOp)
        6'b11XXXX: // R-type -> ver el campo funct
            case(inFunc)
                6'b000000: aux_op = SLL;
                6'b000010: aux_op = SRL;
                6'b000011: aux_op = SRA;
                6'b000100: aux_op = SLLV;
                6'b000110: aux_op = SRLV;
                6'b000111: aux_op = SRAV;
                6'b100001: aux_op = ADD; // ADDU - unsigned
                6'b100011: aux_op = SUB; // SUBU - unsigned
                6'b100100: aux_op = AND;
                6'b100101: aux_op = OR;
                6'b100110: aux_op = XOR;
                6'b100111: aux_op = NOR;
                6'b101010: aux_op = SLT;
                default: aux_op   = 4'b0000;
            endcase
        default:// changed due to timing loop
            case(inALUOp[3:0])
                4'b1000: aux_op = ADD; // ADDI
                4'b1100: aux_op = AND; // ANDI
                4'b1101: aux_op = OR; // ORI
                4'b1110: aux_op = XOR; // XORI
                4'b1010: aux_op = SLT; // SLTI
                4'b1111: aux_op = LUI;
                4'b0100: aux_op = ADD; // LOAD & STORE 
                default: aux_op = ADD;
            endcase
    endcase
end

// Asignaciones de salida
assign outOp = aux_op;

endmodule
