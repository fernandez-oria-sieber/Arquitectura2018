`timescale 1ns / 1ps

module Top_level#(parameter SIZE = 32)
    (
        input rx, clk, rst, mode,
        output tx
    );
    /*
     instanciar rx module que recibe los bits y un baudrate generator. 
     hacer una interfax RX para MIPS/Memory
     e instaciar MIPS
    */

    wire signed[SIZE-1:0] a, b, d_in; 
	wire [SIZE-1:0] instruction, leds;
	wire [5:0] op;
	wire rx_empty, wr, s_tick, rx_done_tick, tx_done_tick, wr_enable, start;
	wire tx_start, rd, mode;
  
    UART uart(clk,rst,rx,tx,start, mode, wr_enable, instruction);
    MIPS int_mips(clk, rst, instruction, wr_enable, start);


endmodule