`timescale 1ns / 1ps

module InstructionDecode(input clk,
                         input rst,
                         input isFRWr,                     // Flag de escritura en banco de registros [WB]
                         input isEX_MemRead,               // Flag MemRead [EX]
                         input [4:0] inFRWrAddr,           // Direccion de memoria en registro a escribir [WB]
                         input [4:0] inEX_Rt,              // Reg Rt de LD que se utiliza en Hazard Unit [EX]
                         input [31:0] inPC,                // direccion de la instrucción (PC) [IF]
                         input [31:0] inInstruction,       // valor del PC - instrucción [IF]
                         input [31:0] inFRWrData,          // Data value a escribir [WB]
                         output out_isPCWrite,             // Salida del HazardUnit [IF]
                         output out_isWrite_IF_ID,         // Salida del HazardUnit [IF/ID]
                         output [1:0] outWB,               // Salida de la unidad de control
                         output [2:0] outMEM,              // Salida de la unidad de control
                         output [5:0] outEXE,              // Salida de la unidad de control
                         output [2:0] outLoadStoreType,    // op[2:0] se utiliza en SignExtensionMemory de MEM
                         output [4:0] outLD_rt,            // Registros rt (inInstruction[20:16])
                         output [4:0] outRT_rd,            // Registros rd (inInstruction[15:11])
                         output [4:0] outFUnit_rs,         // Registros rs (inInstruction[25:21])
                         output [31:0] outPC,              // Program Counter
                         output [31:0] outRegA,            // Salida A del Banco de registros
                         output [31:0] outRegB,            // Salida B del Banco de registros
                         output [31:0] outInstruction_ls); // Salida con extensión de signo para ¿solo I-Types?
    
    // Registros
    reg [2:0] load_store_type;
    reg [4:0] LD_rt; // Para las instruccion Load - Load Doubleword[LD] rt, offset(base)
    reg [4:0] RT_rd; // Para los RType - Registro rd
    reg [4:0] FUnit_rs;
    reg [31:0] PC;
    reg signed [31:0] Instruction_ls;
    
    // Cables
    wire out_isMuxControl;
    wire [5:0] op;
    wire [4:0] rs;
    wire [4:0] rt;
    wire [4:0] rd;
    wire [5:0] funct;
    wire [15:0] address;
    
    
    // Asignaciones internas
    assign op      = inInstruction[31-:6]; // [31:26]
    assign rs      = inInstruction[25-:5];
    assign rt      = inInstruction[20-:5];
    assign rd      = inInstruction[15-:5];
    assign funct   = inInstruction[5:0];
    assign address = inInstruction[15 -: 16];
    
    // Instancia de "Control Unit"
    ControlUnit control_unit (
    // TODO: verificar que funcione con las salidas asignando directamente WB, MEM y EXE
    .inInstruction(op),
    .inFunct(funct),
    .isMuxControl(out_isMuxControl),
    .outCtrl_WB(outWB),
    .outCtrl_MEM(outMEM),
    .outCtrl_EXE(outEXE)
    );
    
    HazardUnit hazard_unit(
    .isEX_MemRead(isEX_MemRead),
    .inEX_Rt(inEX_Rt),
    .inRs(rs),
    .inRt(rt),
    .out_isPCWrite(out_isPCWrite),
    .out_isWrite_IF_ID(out_isWrite_IF_ID),
    .out_isMuxControl(out_isMuxControl)
    );
    
    // Instancia de "File Register"
    FileRegister file_register (
    .clk(clk),
    .rst(rst),
    .isWrite(isFRWr),
    .inReadRegA(rs),
    .inReadRegB(rt),
    .inWriteAddr(inFRWrAddr),
    .inWriteData(inFRWrData),
    .outRegA(outRegA),
    .outRegB(outRegB)
    );
    
    //Logica del Bloque
    always @(negedge clk, posedge rst)
    begin
        if (rst)
        begin
            PC              = 32'b0;
            Instruction_ls  = 32'b0;
            LD_rt           = 5'b0;
            RT_rd           = 5'b0;
            FUnit_rs        = 5'b0;
            load_store_type = 3'b0;
        end
        else // Escritura de todos los registros de salida
        begin
            PC = inPC;
            Instruction_ls = $signed(address);
            LD_rt           = rt;
            RT_rd           = rd;
            FUnit_rs        = rs;
            load_store_type = op[2:0];
        end
    end
    
    //Asignaciones de salida
    assign outLD_rt          = LD_rt;
    assign outRT_rd          = RT_rd;
    assign outFUnit_rs       = FUnit_rs;
    assign outPC             = PC;
    assign outInstruction_ls = Instruction_ls;
    assign outLoadStoreType  = load_store_type;
    
endmodule
