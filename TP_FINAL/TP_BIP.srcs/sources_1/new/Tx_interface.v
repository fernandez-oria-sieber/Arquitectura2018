`timescale 1ns / 1ps

module Tx_interface
	#(
	   parameter DBIT = 8			// # data bits
    )
	(
	   input wire clk, reset, finish_program, tx_done_tick,
	   input wire signed [31:0] out_Acc_Count,
	   output wire [7:0] din,
	   output wire tx_start
	);
	
	// symbolic state declaration
	localparam [2:0]
	idle_tx = 3'b010,
	operate = 3'b011,
	transmit = 3'b100,
	transmit_reset = 3'b101,
	transmit_init = 3'b110,
	transmit_on = 3'b111;
	
	// signal declaration
	reg [2:0] state_reg, state_prev;
	//reg [31:0] aux_Acc_Count;//
	reg signed [15:0] aux, aux2, aux_Count; // solo usa 6 bits, da un warning sarray_charle ponemos 8 bits
	reg z_flag, acc_sended, tx_start_aux, first, sending;
    reg signed [15:0] div[4:0]; 
	reg signed [7:0] out, i, j;
	reg [7:0] array_char[15:0];
	
	
	// body
	// FSMD next-state logic
	initial
	   begin
	    array_char[0] ="T";
        array_char[1] ="P";
        array_char[2] =" ";
        array_char[3] ="3";
        array_char[4] =":";
        array_char[5] =8'd10;
        array_char[6] =8'd13;
        array_char[7] ="A";
        array_char[8] =":";
        array_char[9] =" ";
        array_char[10] =" ";
        array_char[11] =8'd10;
        array_char[12] =8'd13;
        array_char[13] ="C";
        array_char[14] =":";
        array_char[15] = " ";
        div[0]=14'd10000;
        div[1]=14'd1000;
        div[2]=14'd100;
        div[3]=14'd10;
        div[4]=14'd1;
	   end
	always @(posedge clk , posedge reset)
	begin
        if (reset)
            begin
                state_reg <= transmit_init;
                state_prev <= 3'b000;
                first = 1;
                out <= 0;
                aux <= 0;
                aux2 <= 0;
                aux_Count <= -1; // -1 para que use todos los bits, VER
                acc_sended <= 0;
                z_flag <= 0;
                tx_start_aux <= 0;
                i<= 0;
                j<= 0;
                //div <= -1; // -1 para que use todos los bits, VER
                sending<= 0;
            end
        else
            begin
                case (state_reg)
                    transmit_init :
                       begin
                          if (i == 7) state_reg = idle_tx;
                          else
                            begin
                              out = array_char[i];
                              state_prev = state_reg;
                              state_reg = transmit_on;
                              i = i+1;
                              tx_start_aux = 1'b1;
                            end
                        end
                    transmit_on:
                        begin
                            tx_start_aux = 1'b0;
                            if (tx_done_tick) 
                                begin
                                    state_reg = state_prev;
                                    out= 0;
                                end
                        end
                    transmit_reset :
                        begin
                            if (i == 10 || i == 16)
                                begin
                                  if (!acc_sended)
                                    begin
                                        //out = array_char[i]; //10; // salto de linea
                                        aux_Count = out_Acc_Count[31:16];
                                        aux = out_Acc_Count[15:0];
                                        //div = 10000;
                                    end
                                //out = aux / div;    // divido para obtener el digito a transmitir (ej, 123/100 - obtengo 1 en it. 1)
                                  out <= 0;
                                  z_flag <= 0;
                                  state_reg <= operate;  
                                  i = i+1;
                                end
                            else
                                begin
                                    out = array_char[i];
                                    tx_start_aux = 1'b1;
                                    state_prev = state_reg;
                                    state_reg = transmit_on;
                                    i= i+1;
                                end
                         end // transmit_reset
                  idle_tx:
                    if(finish_program && first)  // Es 1 si termino el programa, else 0
                        begin
                            state_reg = transmit_reset;
                            first = 0;
                        end
                  operate:
                    begin
                        if (j<5) aux2= aux - div[j];
                        if (j == 5) // Resetamos todos los parametros
                           begin
                               z_flag = 1'b0;
                               j= 0;
                               if (acc_sended==1) state_reg = idle_tx;
                               else state_reg = transmit_reset;
                               acc_sended = 1;
                               aux = aux_Count;
//                                       out = array_char[i]; // salto de linea
                           end // if (div == 0)
                        else if (aux2>=0)
                            begin
                                aux = aux - div[j];
                                out = out + 1;
                            end
                        else if ((out>0) || z_flag) 
                            begin
                                state_prev = state_reg;
                                state_reg = transmit_on;
                                j = j+1;
                                out= out+48;
                                tx_start_aux = 1'b1;
                                z_flag = 1'b1;
                            end
                        else j = j+1;
                    end
		        endcase //end case (state_reg)
		    end //end else
	end //end always

	// output
	assign din = out;
    assign tx_start = tx_start_aux;
	
endmodule
