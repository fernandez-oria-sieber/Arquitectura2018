`timescale 1ns / 1ps

module ID_Testbench(

    );
    
 // INPUTS
 reg    clk, rst, WB_osFRWr,EX_inMEM_read; 
 reg [4:0]    WB_outFRWrReg, EX_inLD_rt;
 reg [31:0]    ID_inPC, ID_inInstruction, WB_outFRWrData;
// OUTPUT
 wire   ID_out_isPCWrite, ID_out_isWrite_IF_ID;
 wire [1:0]   ID_outWB;
 wire [2:0]   ID_outMEM, ID_outLoadStoreType;
 wire [4:0]   ID_outLD_rt, ID_outRT_rd, ID_outFUnit_rs;
 wire [5:0]   ID_outEXE;
 wire [31:0]  ID_outPC, ID_outRegA, ID_outRegB, ID_outInstruction_ls;


    
InstructionDecode ID( // STAGE 2
     //Clock and Reset Signals
     .clk(clk),
     .rst(rst),
     
     //Input Signals
     .isFRWr(WB_osFRWr),
     .isEX_MemRead(EX_inMEM_read),
     .inFRWrAddr(WB_outFRWrReg),
     .inEX_Rt(EX_inLD_rt),
     .inPC(ID_inPC),
     .inInstruction(ID_inInstruction),
     .inFRWrData(WB_outFRWrData),
     
     //Output Signals
     .out_isPCWrite(ID_out_isPCWrite),
     .out_isWrite_IF_ID(ID_out_isWrite_IF_ID),
     .outWB(ID_outWB),
     .outMEM(ID_outMEM),
     .outEXE(ID_outEXE),
     .outLoadStoreType(ID_outLoadStoreType),
     .outLD_rt(ID_outLD_rt),
     .outRT_rd(ID_outRT_rd),
     .outFUnit_rs(ID_outFUnit_rs),
     .outPC(ID_outPC),
     .outRegA(ID_outRegA),
     .outRegB(ID_outRegB),
     .outInstruction_ls(ID_outInstruction_ls)
     );

    
    initial begin
    // PARTE 1 Cada ciclo de clock aumenta el PC y entrega la instruccion.
      clk         =   1'b0;
      rst         =   1'b1;
      WB_osFRWr = 1'b0;
      EX_inMEM_read = 1'b0; 
      WB_outFRWrReg = 5'b0;
      EX_inLD_rt = 5'b0;
      ID_inPC = 32'b0;    
      WB_outFRWrData = 32'b0;
      ID_inInstruction = 32'h00000000; 
      #20 rst         =   1'b0;    
      ID_inInstruction = 32'h3C020003; 
            
    end
    
    
 always #5 clk=~clk;  // Genero los ciclos de reloj
    
endmodule