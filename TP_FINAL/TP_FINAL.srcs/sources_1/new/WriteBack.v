`timescale 1ns / 1ps
module WriteBack(input rst,
                 input [1:0] isWB,           // Flags de Control para WB
                 input [4:0] inFRWrReg,      // FR - Registro a escribir en ID
                 input [31:0] inFRWrData,    // Salida de la memoria
                 input [31:0] inALUResult,   // Salida de la ALU
                 output osFRWr,              // Flag de escritura en banco de registros
                 output [4:0] outFRWrReg,    // FR - Registro a escribir en ID
                 output [31:0] outFRWrData); // FR - Valor a escribir en ID
    
    // Registros
    reg FRWr;
    reg [4:0] FRWrReg;
    reg [31:0] FRWrData;
    
    always @ (*)
    begin
        if (rst)
        begin
            FRWr     <= 1'b0;
            FRWrReg  <= 5'b0;
            FRWrData <= 32'b0;
        end
        else
        begin
            FRWr    <= isWB[1];
            FRWrReg <= inFRWrReg;
            if (isWB[0])
                FRWrData <= inFRWrData;
            else
                FRWrData <= inALUResult;
        end
    end
    
    // Asignaciones de salida
    assign outFRWrData = FRWrData;
    assign outFRWrReg  = FRWrReg;
    assign osFRWr      = FRWr;
    
endmodule
