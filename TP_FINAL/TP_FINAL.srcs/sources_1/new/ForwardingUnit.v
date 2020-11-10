`timescale 1ns / 1ps
module ForwardingUnit (input inEX_MEM_RegWrite,
                       input [4 : 0] inEX_MEM_Rd,
                       input [4 : 0] inID_EX_Rs,
                       input [4 : 0] inID_EX_Rt,
                       input inMEM_WB_RegWrite,
                       input [4 : 0] inMEM_WB_Rd,
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
            if (inEX_MEM_RegWrite && inEX_MEM_Rd ! = 5'b0 && inEX_MEM_Rd == inID_EX_Rs)
                isMUX_A = 2'b10;
            else if (inMEM_WB_RegWrite && inMEM_WB_Rd ! = 5'b0 && inMEM_WB_Rd == inID_EX_Rs)
                isMUX_A = 2'b01;
            else
                isMUX_A = 2'b00;
        end
    end
    
    always @(*)
    begin
        if (inEX_MEM_RegWrite && inEX_MEM_Rd ! = 5'b0 && inEX_MEM_Rd == inID_EX_Rt)
            isMUX_B = 2'b10;
        else if (inMEM_WB_RegWrite && inMEM_WB_Rd ! = 5'b0 && inMEM_WB_Rd == inID_EX_Rt)
            isMUX_B = 2'b01;
        else
            isMUX_B = 2'b00;
    end
    
    // Asignaciones de salida
    assign out_isMUX_A = isMUX_A;
    assign out_isMUX_B = isMUX_B;
endmodule
