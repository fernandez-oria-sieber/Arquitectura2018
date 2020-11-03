`timescale 1ns / 1ps
module WriteBack(input [1:0] 	isWB,
                 input [31:0] inFR_wd,     // falta en Memory
                 input [31:0] inALUResult,
                 output osFR_wr,
                 output [31:0] outFR_wd);

// Registros
reg [31:0] FR_wd;

always @ (*)
begin
    if (isWB[0])
        FR_wd <= inFR_wd;
    else
        FR_wd <= inALUResult;
end

// Asignaciones de salida
assign outFR_wd = FR_wd;//(inWB[0]) ? inFR_wd:inALUResult;
assign osFR_wr  = inWB[1];
endmodule
