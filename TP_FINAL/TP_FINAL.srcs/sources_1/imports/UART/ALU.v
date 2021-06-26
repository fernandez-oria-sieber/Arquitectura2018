`timescale 1ns / 1ps

module ALU #(parameter size = 32)
            (input [3:0] inOp,
             input signed [size-1:0] inRegA,
             input signed [size-1:0] inRegB,
             output outZero,
             output [size-1:0] outResult);
    
    // localparam: constante en verilog
    localparam [3:0] SLL  = 4'b0000;
    localparam [3:0] SRL  = 4'b0001;
    localparam [3:0] SRA  = 4'b0010;
    localparam [3:0] SLLV = 4'b0011;
    localparam [3:0] SRLV = 4'b0100;
    localparam [3:0] SRAV = 4'b0101;
    localparam [3:0] ADD  = 4'b0110;
    localparam [3:0] SUB  = 4'b0111;
    localparam [3:0] AND  = 4'b1000;
    localparam [3:0] OR   = 4'b1001;
    localparam [3:0] XOR  = 4'b1010;
    localparam [3:0] NOR  = 4'b1011;
    localparam [3:0] SLT  = 4'b1100;
    localparam [3:0] LUI  = 4'b1101;
    
    // Registros
    reg signed [size-1:0] result_aux;
    
    always @(*)
    begin
        case (inOp)
            SLL: result_aux     = inRegB << inRegA[10-:5];
            SRL: result_aux     = inRegB >> inRegA[10-:5];
            SRA: result_aux     = $signed(inRegB) >>> inRegA[10-:5];
            SLLV: result_aux    = inRegB << inRegA;
            SRLV: result_aux    = inRegB >> inRegA;
            SRAV: result_aux    = $signed(inRegB) >>> inRegA;
            ADD: result_aux     = inRegA + inRegB;
            SUB: result_aux     = inRegA - inRegB;
            AND: result_aux     = inRegA & inRegB;
            OR: result_aux      = inRegA | inRegB;
            XOR: result_aux     = inRegA ^ inRegB;
            NOR: result_aux     = ~(inRegA | inRegB);
            SLT: result_aux     = {31'b0, {$signed(inRegA)<$signed(inRegB)}};
            LUI: result_aux     = {inRegB[15 : 0], 16'b0000000000000000};
            default: result_aux = 0;
        endcase
    end
    
    // Asignaciones de salida
    assign outResult  = result_aux;
    assign outZero    = (inOp == SUB) && (outResult == 0);
    
endmodule
