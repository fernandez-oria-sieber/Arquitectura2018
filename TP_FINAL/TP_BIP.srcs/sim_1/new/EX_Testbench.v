`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2021 08:18:44 AM
// Design Name: 
// Module Name: EX_Testbench
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


module EX_Testbench(

    );
    
    reg         clk, rst, MEM_regWrite, WB_osFRWr;
    reg [1:0]    EX_inWB;            
    reg [2:0]    EX_inMEM;           
    reg [5:0]    EX_inEXE;          
    reg [2:0]  EX_inLoadStoreType;  
    reg [4:0]    EX_inLD_rt;        
    reg [4:0]    EX_inRT_rd;        
    reg [4:0]  EX_inFUnit_rs;       
    reg [31:0]    EX_inPC;          
    reg [31:0]    EX_inRegA;        
    reg [31:0]    EX_inRegB;        
    reg [31:0]    EX_inInstruction_ls;
    
    wire         EX_outALUZero;          //EX:outALUZero -> MEM:isALUZero
    wire [2:0]    EX_outMEM;              //EX:outMEM -> MEM:isMemWrite, isMemRead, isBranch
    wire [1:0]    EX_outWB;              //EX:outWB -> MEM:inWB
    wire [2:0]  EX_outLoadStoreType; //EX:outLoadStoreType -> MEM:isLoadStoreType
    wire [4:0]    EX_outFRWrReg;       //EX:outFRWrReg -> MEM:inFRWrReg
    wire [31:0]    EX_outPCJump;          //EX:outPCJump -> MEM:inPCJump
    wire [31:0]    EX_outALUResult;     //EX:outALUResult -> MEM:inALUResult
    wire [31:0] EX_outRegB;          //EX:outRegB -> MEM:inRegB
    
    reg [4:0] MEM_inFRWrReg, WB_outFRWrReg;
    reg [31:0] MEM_inALUResult, WB_outFRWrData;
    
        // Instancia del modulo Execute
    Execute EX( // STAGE 3
    //Clock and Reset Signals
    .clk(clk),
    .rst(rst),
    
    //Input Signals
    .inMEM_RegWrite(MEM_regWrite),
    .inWB_RegWrite(WB_osFRWr),
    .inWB(EX_inWB),
    .inMEM(EX_inMEM),
    .inEXE(EX_inEXE),
    .isLoadStoreType(EX_inLoadStoreType),
    .inLD_rt(EX_inLD_rt),
    .inRT_rd(EX_inRT_rd),
    .inFUnit_rs(EX_inFUnit_rs),
    .inMEM_rd(MEM_inFRWrReg),
    .inWB_rd(WB_outFRWrReg),
    .inPC(EX_inPC),
    .inRegA(EX_inRegA),
    .inRegB(EX_inRegB),
    .inInstruction_ls(EX_inInstruction_ls),
    .inMEM_ALUResult(MEM_inALUResult),
    .inWB_FRWrData(WB_outFRWrData),
    //Output Signals
    .outALUZero(EX_outALUZero),
    .outWB(EX_outWB),
    .outMEM(EX_outMEM),
    .outLoadStoreType(EX_outLoadStoreType),
    .outFRWrReg(EX_outFRWrReg),
    .outPCJump(EX_outPCJump),
    .outALUResult(EX_outALUResult),
    .outRegB(EX_outRegB)
    );
    
    initial begin
    // PARTE 1 Cada ciclo de clock aumenta el PC y entrega la instruccion.
      clk         =   1'b0;
      rst         =   1'b1; 
      MEM_regWrite = 1'b0; 
      WB_osFRWr = 1'b0;
      EX_inWB = 2'b0;            
      EX_inMEM = 3'b0;           
      EX_inEXE = 6'b0;          
      EX_inLoadStoreType = 3'b0;  
      EX_inLD_rt = 5'b0;        
      EX_inRT_rd = 5'b0;        
      EX_inFUnit_rs = 5'b0;       
      EX_inPC = 5'b0;
      MEM_inFRWrReg = 5'b0;
      WB_outFRWrReg = 5'b0;          
      EX_inRegA = 32'b0;        
      EX_inRegB = 32'b0;        
      EX_inInstruction_ls = 32'b0;
      MEM_inALUResult = 32'b0;
      WB_outFRWrData = 32'b0;
      // ADDU 7, 0, 4   10+5=15   
      #20 rst =   1'b0;     
      EX_inEXE = 6'b110000;
      EX_inRegA = 32'h0000000A;
      EX_inRegB = 32'h00000005;
      MEM_inFRWrReg = 5'b00010;
      MEM_regWrite = 1'b1;
      WB_outFRWrReg = 5'b00011;
      WB_osFRWr = 1'b1;
      EX_inFUnit_rs = 5'b00000;
      EX_inLD_rt = 5'b00100;
      EX_inRT_rd = 5'b00111;
      #20 // rd == rdMEM = 7
      MEM_inALUResult = 32'h000000AA;
      MEM_inFRWrReg = 5'b00100;
      
      EX_inInstruction_ls = 32'h00000021;
            
    end
    
    
 always #5 clk=~clk;  // Genero los ciclos de reloj  
    
endmodule
