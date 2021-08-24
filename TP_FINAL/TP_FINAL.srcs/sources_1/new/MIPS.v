`timescale 1ns / 1ps
module MIPS #(//parameter DATA_BUFFER = 1814,
              parameter INSTRUCTION_FILE = "",
              parameter DATA_FILE = "")(
    input clk,
    input rst,
    input wr_enable,
    input start,
    input [10:0] IMEM_addr,
    input [31:0] instruction,
    output finish//,
    //output [DATA_BUFFER-1:0] values
    );

    /////////
    //// Wires
    // Stage Instruction Fetch/Decode Latch
    // INPUTS
    wire        IF_outFinish;         //HALT instruction: Finish program
    wire [10:0]	IF_outPC;             //IF:outPC -> ID:inPC
    wire [31:0]	IF_outInstruction;    //IF:outInstruction -> ID:inInstruction
    // OUTPUTS
    wire        ID_inFinish;         //HALT instruction: Finish program
    wire [10:0] ID_inPC;
    wire [31:0] ID_inInstruction;
    // Stage Instruction Decode/Execute latch
    //INPUTS
    wire 		ID_out_isPCWrite;     //ID:out_isPCWrite -> IF:isPCWrite
    wire 		ID_out_isWrite_IF_ID; //ID:out_isWrite_IF_ID -> IF/ID
    wire [1:0]	ID_outWB; 	          //ID:outWB -> EX:inWB
    wire [2:0]	ID_outMEM; 	          //ID:outMEM -> EX:inMEM
    wire [5:0]	ID_outEXE; 	          //ID:outEXE -> EX:inEXE
    wire [2:0]  ID_outLoadStoreType;  //ID:outLoadStoreType -> EX:isLoadStoreType
    wire [4:0]	ID_outLD_rt;          //ID:outLD_rt -> EX:inLD_rt
    wire [4:0]	ID_outRT_rd;          //ID:outRT_rd -> EX:inRT_rd
    wire [4:0]  ID_outFUnit_rs;       //ID:outFUnit_rs -> EX:inFUnit_rs
    wire [10:0]	ID_outPC;             //ID:outPC -> EX:inPC
    wire [31:0]	ID_outRegA; 	      //ID:outRegA -> EX:inRegA
    wire [31:0]	ID_outRegB; 	      //ID:outRegB -> EX:inRegB
    wire [31:0]	ID_outInstruction_ls; //ID:outInstruction_ls -> EX:inInstruction_ls
    //OUTPUTS
    wire        EX_inFinish;         //HALT instruction: Finish program
    wire 		EX_in_isPCWrite;     
    wire         EX_in_isWrite_IF_ID; 
    wire [1:0]    EX_inWB;            
    wire [2:0]    EX_inMEM;           
    wire [5:0]    EX_inEXE;          
    wire [2:0]  EX_inLoadStoreType;  
    wire [4:0]    EX_inLD_rt;        
    wire [4:0]    EX_inRT_rd;        
    wire [4:0]  EX_inFUnit_rs;       
    wire [10:0]    EX_inPC;          
    wire [31:0]    EX_inRegA;        
    wire [31:0]    EX_inRegB;        
    wire [31:0]    EX_inInstruction_ls;
    

    // Stage Execute/Memory latch
    //INPUTS
    wire 		EX_outALUZero; 	     //EX:outALUZero -> MEM:isALUZero
    wire [2:0]	EX_outMEM; 		     //EX:outMEM -> MEM:isMemWrite, isMemRead, isBranch
    wire [1:0]	EX_outWB; 		     //EX:outWB -> MEM:inWB
    wire [2:0]  EX_outLoadStoreType; //EX:outLoadStoreType -> MEM:isLoadStoreType
    wire [4:0]	EX_outEX_Rt;         //EX:outEX_Rt -> ID: HazardUnit
    wire [4:0]	EX_outFRWrReg;       //EX:outFRWrReg -> MEM:inFRWrReg
    wire [10:0]	EX_outPCJump; 	     //EX:outPCJump -> MEM:inPCJump
    wire [31:0]	EX_outALUResult;     //EX:outALUResult -> MEM:inALUResult
    wire [31:0] EX_outRegB; 	     //EX:outRegB -> MEM:inRegB
    //OUTPUTS
    wire        MEM_inFinish;         //HALT instruction: Finish program
    wire 		MEM_inALUZero; 	   
    wire [2:0]  MEM_inMEM;       
    wire [1:0]  MEM_inWB;        
    wire [2:0]  MEM_inLoadStoreType;
    wire [4:0]  MEM_inEX_Rt;     
    wire [4:0]  MEM_inFRWrReg;   
    wire [10:0] MEM_inPCJump;   
    wire [31:0] MEM_inALUResult;
    wire [31:0] MEM_inRegB;        

    // Stage Memory/WriteBack latch
    //INPUT
    wire 		MEM_osPC; 	      //MEM:osPC -> IF:inPCSel
    wire [1:0]	MEM_outWB; 		  //MEM:outWB -> WB:isWB
    wire [4:0]	MEM_outFRWrReg;   //MEM:outFRWrReg -> WB:inFRWrReg
    wire [10:0]	MEM_outPCJump; 	  //MEM:outPCJump -> IF:inPCJump
    wire [31:0] MEM_outMem;       //MEM:outMem -> WB:inFRWrData
    wire [31:0] MEM_outALUResult; //MEM:outALUResult -> WB:inALUResult
    //OUTPUT
    wire        WB_inFinish;         //HALT instruction: Finish program
    wire 		WB_osPC;
    wire [1:0]  WB_inWB;
    wire [4:0]  WB_inFRWrReg;
    wire [10:0] WB_inPCJump;
    wire [31:0] WB_inMem;
    wire [31:0] WB_inALUResult;
    
    // Stage Write Back
    wire 		WB_osFRWr;      // WB:osFRWr -> ID:isFRWr
    wire [4:0]	WB_outFRWrReg;  // WB:outFRWrReg -> ID:inFRWrAddr
    wire [31:0]	WB_outFRWrData; // WB:outFRWrData -> ID:inFRWrData
    
    //DEBUG
    wire [31:0] clk_counter;
    //wire [319:0] MEM_values;
    //wire [1023:0] FR_values;

    ///////////////////////////////////////////////////////////////////////////
    //// Instancias ///////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////

    // Instancia del modulo Instruction Fetch
    InstructionFetch #(INSTRUCTION_FILE) IF ( // STAGE 1
    //Clock and Reset Signals
    .clk(clk),
    .reset(rst),
    
    //Debug signals
    .write_enable(wr_enable),
    .IMEM_addr(IMEM_addr),
    
    //Input Signals
    .isPCSel(MEM_osPC),
    .isPCWrite(ID_out_isPCWrite && start), // Tiene que estar el start y ademas habilitado por la HazardUnit
    .inPCJump(MEM_inPCJump),
    .inInstruction(instruction),
    
    //Output Signals
    .outFinish(IF_outFinish),
    .out_clk_counter(clk_counter),
    .outInstruction(IF_outInstruction),
    .outPC(IF_outPC)
    );
    
    // IF ID LATCH
    IF_ID_latch IF_ID(
    .clk(clk),
    .rst(rst),
    //INPUTS
    .start(start),
    .inFinish(IF_outFinish),
    .in_isWrite_IF_ID(ID_out_isWrite_IF_ID),
    .inInstruction(IF_outInstruction),
    .inPc(IF_outPC),
    //OUTPUT
    .outFinish(ID_inFinish),
    .outInstruction(ID_inInstruction),
    .outPc(ID_inPC)
    );
    
    
    // Instancia del modulo Instruction Decode
    InstructionDecode ID( // STAGE 2
    //Clock and Reset Signals
    .clk(clk),
    .rst(rst),
    
    //Input Signals
    .isFRWr(WB_osFRWr),
    .isEX_MemRead(EX_inMEM[2]),
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
    .outInstruction_ls(ID_outInstruction_ls)//,
    //.FR_values(FR_values)
    );
    
    //ID EX LATCH
    
    ID_EX_latch ID_EX(
    .clk(clk),
    .rst(rst),
    //INPUTS
    .start(start),
    .inFinish(ID_inFinish),
    .inWB(ID_outWB),
    .inMEM(ID_outMEM),
    .inEXE(ID_outEXE),
    .inLoadStoreType(ID_outLoadStoreType),
    .inLD_rt(ID_outLD_rt),
    .inRT_rd(ID_outRT_rd),
    .inFUnit_rs(ID_outFUnit_rs),
    .inPC(ID_outPC),
    .inRegA(ID_outRegA),
    .inRegB(ID_outRegB),
    .inInstruction_ls(ID_outInstruction_ls),
    //OUTPUTS
    .outFinish(EX_inFinish),
    .outWB(EX_inWB),
    .outMEM(EX_inMEM),
    .outEXE(EX_inEXE),
    .outLoadStoreType(EX_inLoadStoreType),
    .outLD_rt(EX_inLD_rt),
    .outRT_rd(EX_inRT_rd),
    .outFUnit_rs(EX_inFUnit_rs),
    .outPC(EX_inPC),
    .outRegA(EX_inRegA),
    .outRegB(EX_inRegB),
    .outInstruction_ls(EX_inInstruction_ls)
    );
    

    // Instancia del modulo Execute
    Execute EX( // STAGE 3
    //Clock and Reset Signals
    .clk(clk),
    .rst(rst),
    
    //Input Signals
    .inMEM_RegWrite(MEM_inWB[1]),
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
    
    // EX MEM LATCH
    
    EX_MEM_latch EX_MEM(
    .clk(clk),
    .rst(rst),
    //INPUTS
    .start(start),
    .inFinish(EX_inFinish),
    .inALUZero(EX_outALUZero),
    .inWB(EX_outWB),
    .inMEM(EX_outMEM),
    .inLoadStoreType(EX_outLoadStoreType),
    .inFRWrReg(EX_outFRWrReg), //4:0
    .inPCJump(EX_outPCJump),
    .inALUResult(EX_outALUResult),
    .inRegB(EX_outRegB),
    //OUTPUTS
    .outFinish(MEM_inFinish),
    .outALUZero(MEM_inALUZero),
    .outWB(MEM_inWB),
    .outMEM(MEM_inMEM),
    .outLoadStoreType(MEM_inLoadStoreType),
    .outFRWrReg(MEM_inFRWrReg), //4:0
    .outPCJump(MEM_inPCJump),
    .outALUResult(MEM_inALUResult),
    .outRegB(MEM_inRegB)
    );
    
    
    // Instancia del modulo memAccess
    Memory #(DATA_FILE) MEM( // STAGE 4
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
    .outALUResult(MEM_outALUResult)//,
    //.MEM_values(MEM_values)
    );
    
    MEM_WB_latch MEM_WB(
    .clk(clk),
    .rst(rst),
    //INPUTS
    .start(start),
    .inFinish(MEM_inFinish),
    .inWB(MEM_outWB),
    .inFRWrReg(MEM_outFRWrReg),
    .inMem(MEM_outMem),
    .inALUResult(MEM_outALUResult),
    //OUTPUTS
    .outFinish(WB_inFinish),
    .outWB(WB_inWB),
    .outFRWrReg(WB_inFRWrReg),
    .outMem(WB_inMem),
    .outALUResult(WB_inALUResult)
    );
    
    // Instancia del modulo Write Back
    WriteBack WB( // STAGE 5
    //Input Signals
    .rst(rst),
    .isWB(WB_inWB),
    .inFRWrReg(WB_inFRWrReg),
    .inFRWrData(WB_inMem),
    .inALUResult(WB_inALUResult),
    
    //Output Signals
    .osFRWr(WB_osFRWr),     // WB_outRegF_wr
    .outFRWrReg(WB_outFRWrReg),
    .outFRWrData(WB_outFRWrData) // WB_outRegF_wd
    );
    
    assign finish = WB_inFinish;
    
    /*assign values = {   // Contenido de los 32 registros del FileRegister
                        FR_values,
                        // IF_ID latch
                        IF_outFinish,
                        ID_out_isWrite_IF_ID,
                        IF_outInstruction,
                        IF_outPC,
                        // ID_EX latch
                        ID_inFinish,
                        ID_outWB,
                        ID_outMEM,
                        ID_outEXE,
                        ID_outLoadStoreType,
                        ID_outLD_rt,
                        ID_outRT_rd,
                        ID_outFUnit_rs,
                        ID_outPC,
                        ID_outRegA,
                        ID_outRegB,
                        ID_outInstruction_ls,
                        // EX_MEM latch
                        EX_inFinish,
                        EX_outALUZero,
                        EX_outWB,
                        EX_outMEM,
                        EX_outLoadStoreType,
                        EX_outFRWrReg,
                        EX_outPCJump,
                        EX_outALUResult,
                        EX_outRegB,
                        // MEM_WB latch
                        MEM_inFinish,
                        MEM_outWB,
                        MEM_outFRWrReg,
                        MEM_outMem,
                        MEM_outALUResult,
                        // Program Counter
                        IF_outPC,
                        // Data Memory
                        //MEM_values,
                        // Clock counter
                        clk_counter
                        
                    };*/
                        
                        
                        
                        
                    

endmodule
