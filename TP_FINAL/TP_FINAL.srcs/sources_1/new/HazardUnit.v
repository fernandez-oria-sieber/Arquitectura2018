`timescale 1ns / 1ps
module HazardUnit(input isEX_MemRead,
                  input isMemRead, // Agregamos la flag de memRead de la instruccion actual
                  input [4:0] inEX_Rt,
                  input [4:0] inRs,
                  input [4:0] inRt,
                  output out_isPCWrite,
                  output out_isWrite_IF_ID,
                  output out_isMuxControl);       
           
    reg isPCWrite;
    reg isWrite_IF_ID;
    reg isMuxControl;
    
    always@(*)
    begin
        if (~isMemRead && isEX_MemRead && ((inEX_Rt == inRs) || (inEX_Rt == inRt)))
        begin
            isPCWrite     = 1'b0; // no escribo el PC
            isWrite_IF_ID = 1'b0; // no escribo el latch
            isMuxControl  = 1'b0; // pongo todos 0 en control
        end
        else
        begin
            isPCWrite     = 1'b1;
            isWrite_IF_ID = 1'b1;
            isMuxControl  = 1'b1;
        end
    end
    
    assign out_isPCWrite        = isPCWrite;
    assign out_isWrite_IF_ID    = isWrite_IF_ID;
    assign out_isMuxControl     = isMuxControl;
    
endmodule
