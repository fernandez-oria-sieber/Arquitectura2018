`timescale 1ns / 1ps

module interface
	#(
	   parameter DBIT = 8			// # data bits
    )
	(
	   input wire clk, reset, rx_done_tick, rd, finish_program, tx_done_tick,
	   input wire [7:0] dout,
	   input wire [31:0] out_Acc_Count,
	   output wire [7:0] din,
	   output wire BIP_enable, tx_start
	);
	
	// symbolic state declaration
	localparam [2:0]
	idle_rx = 3'b000,
	receive = 3'b001,
	idle_tx = 3'b010,
	operate = 3'b011,
	transmit = 3'b100,
	transmit_reset = 3'b101,
	transmit_init = 3'b110;
	
	// signal declaration
	reg [2:0] state_reg;
	//reg [31:0] aux_Acc_Count;//
	reg [15:0] aux, aux_Count; // solo usa 6 bits, da un warning si le ponemos 8 bits
	reg is_s, aux_BIP, z_flag, acc_sended, tx_start_aux;
	reg [13:0] div; //puede ser integer también, pero así no da warning;
	reg [7:0] dig, out;
	reg [6:0] i;
	
	// body
	// FSMD next-state logic
	always @(posedge clk , posedge reset)
	begin
        if (reset)
            begin
                state_reg <= transmit_init;
                i = 1;
            end
        else
            begin
                case (state_reg)
                    transmit_init :
                       begin
                          case (i)
                              1: out = "T";
                              2: out = "P";
                              3: out = " ";
                              4: out = "3";
                              default: out = ":";    
                          endcase
                          tx_start_aux = 1'b1; 
                          if (tx_done_tick) 
                            begin
                                i = i+1;
                                if (out == ":") state_reg = transmit_reset;
                                tx_start_aux = 1'b0;
                            end
                        end
                    transmit_reset :
                       begin
//                         if (out != 13) out = 10; // salto de linea
//                         tx_start_aux = 1'b1; 
//                         if (tx_done_tick) 
//                           begin
//                               if (out == 10) 
//                                   begin
//                                       state_reg = transmit_reset;
//                                       out = 13; //retorno de carro
//                                   end // if (out == 13) 
//                               else 
//                                    begin
                        state_reg <= idle_rx;
                        //aux_Acc_Count <= 0;  aux lo inicializamos en 0
                        aux <= 0;
                        aux_Count <= 0;
                        is_s <= 0;
                        acc_sended <= 0;
                        out <= 0;
                        z_flag <= 0;
                        dig <= 0;
                        aux_BIP <= 0;
//                                    end //else
//                                tx_start_aux = 1'b0;
//                           end //if(tx_done_tick)
                       end // transmit_reset
                    idle_rx :
                      if (rx_done_tick) state_reg = receive;
                    receive :
                      begin
                        state_reg = idle_rx;
                        case (dout)
                            115:           // 115: 's' en ascii (second operand)
                                is_s <= 1;
                            13:            // 13: 'Enter' en ascii (operation)  
                                begin
                                    if (is_s) 
                                        begin
                                            aux_BIP <= 1;
                                            is_s <= 0;
                                            state_reg = idle_tx;
                                        end
                                end
                            default: is_s <= 0; // Seteo en 0 el is_s
                        endcase //endcase (dout)
                         //if (dout!=13) state_reg = idle_rx; // si no siempre vuelve a idle_rx y nunca va a idle_tx
                      end //end recive
                  idle_tx:
                    if(finish_program)  // Es 1 si termino el programa, else 0
                        begin
                            state_reg = transmit;
                            out = 10; // salto de linea
                            aux_Count = out_Acc_Count[31:16];
                            aux = out_Acc_Count[15:0];
                            aux_BIP <= 0;
                            div = 10000;
                        end
                  operate:
                    begin
                        dig = aux / div;    // divido para obtener el digito a transmitir (ej, 123/100 - obtengo 1 en it. 1)
                        div = div / 10;     // Divido por 10 para en la sig iteración obtener el sig digito (100/10=10)
                        if(dig || z_flag) 
                            begin
                                state_reg = transmit; // Entro si dig != 0 ó zflag = 1 si ya transmiti un valor y tengo que mandar un 0
                                z_flag= 1'b1;
                                out = dig + 48; // Sumo 48 al digito enviado para transmitir en ascii
                            end
                    end
                  transmit :
                      begin
                         tx_start_aux = 1'b1;
                         if (tx_done_tick)
                           begin
                               tx_start_aux = 1'b0;
                               //if (out == 65 || out == 67) out = 58; // : en ascii
                               //else if (out == 58) out = 10; // salto de linea
                               if (out == 10) out = 13; // retorno de carro
                               else if (out == 13) //state_reg = operate;
                                begin
                                    if (!acc_sended) out = "A";//65 en ASCII
                                    else out="C"; // 67 en ASCII
                                end
                               else if (out == 65 || out == 67) out = ":"; // : en ascii
                               else if (out == ":") out = " "; // : en ascii
                               else if (out == " ") state_reg = operate; // : en ascii
                               else
                                begin
                                   state_reg = operate ;
                                   //tx_start_aux = 1'b0;
                                   if (div == 0) // Resetamos todos los parametros
                                       begin
                                           z_flag = 1'b0;
                                           div = 10000;
                                           state_reg = transmit;
                                           if (acc_sended==1) state_reg = transmit_reset;
                                           acc_sended = 1;
                                           aux = aux_Count;
                                           out = 10; // salto de linea
                                       end // if (div == 0)
                                   else aux = aux % (div*10);
                                end // else
                           end// if (tx_done_tick)
                       end  // transmit
		        endcase //end case (state_reg)
		    end //end else
	end //end always

	// output
	assign BIP_enable = aux_BIP;
	assign din = out;
    assign tx_start = tx_start_aux;
	
endmodule
