`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2021 09:08:43 PM
// Design Name: 
// Module Name: read_write_file_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//  example from https://www.youtube.com/watch?v=Ys2vzsIxlZM
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module read_write_file_tb();
    reg [31:0] mem [29:0];
    reg [999:0] filename;
    integer i;
    integer cycle_file;
    
    initial
    begin
        #10
        $readmemh("/home/vlad/Documents/Arquitectura2018/TP_FINAL/scripts/instructionsHexa.txt", mem);
        
        #10
        for(i=0; i < 30; i= i+1)
        begin
            $display("%d: %b", i, mem[i]);
            $sformat(filename, "/home/vlad/Documents/Arquitectura2018/TP_FINAL/scripts/ciclos/cycle_%0d.out", i);
            cycle_file = $fopen(filename,"w");
            $fwrite(cycle_file, "%d: %b", i, mem[i]);
            $fclose(cycle_file);
        end
        #10
        $finish;
    end 
endmodule
