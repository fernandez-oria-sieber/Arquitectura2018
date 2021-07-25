`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2021 11:41:04 AM
// Design Name: 
// Module Name: UART
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


module UART #(parameter SIZE = 32, NREG_RX=4, NREG_TX=11, DATA_BUFFER = 1408)(
        input clk,
        input rst,
        input rx,
        input [DATA_BUFFER-1:0] values,
        output tx,
        output start,
        output stop,
        output mode,
        output wr_enable,
        output [SIZE-1:0] instruction

    );
    
    reg rx_done_tick, s_tick, tx_start, tx_done_tick;
    
    br_generator br_g (clk, s_tick);
    rx_module #(SIZE,NREG_RX) rx_mod (clk, rst, rx, s_tick, rx_done_tick, instruction);
    rx_interface #(SIZE) int_rx (clk, rst, rx_done_tick, instruction, mode, wr_enable, start);
    tx_interface int_tx(clk, rst, start, tx_done_tick, mode, stop, tx_start);
    tx_module #(DATA_BUFFER, NREG_TX) tx_mod(clk, rst, tx_start, s_tick, values, tx_done_tick, tx);
    
endmodule
