`timescale 1ns / 1ps
module top_level(input clk,
                 input rst
                 );
    
    //// Wires
    // Stage Instruction Fetch
    wire [31:0]	IF_outInstruction;    //IF:outInstruction -> ID:inInstruction
    wire [31:0]	IF_outPC;             //IF:outPC -> ID:inPC
    
    // Stage Instruction Decode
    wire ID_out_isPCWrite;            //ID:out_isPCWrite -> IF:isPCWrite
    wire ID_out_isWrite_IF_ID;        //ID:out_isWrite_IF_ID -> IF/ID
    wire [1:0]	ID_outWB; 	          //ID:outWB -> EX:inWB
    wire [2:0]	ID_outMEM; 	          //ID:outMEM -> EX:inMEM
    wire [3:0]	ID_outEXE; 	          //ID:outEXE -> EX:inEXE
    wire [2:0]  ID_outLoadStoreType;  //ID:outLoadStoreType -> EX:isLoadStoreType
    wire [4:0]	ID_outLD_rt;          //ID:outLD_rt -> EX:inLD_rt
    wire [4:0]	ID_outRT_rd;          //ID:outRT_rd -> EX:inRT_rd
    wire [4:0]  ID_outFUnit_rs;       //ID:outFUnit_rs -> EX:inFUnit_rs
    wire [31:0]	ID_outPC;             //ID:outPC -> EX:inPC
    wire [31:0]	ID_outRegA; 	      //ID:outRegA -> EX:inRegA
    wire [31:0]	ID_outRegB; 	      //ID:outRegB -> EX:inRegB
    wire [31:0]	ID_outInstruction_ls; //ID:outInstruction_ls -> EX:inInstruction_ls
    
    // Stage Execute
    wire 		EX_outALUZero; 	     //EX:outALUZero -> MEM:isALUZero
    wire [2:0]	EX_outMEM; 		     //EX:outMEM -> MEM:isMemWrite, isMemRead, isBranch
    wire [1:0]	EX_outWB; 		     //EX:outWB -> MEM:inWB
    wire [2:0]  EX_outLoadStoreType; //EX:outLoadStoreType -> MEM:isLoadStoreType
    wire [4:0]	EX_outEX_Rt;         //EX:outEX_Rt -> ID: HazardUnit
    wire [4:0]	EX_outFRWrReg;       //EX:outFRWrReg -> MEM:inFRWrReg
    wire [31:0]	EX_outPCJump; 	     //EX:outPCJump -> MEM:inPCJump
    wire [31:0]	EX_outALUResult;     //EX:outALUResult -> MEM:inALUResult
    wire [31:0] EX_outRegB; 	     //EX:outRegB -> MEM:inRegB
    
    // Stage Memory
    wire 		MEM_osPC; 	      //MEM:osPC -> IF:inPCSel
    wire [1:0]	MEM_outWB; 		  //MEM:outWB -> WB:isWB
    wire [4:0]	MEM_outFRWrReg;   //MEM:outFRWrReg -> WB:inFRWrReg
    wire [31:0] MEM_outMem;       //MEM:outMem -> WB:inFRWrData
    wire [31:0] MEM_outALUResult; //MEM:outALUResult -> WB:inALUResult
    wire [31:0]	MEM_outPCJump; 	  //MEM:outPCJump -> IF:inPCJump
    
    // Stage Write Back
    wire 		WB_osFRWr;      // WB:osFRWr -> ID:isFRWr
    wire [4:0]	WB_outFRWrReg;  // WB:outFRWrReg -> ID:inFRWrAddr
    wire [31:0]	WB_outFRWrData; // WB:outFRWrData -> ID:inFRWrData
    
    
    //// Instancias
    // Instancia del modulo Instruction Fetch
    InstructionFetch (
    //Clock and Reset Signals
    .clk(clk),
    .reset(rst),
    
    //Input Signals
    .inPCSel(EX_MEM_osPC),
    .isPCWrite(MEM_outPCJump),
    .inPCJump(MEM_outPCJump),
    
    //Output Signals
    .outPC(IF_outPC),
    .outInstruction(IF_outInstruction)
    );
    
    
    // Instancia del modulo Instruction Decode
    InstructionDecode ID(
    //Clock and Reset Signals
    .clk(clk),
    .rst(rst),
    
    //Input Signals
    .inRegF_wr(WB_outRegF_wr),
    .inPC(IF_outPC),
    .inInstruction(IF_outInstruction),
    .inRegF_wreg(MEM_outRegF_wreg),
    .inRegF_wd(WB_outRegF_wd),
    
    //Output Signals
    .outWB(ID_outWB),
    .outMEM(ID_outMEM),
    .outEXE(ID_outEXE),
    .outPC(ID_outPC),
    .outRegA(ID_outRegA),
    .outRegB(ID_outRegB),
    .outInstruction_ls(ID_outInstruction_ls),
    .outLD_rt(ID_outLD_rt),
    .outRT_rd(ID_outRT_rd)
    );
    
    // Instancia del modulo Execute
    Execute EX(
    //Clock and Reset Signals
    .clk(clk),
    .rst(rst),
    
    //Input Signals
    .inWB(ID_outWB),
    .inMEM(ID_outMEM),
    .inEXE(ID_outEXE),
    .inPC(ID_outPC),
    .inRegA(ID_outRegA),
    .inRegB(ID_outRegB),
    .inInstruction_ls(ID_outInstruction_ls),
    .inLD_rt(ID_outLD_rt),
    .inRT_rd(ID_outRT_rd),
    
    //Output Signals
    .outWB(EX_outWB),
    .outMEM(EX_outMEM),
    .outPCJump(EX_outPCJump),
    .outALUResult(EX_outALUResult),
    .outALUZero(EX_outALUZero),
    .outRegB(EX_outRegB),
    .outRegF_wreg(EX_outRegF_wreg)
    );
    
    // Instancia del modulo memAccess
    Memory MEM(
    //Clock and Reset Signals
    .clk(clk),
    .rst(rst),
    
    //Input Signals
    .inWB(EX_outWB),
    .inMEM(EX_outMEM),
    .inPCJump(EX_outPCJump),
    .inALUResult(EX_outALUResult),
    .inALUZero(EX_outALUZero),
    .inRegB(EX_outRegB),
    .inRegF_wreg(EX_outRegF_wreg),
    
    //Output Signals
    .outWB(MEM_outWB),
    .outPCSel(MEM_outPCSel),
    .outPCJump(MEM_outPCJump),
    .outRegF_wd(MEM_outRegF_wd),
    .outALUResult(MEM_outALUResult),
    .outRegF_wreg(MEM_outRegF_wreg)
    );
    
    
    // Instancia del modulo Write Back
    WriteBack WB(
    //Input Signals
    .inWB(MEM_outWB),
    .inRegF_wd(MEM_outRegF_wd),
    .inALUResult(MEM_outALUResult),
    
    //Output Signals
    .outRegF_wr(WB_outRegF_wr),
    .outRegF_wd(WB_outRegF_wd)
    );
    
    
endmodule
