`timescale 1ns / 1ps

module Rx_interface
	#(
	   parameter DBIT = 8			// # data bits
    )
	(
	   input wire clk, reset, rx_done_tick,
	   input wire [7:0] dout,
	   output wire BIP_enable
	);
	
	// symbolic state declaration
	localparam
	idle_rx = 1'b0,
	receive = 1'b1;
	
	// signal declaration
	reg state_reg;
	reg [15:0] aux, aux_Count; // solo usa 6 bits, da un warning si le ponemos 8 bits
	reg is_s, aux_BIP;
	
	// body
	// FSMD next-state logic
	always @(posedge clk , posedge reset)
	begin
        if (reset)
            begin
                state_reg <= idle_rx;
                is_s <= 0;;
                aux_BIP <= 0;
            end
        else
            begin
                case (state_reg)
                    idle_rx :
                        if (rx_done_tick) state_reg = receive;
                    receive :
                      begin
                        state_reg = idle_rx;
                        case (dout)
                            115:    is_s <= 1; // 115: 's' en ascii (second operand)
                            13:            // 13: 'Enter' en ascii (operation)  
                                begin
                                    if (is_s) 
                                        begin
                                            aux_BIP <= 1;
                                            is_s <= 0;
                                        end
                                end
                            default: is_s <= 0; // Seteo en 0 el is_s
                        endcase //endcase (dout)
                      end //end recive
		        endcase //end case (state_reg)
		    end //end else
	end //end always

	// output
	assign BIP_enable = aux_BIP;
	
endmodule
