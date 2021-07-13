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


module UART #(parameter SIZE = 32)(
        input clk,
        input rst,
        input rx,
        output tx,
        output start,
        output mode,
        output wr_enable,
        output [SIZE-1:0] instruction

    );
    
    reg rx_done_tick, s_tick;
    
    br_generator br_g (clk, s_tick);
    rx_module #(SIZE) rx_mod (clk, rst, rx, s_tick, rx_done_tick, instruction);
    //rx_interface #(SIZE) int_rx (clk, rst,rx_done_tick, instruction, mode, wr_enable, start);
    //tx_interface int_tx(clk, rst);
    //tx_module tx_mod(clk, rst, tx_start, s_tick, din, tx_done_tick, tx);
    
endmodule
