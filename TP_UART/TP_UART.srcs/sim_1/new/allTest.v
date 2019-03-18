`timescale 1ns / 1ps

module allTest;

reg clk, reset, rx_done_tick, tx_done_tick;
//  wire signe
//	wire [7:0] leds;
	reg [7:0] dout;
	wire [7:0] din;
//	wire [5:0] op;
	
	wire wr, rd, tx_start, tx_full, rx_empty,BIP_enable;
//	wire tx, rx, s_tick, finish_program;
//	reg [31:0] out_Acc_Counter;
	
    //rx_interface int_rx (clk, reset,rx_done_tick, rd, dout, a, b, op, rx_empty);
    //ALU alu (op, a, b, leds);
    //tx_interface int_tx (clk, reset,tx_done_tick, rx_empty, leds, d_in, tx_start, rd);
    
    //UART uart(rx, clk, reset, finish_program, out_Acc_Counter, tx, BIP_enable);   
    //interface #(.DBIT(8)) int (clk, reset,rx_done_tick, rd, finish_program, tx_done_tick, 
    //                                   dout, out_Acc_Counter, din, BIP_enable, tx_start); 
    
    
    //reg BIP_enable;
    wire finish_program, WrRAM, RdRAM;
    wire[10:0] PC, Addr;
    wire[15:0] Program_Data, In_Data, Out_Data;
    wire[31:0] out_Acc_Counter;
       
    //UART uart(rx, clk, reset, finish_program, out_Acc_Counter, tx, BIP_enable);    
    Data_memory #(.INIT_FILE("/home/luchosteam/Documents/Arquitectura/Practico2018/datos.txt")) Data_memory(.Rd(RdRAM), .Wr(WrRAM),.clk(clk),.ena(BIP_enable), .Addr(Addr), .In_Data(In_Data), .Out_Data(Out_Data));
    Program_memory #(.INIT_FILE("/home/luchosteam/Documents/Arquitectura/Practico2018/instrucciones.txt")) Program_memory (1'b1, 1'b0, clk, BIP_enable, PC, 0, Program_Data);
    CPU bip(BIP_enable, clk, reset, Program_Data, Out_Data, In_Data, PC, WrRAM, RdRAM, finish_program);
    
    interface #(.DBIT(8)) int (clk, reset,rx_done_tick, rd, finish_program, tx_done_tick, 
                                           dout, out_Acc_Counter, din, BIP_enable, tx_start); 
    
    
    assign out_Acc_Counter[31:27] = 0;
    assign out_Acc_Counter[26:16] = PC;
    assign out_Acc_Counter[15:0] = In_Data;
    assign Addr = Program_Data[10:0];
    
    always 
        begin
            #5 clk = ~clk;            
        end
     initial
        begin
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
            #10;
            #10;
            #10
            dout = 13;
            #50;
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