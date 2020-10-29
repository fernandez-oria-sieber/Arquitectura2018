`timescale 1ns / 1ps

module InstructionDecode(input clk,
                         input rst,
                         input [31:0] inInstructionAddress,   // direccion de la instrucción (PC) [IF]
                         input [31:0] inInstruction,          // valor del PC - instrucción [IF]
                         input isFRWr,                        // Flag de escritura en banco de registros [WB]
                         input [4:0] inFRWrAddr,              // también desde MEM? Direccion de memoria en registro a escribir [WB]
                         input [31:0] inFRWrData,             // Data value a escribir [WB]
                         output [1:0] outWB,                  // Salida de la unidad de control
                         output [2:0] outMEM,                 // Salida de la unidad de control
                         output [3:0] outEXE,                 // Salida de la unidad de control
                         output [31:0] outInstructionAddress, // Program Counter
                         output [31:0] outRegA,               // Salida A del Banco de registros
                         output [31:0] outRegB,               // Salida B del Banco de registros
                         output [31:0] outInstruction_ls,     // Salida con extensión de signo para ¿solo I-Types?
                         output [4:0] outLD_rt,               // Registros rt (inInstruction[20:16])
                         output [4:0] outRT_rd);              // Registros rd (inInstruction[15:11])
    
    // Registros
    reg [1:0] WB;
    reg [2:0] MEM;
    reg [3:0] EXE;
    reg [4:0] LD_rt; // Para las instruccion Load - Load Doubleword[LD] rt, offset(base)
    reg [4:0] RT_rd; // Para los RType - Registro rd
    reg [31:0] InstructionAddress;
    reg signed [31:0] Instruction_ls;
    
    // Cables
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
    .outCtrlWB(WB),
    .outCtrlMEM(MEM),
    .outCtrlEXE(EXE)
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
            WB                 = 2'b00;
            MEM                = 3'b010;
            EXE                = 4'b0;
            InstructionAddress = 32'b0;
            Instruction_ls     = 32'b0;
            LD_rt              = 5'b0;
            RT_rd              = 5'b0;
        end
        else // Escritura de todos los registros de salida
        begin
            InstructionAddress = inInstructionAddress;
            Instruction_ls = $signed(address)
            LD_rt = rt;
            RT_rd = rd;
            
            // WB             = outCtrlWB; // Esto ahora lo estamos asignando a la salida de ControlBlock
            // MEM            = outCtrlMEM;
            // EXE            = outCtrlEXE;
            // Instruction_ls = {address, 16'b0};
        end
    end
    
    //Asignaciones de salida
    assign outWB                 = WB;
    assign outMEM                = MEM;
    assign outEXE                = EXE;
    assign outLD_rt              = LD_rt;
    assign outRT_rd              = RT_rd;
    assign outInstructionAddress = InstructionAddress;
    assign outInstruction_ls     = Instruction_ls >>> 16; // (-45 antes del >>>)     = 1111111111010011000000000000000 >>> (-45)     = 11111111111111111111111111010011
    
endmodule
