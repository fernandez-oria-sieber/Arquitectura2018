`timescale 1ns / 1ps

module Top_level#(parameter SIZE = 32,
                            DATA_BUFFER = 1814)
    (
        input rx, clk, rst,
        output tx
    );
    
	wire [SIZE-1:0] instruction;
	wire [10:0] IMEM_addr;
	wire [DATA_BUFFER-1:0] values;
	wire wr_enable, start, stop, finish;
	wire tx_start, rd;
  
    UART uart(clk, rst, rx, finish, values, tx, start, wr_enable, IMEM_addr, instruction);
    MIPS int_mips(clk, rst, wr_enable, start, IMEM_addr, instruction, finish, values);


endmodule