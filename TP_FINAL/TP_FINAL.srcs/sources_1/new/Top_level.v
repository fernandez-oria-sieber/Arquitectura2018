`timescale 1ns / 1ps

module Top_level#(parameter size = 32)
    (
        input rx, clk, rst,
        output tx, osciloscopio
    );

  wire signed[size-1:0] a, b, d_in; 
	wire [size-1:0] instruction, leds;
	wire [5:0] op;
	wire rx_empty, wr, s_tick, rx_done_tick, tx_done_tick;
	wire tx_start, rd;//, osciloscopio;
	assign osciloscopio = rx;
  
  br_generator br_g (clk, s_tick);
  rx_module #(size, 4, 16) rx_mod (clk, rst, rx, s_tick, rx_done_tick, instruction);
  rx_interface #(size) int_rx (clk, reset,rx_done_tick, rd, instruction, a, b, op, rx_empty);
  Rx_interface #(.DBIT(size)) int_rx (clk, reset,rx_done_tick, instruction, BIP_enable);
  MIPS int_mips(clk, rst, instruction, wr_enable, start)


endmodule
"""
 instanciar rx module que recibe los bits y un baudrate generator. 
 hacer una interfax RX para MIPS/Memory
 e instaciar MIPS
"""