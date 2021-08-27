`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2021 07:49:43 PM
// Design Name: 
// Module Name: MIPS_Testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MIPS_Testbench(

    );
    
    reg [31:0] instruction;
    reg [10:0] IMEM_addr;
    //wire [1813:0] values;
    reg wr_enable, start, clk, rst; 
    wire finish;
    integer i;
    reg [31:0] instructionMem [21:0];
    
    
    
    MIPS int_mips (clk, rst, wr_enable, start, IMEM_addr, instruction, finish/*, values*/);
     
    initial
    begin
    $readmemh("/home/vlad/Documents/Arquitectura2018/TP_FINAL/scripts/instructionsHexa.txt", instructionMem);
    clk         =   1'b0;
    rst         =   1'b1;
    wr_enable   =   1'b0;
    IMEM_addr   =   11'b0;
    instruction =   32'b0;
    start       =   1'b0;
    #10 
    rst         =   1'b0;
    wr_enable = 1'b1;
    for(i=0; i < 22; i= i+1)
    begin
        #10
        instruction = instructionMem[i];
        IMEM_addr = i;
    end
    
    #10
    wr_enable = 1'b0;
    start       =   1'b1;
    end
    
    always @(posedge clk)
    begin
        if(finish)
        begin
            $display("TERMINOOOOO!!!!!!!");
            //$display("VALUES: %b", values);
            start = 1'b0;
            $finish;
        end
    end
    
    
    always #5 clk=~clk;  // Genero los ciclos de reloj

endmodule
