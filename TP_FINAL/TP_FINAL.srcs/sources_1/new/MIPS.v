`timescale 1ns / 1ps
module MIPS(
    input clk,
    input rst,
    );

    /////////
    //// Wires
    // Stage Instruction Fetch
    wire [31:0]	IF_outInstruction;    //IF:outInstruction -> ID:inInstruction
    wire [31:0]	IF_outPC;             //IF:outPC -> ID:inPC

    // Stage Instruction Decode
    wire 		ID_out_isPCWrite;     //ID:out_isPCWrite -> IF:isPCWrite
    wire 		ID_out_isWrite_IF_ID; //ID:out_isWrite_IF_ID -> IF/ID
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
    
    // wire soft_rst; 
    // wire tx_start;
    // wire MIPS_enable;

    // assign soft_rst = (rst || (!MIPS_enable));
    // assign tx_start = (ifetch0_outInstructionAddress==32'd19)? 1'b1:1'b0;

    // Top_UART uart(.clk(clk),.reset(rst),.TX_start(tx_start),.UART_data(execute0_outALUResult),.RX(RX),.MIPS_enable(MIPS_enable),.TX(TX));

    //// Instancias
    // Instancia del modulo Instruction Fetch
    InstructionFetch IF( // STAGE 1
    //Clock and Reset Signals
    .clk(clk),
    .reset(rst),
    
    //Input Signals
    .inPCSel(EX_MEM_osPC),
    .isPCWrite(ID_out_isPCWrite),
    .inPCJump(MEM_outPCJump),
    
    //Output Signals
    .outInstruction(IF_outInstruction)
    .outPC(IF_outPC),
    );
    
    
    // Instancia del modulo Instruction Decode
    InstructionDecode ID( // STAGE 2
    //Clock and Reset Signals
    .clk(clk),
    .rst(rst),
    
    //Input Signals
    .isFRWr(WB_osFRWr),
    .isEX_MemRead(), // ???
    .inFRWrAddr(WB_outFRWrReg),
    .inEX_Rt(EX_outEX_Rt),
    .inPC(IF_outPC),
    .inInstruction(IF_outInstruction),
    .inFRWrData(WB_outFRWrData),
    
    //Output Signals
    .out_isPCWrite(ID_out_isPCWrite)
    .out_isWrite_IF_ID(ID_out_isWrite_IF_ID)
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
    .outInstruction_ls(ID_outInstruction_ls),
    );

    // Instancia del modulo Execute
    Execute EX( // STAGE 3
    //Clock and Reset Signals
    .clk(clk),
    .rst(rst),
    
    //Input Signals
    .inMEM_RegWrite(),
    .inWB_RegWrite(),
    .inWB(ID_outWB),
    .inMEM(ID_outMEM),
    .inEXE(ID_outEXE),
    .isLoadStoreType(ID_outLoadStoreType),
    .inLD_rt(ID_outLD_rt),
    .inRT_rd(ID_outRT_rd),
    .inFUnit_rs(ID_outFUnit_rs),
    .inMEM_rd(), // ??
    .inWB_rd(), // ??
    .inPC(ID_outPC),
    .inRegA(ID_outRegA),
    .inRegB(ID_outRegB),
    .inInstruction_ls(ID_outInstruction_ls),
    .inMEM_ALUResult(),
    .inWB_FRWrData(),

    //Output Signals
    .outALUZero(EX_outALUZero),
    .outWB(EX_outWB),
    .outMEM(EX_outMEM),
    .outLoadStoreType(EX_outLoadStoreType),
    .outEX_Rt(EX_outEX_Rt),
    .outFRWrReg(EX_outFRWrReg) //4:0
    .outPCJump(EX_outPCJump),
    .outALUResult(EX_outALUResult),
    .outRegB(EX_outRegB),
    );

    // Instancia del modulo memAccess
    Memory MEM( // STAGE 4
    //Clock and Reset Signals
    .clk(clk),
    .rst(rst),
    
    //Input Signals
    .inALUZero(EX_outALUZero),
    .isMemWrite(EX_outMEM[0]), // funciona asi [0]???
    .isMemRead(EX_outMEM[1]), // ? va asi [1]?
    .isBranch(EX_outMEM[2]), // ? va asi con [2]?
    .inWB(EX_outWB),
    .isLoadStoreType(EX_outLoadStoreType),
    .inFRWrReg(EX_outFRWrReg),
    .inALUResult(EX_outALUResult),
    .inRegB(EX_outRegB), // este no esta en memory
    .inRtReg(), // este esta pero no se donde va
    .inPCJump(EX_outPCJump),
    
    //Output Signals
    .osPC(MEM_osPC),
    .outWB(MEM_outWB),
    .outFRWrReg(MEM_outFRWrReg), //31:0
    .outMem(MEM_outMem),
    .outALUResult(MEM_outALUResult),
    .outPCJump(MEM_outPCJump),
    );
    
    // Instancia del modulo Write Back
    WriteBack WB( // STAGE 5
    //Input Signals
    .rst(rst),
    .isWB(MEM_outWB),
    .inFRWrReg(MEM_outFRWrReg),
    .inFRWrData(MEM_outMem),
    .inALUResult(MEM_outALUResult),
    
    //Output Signals
    .osFRWr(WB_osFRWr),     // WB_outRegF_wr
    .outFRWrReg(WB_outFRWrReg),
    .outFRWrData(WB_outFRWrData) // WB_outRegF_wd
    );

endmodule
