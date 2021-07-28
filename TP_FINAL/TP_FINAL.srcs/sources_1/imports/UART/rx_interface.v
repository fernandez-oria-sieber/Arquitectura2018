`timescale 1ns / 1ps

module rx_interface
	#(
        parameter DBIT = 32    // # data bits
    )
	(
	   input wire clk, reset,rx_done_tick,
	   input wire [DBIT-1:0] instruction,
	   output start,   // Es 1 cuando llega una HALT
	   output reg wr_enable,   // En 1 para escribir cada instruccion en memoria
	   output reg mode, // Puede ser 0:MODO CONTINUO ó 1: MODO PASO A PASO
	   output [10:0] out_addr// Direccion de memoria donde escribimos la instruccion
	);
	
	// symbolic state declaration
	localparam [1:0]
	    init = 2'b00,
        idle = 2'b01,
        receive = 2'b10,
        write_addr = 2'b11;
	
	// signal declaration
	reg aux_start;
	reg [1:0] state_reg;
	reg [10:0] addr;
	
	
	
	// body
	// FSMD next-state logic
	always @(negedge clk , negedge reset)
	begin
        if (reset) 
            begin
                state_reg <= init;
                addr <= 11'b0;
                aux_start <= 1'b0;
                wr_enable <= 1'b0;
                mode <= 1'b0;
            end
        else
            begin
                case (state_reg)
                    init:
                    begin
                        wr_enable <= 1'b0;
                        state_reg <= idle;
                    end
                    idle :
                      if (rx_done_tick) state_reg <= receive;
                    receive :
                      begin
                        state_reg <= init;
                        case (instruction)
                            0:                        // HALT
                                begin 
                                    aux_start <= 1'b1;
                                end
                            1:                        // MODO PASO A PASO
                                 begin
                                    mode <= 1'b1;
                                end
                            2:                        // MODO CONTINUO
                                begin                  
                                    mode <= 1'b0;
                                end
                            default:
                                begin
                                    wr_enable <= 1'b1;
                                    state_reg <= write_addr;
                                end
                        endcase
                      end
                    write_addr:
                    begin
                      addr <= addr + 1'b1;
                      state_reg <= init;
                    end
		        endcase //end case (state_reg)
		    end //end else
	end //end always
	
	assign out_addr = addr;
	assign start = aux_start;
	
endmodule
