`timescale 1ns / 1ps

module interface_sim;

reg clk, reset, rx_done_tick, tx_done_tick;
//  wire signe
//	wire [7:0] leds;
	reg [7:0] dout;
	wire [7:0] din;
//	wire [5:0] op;
	
	wire wr, rd, tx_start, tx_full, rx_empty,BIP_enable;
	wire tx, rx, s_tick; 
	reg finish_program;
	wire[31:0] out_Acc_Counter;
  
    interface #(.DBIT(8)) int (clk, reset,rx_done_tick, rd, finish_program, tx_done_tick, 
                                       dout, out_Acc_Counter, din, BIP_enable, tx_start); 
   
    assign out_Acc_Counter[31:27] = 0;
    assign out_Acc_Counter[26:16] = 10;
    assign out_Acc_Counter[15:0] = 43;
    //assign Addr = Program_Data[10:0];
    
    always 
        begin
            #5 clk = ~clk;            
        end
     initial
        begin
            //BIP_enable = 1;
            clk = 0;
            reset = 1;
            #10 reset = 0;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;            
            #10  
            rx_done_tick = 1;
            dout = 115;
            #10
            #10
            #10
            dout = 13;
            //BIP_enable = 1;
            finish_program = 1;
            #10
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;  
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0; 
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;
            #10  tx_done_tick = 1;
            #10  tx_done_tick = 0;                       
            
        end
endmodule