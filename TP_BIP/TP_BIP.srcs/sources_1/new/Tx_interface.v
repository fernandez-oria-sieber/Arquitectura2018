`timescale 1ns / 1ps

module Tx_interface
	#(
	   parameter DBIT = 8			// # data bits
    )
	(
	   input wire clk, reset, finish_program, tx_done_tick,
	   input wire [31:0] out_Acc_Count,
	   output wire [7:0] din,
	   output wire tx_start
	);
	
	// symbolic state declaration
	localparam [2:0]
	idle_tx = 3'b010,
	operate = 3'b011,
	transmit = 3'b100,
	transmit_reset = 3'b101,
	transmit_init = 3'b110;
	
	// signal declaration
	reg [2:0] state_reg;
	//reg [31:0] aux_Acc_Count;//
	reg [15:0] aux, aux_Count; // solo usa 6 bits, da un warning sarray_charle ponemos 8 bits
	reg z_flag, acc_sended, tx_start_aux, first;
	reg [13:0] div; //puede ser integer también, pero así no da warning;
	reg [7:0] out, i;
	reg [7:0] array_char[17:0];
	
	// body
	// FSMD next-state logic
	initial
	   begin
	    array_char[0] = 0;
	    array_char[1] = 0;
        array_char[2] = "T";
        array_char[3] = "P";
        array_char[4] = " ";
        array_char[5] = "3";
        array_char[6] = ":";
        array_char[7] = 10;
        array_char[8] = 13;
        array_char[9] = "A";
        array_char[10] = ":";
        array_char[11] = " ";
        array_char[12] = 10;
        array_char[13] = 13;
        array_char[14] = "C";
        array_char[15] = ":";
        array_char[16] = " ";
        array_char[17] = " ";
	   end
	always @(posedge clk , posedge reset)
	begin
        if (reset)
            begin
                state_reg <= transmit_init;
                first = 1;
                out <= 0;
                aux <= 0;
                aux_Count <= -1; // -1 para que use todos los bits, VER
                acc_sended <= 0;
                z_flag <= 0;
                tx_start_aux <= 0;
                i<= 2;
                div <= -1; // -1 para que use todos los bits, VER
            end
        else
            begin
                case (state_reg)
                    transmit_init :
                       begin
                          out = array_char[i];
                          tx_start_aux = 1'b1; 
                          if (tx_done_tick) 
                            begin
                                tx_start_aux = 1'b0;
                                i = i+1;
                                if (i == 9) state_reg = idle_tx;
                            end
                        end
                    transmit_reset :
                        begin
                            tx_start_aux = 1'b1;
                            if (tx_done_tick)
                              begin
                                tx_start_aux = 1'b0;
                                i = i+1;
                                if (out==" ")
                                    begin
                                      if (!acc_sended)
                                        begin
                                            //out = array_char[i]; //10; // salto de linea
                                            aux_Count = out_Acc_Count[31:16];
                                            aux = out_Acc_Count[15:0];
                                            div = 10000;
                                        end
                                    out = aux / div;    // divido para obtener el digito a transmitir (ej, 123/100 - obtengo 1 en it. 1)
                                    z_flag <= 0;
                                    state_reg <= operate;  
                                    end
                                else 
                                    begin
                                        out = array_char[i];
                                    end
                                end
                         end // transmit_reset
                  idle_tx:
                    if(finish_program && first)  // Es 1 si termino el programa, else 0
                        begin
                            state_reg = transmit_reset;
                            first = 0;
                            acc_sended <= 0;
                            i = 9;
                            out = array_char[i];  
                        end
                  operate:
                    begin
                        div = div / 10;     // Divido por 10 para en la sig iteración obtener el sig digito (100/10=10)
                        if(out || z_flag)   // Entro si out != 0 ó zflag = 1 si ya transmiti un valor y tengo que mandar un 0
                            begin
                                state_reg = transmit;
                                z_flag= 1'b1;
                                out = out + 48; // Sumo 48 al digito enviado para transmitir en ascii
                            end
                        else out = aux / div;    // divido para obtener el digito a transmitir (ej, 123/100 - obtengo 1 en it. 1)
                    end
                  transmit :
                      begin
                         tx_start_aux = 1'b1;
                         if (tx_done_tick)
                           begin
                               state_reg = operate ;
                               if (div == 0) // Resetamos todos los parametros
                                   begin
                                       z_flag = 1'b0;
                                       div = 10000;
                                       state_reg = transmit_reset;
                                       if (acc_sended==1) state_reg = idle_tx;
                                       acc_sended = 1;
                                       aux = aux_Count;
                                       out = array_char[i]; // salto de linea
                                   end // if (div == 0)
                               else 
                                begin
                                    aux = aux % (div*10);
                                    out = aux / div;    // divido para obtener el digito a transmitir (ej, 123/100 - obtengo 1 en it. 1)             
                                end
                                tx_start_aux = 1'b0;
                           end// if (tx_done_tick)
                       end  // transmit
		        endcase //end case (state_reg)
		    end //end else
	end //end always

	// output
	assign din = out;
    assign tx_start = tx_start_aux;
	
endmodule
