`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2021 09:14:17 AM
// Design Name: 
// Module Name: rx_module_test
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


module rx_module_test;

    localparam SIZE = 8;
    
    reg clk, reset, s_tick, rx, rx_done_tick;
    reg [SIZE-1:0] dout; 

    br_generator br_g (clk, s_tick);

	rx_module #(SIZE, 16) rx_mod (clk, reset, rx, s_tick, rx_done_tick, dout);
	
	always 
    begin
        #5 clk = ~clk;            
    end
 initial
    begin
        clk = 0;
        reset = 1;
        rx = 0;
        #20 reset = 0;                  // #20
        
        #20 rx = 53;          // 5    // #40
        #20 rx = 102;         // f    // #80
        #20 rx = 49;          // 1    // #120
        #20 rx = 48;          // 0    // #160
        #20 rx = 51;          // 3    // #200       
        #20 rx = 115;         // s    // #240
        #20 rx = "-";          // -    // #280
        #20 rx = 111;         // o    // #320340
        #20 rx = 100;         // d    // #360
    end
	
endmodule
