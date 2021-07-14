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
        input tx_done_tick,
        input [1:0] mode,
        output stop,
        output tx_start      
    );
	
    // symbolic state declaration
    localparam [1:0]
        init = 2'b00,
        idle = 2'b01,
        receive = 2'b10;
    
    // signal declaration
    reg [1:0] state_reg;
    
    // body
    // FSMD next-state logic
    always @(posedge clk , posedge rst)
    begin
        if (rst) 
            begin
                state_reg <= init;
            end
        else
            begin
                case (state_reg)
                    init:
                        wr_enable = 1'b0;
                    idle :
                      if (rx_done_tick) state_reg = receive;
                    receive :
                      begin
                        case (instruction)
                            0:                        // HALT
                                begin 
                                    start = 1'b1;
                                    wr_enable = 1'b1;
                                end
                            1:                        // MODO CONTINUO
                                 begin
                                    mode = 2'b01;
                                end
                            2:                        // MODO PASO A PASO 
                                begin                  
                                    mode = 2'b10;
                                end
                            default:
                                begin
                                    wr_enable = 1'b1;
                                end
                        endcase
                        state_reg <= init;
                      end 
                endcase //end case (state_reg)
            end //end else
    end //end always

endmodule
