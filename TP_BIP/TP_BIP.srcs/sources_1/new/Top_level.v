`timescale 1ns / 1ps

module Top_level(input rx,
                 clk,
                 reset,
                 output tx);
    
    wire BIP_enable, finish_program, WrRAM, RdRAM, clk2, locked;
    wire[10:0] PC, Addr;
    wire[15:0] Program_Data, In_Data, Out_Data;
    wire[31:0] out_Acc_Counter;
    
    clk_wiz_0 inst
    (
    // Clock out ports
    .clk_out1(clk2),
    // Status and control signals
    .reset(reset),
    .locked(locked),
    // Clock in ports
    .clk_in1(clk)
    );
    
    UART uart(rx, clk2, reset, finish_program, out_Acc_Counter, tx, BIP_enable);
    Data_memory #(.INIT_FILE("/home/vlad/Documents/Arquitectura2018/datos.txt")) Data_memory(.Wr(WrRAM),.Rd(RdRAM),.clk(clk2),.ena(BIP_enable), .Addr(Addr), .In_Data(In_Data), .Out_Data(Out_Data));
    Program_memory #(.INIT_FILE("/home/vlad/Documents/Arquitectura2018/instrucciones.txt")) Program_memory (0, clk2, BIP_enable, PC, 0, Program_Data);
    CPU bip(BIP_enable, clk2, reset, Program_Data, Out_Data, In_Data, PC, WrRAM, RdRAM, finish_program);
    
    assign out_Acc_Counter[31:27] = 0;
    assign out_Acc_Counter[26:16] = PC;
    assign out_Acc_Counter[15:0]  = In_Data;
    assign Addr                   = Program_Data[10:0];
    
endmodule
