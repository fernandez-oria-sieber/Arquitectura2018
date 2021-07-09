`timescale 1ns / 1ps

module MEM_Testbench(

    );
    
    
 reg 		MEM_inALUZero, clk, rst; 	   
 reg [2:0]  MEM_inMEM;       
 reg [1:0]  MEM_inWB;        
 reg [2:0]  MEM_inLoadStoreType;    
 reg [4:0]  MEM_inFRWrReg; 
 reg [31:0] MEM_inALUResult;
 reg [31:0] MEM_inRegB;        

 // Stage Memory/WriteBack latch
 wire         MEM_osPC;           //MEM:osPC -> IF:inPCSel
 wire [1:0]    MEM_outWB;           //MEM:outWB -> WB:isWB
 wire [4:0]    MEM_outFRWrReg;   //MEM:outFRWrReg -> WB:inFRWrReg
 wire [31:0] MEM_outMem;       //MEM:outMem -> WB:inFRWrData
 wire [31:0] MEM_outALUResult; //MEM:outALUResult -> WB:inALUResult

    
    Memory MEM( // STAGE 4
 //Clock and Reset Signals
 .clk(clk),
 .rst(rst),
 
 //Input Signals
 .isALUZero(MEM_inALUZero),
 .isMemRead(MEM_inMEM[2]),
 .isMemWrite(MEM_inMEM[1]),
 .isBranch(MEM_inMEM[0]),
 .inWB(MEM_inWB),
 .isLoadStoreType(MEM_inLoadStoreType),
 .inFRWrReg(MEM_inFRWrReg),
 .inALUResult(MEM_inALUResult),
 .inRtReg(MEM_inRegB),
 
 //Output Signals
 .osPC(MEM_osPC),
 .outWB(MEM_outWB),
 .outFRWrReg(MEM_outFRWrReg), // 4:0
 .outMem(MEM_outMem),
 .outALUResult(MEM_outALUResult)
 );

    
    initial begin
    // PARTE 1 Cada ciclo de clock aumenta el PC y entrega la instruccion.
      clk         =   1'b0;
      rst         =   1'b1;     
      MEM_inALUZero = 1'b0;
      MEM_inMEM = 3'b0; // MemRd, MemWr, Branch
      MEM_inWB = 2'b0;
      MEM_inLoadStoreType = 3'b0;
      MEM_inFRWrReg = 5'b0;
      MEM_inALUResult = 32'b0;
      MEM_inRegB = 32'b0;
      // STORE   
      #20 rst =   1'b0;
      MEM_inMEM = 3'b010;
      MEM_inLoadStoreType = 3'b011; // STORE WORD
      MEM_inALUResult = 32'b0;
      MEM_inRegB = 32'd45;
      #100 
      MEM_inALUResult = 32'd1;
      MEM_inLoadStoreType = 3'b000; // STORE BYTE
      MEM_inRegB = 32'd85220; // byte = 1110 0100 = 228
      #100
      MEM_inALUResult = 32'd2;
      MEM_inLoadStoreType = 3'b001; // STORE HALF WORD
      MEM_inRegB = 32'd85220; // half word = 0100 1100 1110 0100 = 19684
      
      
      
      
         
    end
    
    
 always #5 clk=~clk;  // Genero los ciclos de reloj
    
endmodule