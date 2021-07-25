`timescale 1ns / 1ps

module rx_interface
	#(
        parameter DBIT = 32    // # data bits
    )
	(
	   input wire clk, reset,rx_done_tick,
	   input wire [DBIT-1:0] instruction,
	   output reg start,   // Es 1 cuando llega una HALT
	   output reg wr_enable,   // En 1 para escribir cada instruccion en memoria
	   output reg [1:0] mode // Puede ser 1:MODO CONTINUO ó 2: MODO PASO A PASO
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
	always @(posedge clk , posedge reset)
	begin
        if (reset) 
            begin
                state_reg <= init;
            end
        else
            begin
                case (state_reg)
                    init:
                    begin
                        wr_enable = 1'b0;
                        state_reg = idle;
                    end
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
