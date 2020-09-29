`timescale 1ns / 1ps

module ALU #(parameter size = 8)
(
    input [3:0] in_op,
    input signed [size-1:0] in_A,
    input signed [size-1:0] in_B,
    output zero, 
    output [size-1:0] result
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

reg signed [size-1:0] result_aux;

always @(*)
begin
    case (in_op)
        SLL: result_aux = in_B << in_A[10-:5];
        SRL: result_aux = in_B >> in_A[10-:5];
        SRA: result_aux = $signed(in_B) >>> in_A[10-:5];
        SLLV: result_aux = in_B << in_A;
        SRLV: result_aux = in_B >> in_A;
        SRAV: result_aux = $signed(in_B) >>> in_A;
        ADD: result_aux = in_A + in_B;
        SUB: result_aux = in_A - in_B;
        AND: result_aux = in_A & in_B;
        OR: result_aux = in_A | in_B;
        XOR: result_aux = in_A ^ in_B;
        NOR: result_aux = ~(in_A | in_B);
        SLT: result_aux = {31'b0, {$signed(in_A)<$signed(in_B)}};
        LUI: result_aux = {in_B[15 : 0], 16'b0000000000000000};
        default: result_aux = 0;
    endcase
end

// Asignaciones de salida
assign result = result_aux;
assign zero = ((in_op == SUB) && (result == 0)) ? 1:0; // verificar esto

endmodule