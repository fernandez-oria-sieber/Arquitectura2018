`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2021 07:26:04 PM
// Design Name: 
// Module Name: Top_level_Testbench
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


module Top_level_Testbench(

    );
    
    reg rx,clk,rst,tx, finish;
    reg [1813:0] values;
    reg [31:0] mem [29:0];
    reg [999:0] filename;
    integer cycle_file;
    integer i;
    
    Top_level TL (rx, clk, rst, tx, finish, values);
    
    initial
    begin
        #10
        $readmemh("/home/vlad/Documents/Arquitectura2018/TP_FINAL/scripts/instructionsHexa.txt", mem);
        rx = 1'b1;
        
        #10
        for(i=0; i < 30; i= i+1)
        begin
            
            
            /*$display("%d: %b", i, mem[i]);
            $sformat(filename, "/home/vlad/Documents/Arquitectura2018/TP_FINAL/scripts/ciclos/cycle_%0d.out", i);
            cycle_file = $fopen(filename,"w");
            $fwrite(cycle_file, "%d: %b", i, mem[i]);
            $fclose(cycle_file);
            */
        end
        #10
        $finish;
    end
    
    
     always #5 clk=~clk;  // Genero los ciclos de reloj
    
endmodule


