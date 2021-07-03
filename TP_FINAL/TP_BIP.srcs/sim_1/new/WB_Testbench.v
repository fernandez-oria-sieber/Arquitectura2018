`timescale 1ns / 1ps

module WB_Testbench(

    );
    
    
 reg    clk, flagJump, reset, mem_enable, pc_enable;  
 reg    [31:0] addrJump;
 wire   [31:0] o_instruction, o_pc; 
    
    
 InstructionFetch
 instfetch(
    .clk(clk),
    .reset(reset),
    .Ex_flagJump(flagJump),
    .i_mem_enable(mem_enable),
    .PC_enable(pc_enable),
    .Ex_AddrJump(addrJump),
    .Out_Instruction(o_instruction),
    .Out_PC(o_pc) 
 );

    
    initial begin
    // PARTE 1 Cada ciclo de clock aumenta el PC y entrega la instruccion.
      clk           =   1'b0;
      reset         =   1'b1;
      #20  
      reset         =   1'b0;
      flagJump      =   1'b0;  // No es una instruccion de salto
      mem_enable    =   1'b1;
      pc_enable     =   1'b1;  // Va a cambiar con cada ciclo de clock. Si es cero es por que viene un stall.
      addrJump      =   32'b0; // No hay direccion de salto asi que no importa el valor.

    // PARTE 2 Viene instruccion de Salto.
      #50
      flagJump      =   1'b1;
      addrJump      =   32'b1010;
      #20
      flagJump      =   1'b0;
      #30
      flagJump      =   1'b1;
      addrJump      =   32'b10;
      #20
      flagJump      =   1'b0;
      
    // PARTE 3 Flag de stall del hazzard unit
      #50
      pc_enable     =   1'b0; // viene el stall
      addrJump      =   32'b0;
      // Genero Burbuja
      #50
      // Retoma 
      pc_enable     =   1'b1;
      
      
      
    end
    
    
 always #5 clk=~clk;  // Genero los ciclos de reloj
    
endmodule