`timescale 1ns / 1ps
module HazardUnit(input isEX_MemRead,
                  input [4:0] inEX_Rt,
                  input [4:0] inRs,
                  input [4:0] inRt,
                  output out_isPCWrite,
                  output out_isWrite_IF_ID,
                  output out_isMuxControl);
    
    always@(*)
    begin
        if (isEX_MemRead && ((inEX_Rt == inRs) || (inEX_Rt == inRt)))
        begin
            out_isPCWrite     = 0; // no escribo el PC
            out_isWrite_IF_ID = 0; // no escribo el latch
            out_isMuxControl  = 0; // pongo todos 0 en control
        end
        else
        begin
            out_isPCWrite     = 1;
            out_isWrite_IF_ID = 1;
            out_isMuxControl  = 1;
        end
    end
    
endmodule
