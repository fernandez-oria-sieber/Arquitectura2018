`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2021 09:57:26 AM
// Design Name: 
// Module Name: tx_interface
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


module tx_interface(
        input clk,
        input rst,
        input start, 
        input finish,
        input tx_done_tick,
        input [1:0] mode,
        output reg stop,
        output reg tx_start      
    );
	
    // symbolic state declaration
    localparam [1:0]
        idle = 2'b01,
        stop_pipe = 2'b10,
        send = 2'b11;
        
    
    // signal declaration
    reg [1:0] state_reg;
    
    // body
    // FSMD next-state logic
    always @(posedge clk , posedge rst)
    begin
        if (rst) 
            begin
                state_reg <= idle;
                stop = 1'b0;
                tx_start = 1'b0;
            end
        else
            begin
                case (state_reg) // mode = [0,1] STEP BY STEP finish = 1 HALT INSTRUCTION
                    idle:
                        if (start)
                            if (mode[0] || finish) state_reg = stop_pipe;
                    stop_pipe:
                    begin
                        stop = 1'b1;
                        state_reg = send;
                        tx_start = 1'b1;
                    end
                    send:
                        if (tx_done_tick)
                        begin
                            state_reg = idle;
                            stop = 1'b0;
                            tx_start = 1'b0;
                        end
                endcase //end case (state_reg)
            end //end else
    end //end always

endmodule
