`timescale 1ns / 1ps
module ForwardingUnit (input inMEM_RegWrite,
                       input [4 : 0] inMEM_Rd,
                       input [4 : 0] inRs,
                       input [4 : 0] inRt,
                       input inWB_RegWrite,
                       input [4 : 0] inWB_Rd,
                       output [1 : 0] out_isMUX_A,
                       output [1 : 0] out_isMUX_B);
    
    reg [1:0] isMUX_A;
    reg [1:0] isMUX_B;
    
    always @(*)
    begin
        if (rst)
        begin
            isMUX_A <= 2'b0;
            isMUX_B <= 2'b0;
        end
        else
        begin
            if (inMEM_RegWrite && inMEM_Rd != 5'b0 && inMEM_Rd == inRs)
                isMUX_A = 2'b10;
            else if (inWB_RegWrite && inWB_Rd != 5'b0 && inWB_Rd == inRs)
                isMUX_A = 2'b01;
            else
                isMUX_A = 2'b00;
        end
    end
    
    always @(*)
    begin
        if (inMEM_RegWrite && inMEM_Rd != 5'b0 && inMEM_Rd == inRt)
            isMUX_B = 2'b10;
        else if (inWB_RegWrite && inWB_Rd != 5'b0 && inWB_Rd == inRt)
            isMUX_B = 2'b01;
        else
            isMUX_B = 2'b00;
    end
    
    // Asignaciones de salida
    assign out_isMUX_A = isMUX_A;
    assign out_isMUX_B = isMUX_B;
endmodule
