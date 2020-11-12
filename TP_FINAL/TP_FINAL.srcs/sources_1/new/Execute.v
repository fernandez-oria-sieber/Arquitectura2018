`timescale 1ns / 1ps

module Execute(input clk,
               input rst,
               input inMEM_RegWrite, // flag de control que viene de MEM y determina si se va a escribir un registro 
               input inWB_RegWrite, // flag de control que viene de WB y determina si se va a escribir un registro 
               input [1:0] inWB,
               input [2:0] inMEM,
               input [3:0] inEXE,
               input [4:0] inLD_rt,
               input [4:0] inFUnit_rs,
               input [4:0] inRT_rd,
               input [4:0] inMEM_rd,
               input [4:0] inWB_rd, 
               input [31:0] inInstructionAddress, // PC
               input [31:0] inRegA,
               input [31:0] inRegB,
               input [31:0] inInstruction_ls,     // entrada con extension de signo de Intruction[15:0]
               input [31:0] inMEM_ALUResult,
               input [31:0] inWB_FRWrData,
               output outALUZero,
               output [1:0] outWB,
               output [2:0] outMEM,
               output [4:0] outFRWrReg,           // FR - Registro a escribir en ID
               output [31:0] outPCJump,
               output [31:0] outALUResult,
               output [31:0] outRegB,
               );
    
    // Registros
    reg ALUZero;
    reg [4:0] FRWrReg;
    reg [4:0] wreg;
    reg [31:0] PCJump;
    reg [31:0] Jump;
    reg [31:0] ALUResult;
    reg [31:0] RegB;
    reg [31:0] regB_ALU;

    reg [1:0] isMuxA;
    reg [1:0] isMuxB;

    
    // Cables
    wire [3:0] ALUControl;
    
    // Instancia de "ALU"
    ALU #(.bits(32)) alu0 (
    .inOp(ALUControl),
    .inRegA(outMuxA),
    .inRegB(regB_ALU),
    .outZero(ALUZero),
    .outResult(ALUResult)
    );
    
    // Instancia de "ALUControl"
    ALUControl alu_control0 (
    .inALUOp(inEXE),
    .inFunc(inInstruction_ls[5:0]), // funct: selecciona la operación aritmética a realizar
    .outOp(ALUControl)
    );

    // Instancia de "ForwardingUnit"
    ForwardingUnit forwardingUnit0 (
        .inMEM_RegWrite(inMEM_RegWrite),
        .inMEM_Rd(inMEM_rd),
        .inRs(inFUnit_rs),
        .inRt(inLD_rt),
        .inWB_RegWrite(inWB_RegWrite),
        .inWB_Rd(inWB_rd),
        .out_isMUX_A(isMuxA),
        .out_isMUX_B(isMuxB)
    )
    
    always @(negedge clk, posedge rst)
    begin
        if (rst)
        begin
            PCJump     <= 32'b0;
            FRWrReg    <= 5'b0;
            ALUResult  <= 32'b0;
            ALUZero    <= 1'b0;
            RegB       <= 32'b0;
            // FRWrReg <= 5'bZZZZZ; // FIXME
        end
        else
        begin
            PCJump  <= Jump;
            FRWrReg <= wreg;
            RegB    <= inRegB;
        end
    end
    
    always @(*)
    begin
        case(isMUX_A)
            2'b00:      outMuxA = inRegA;
            2'b01:      outMuxA = inWB_FRWrData;
            2'b10:      outMuxA = inMEM_ALUResult;
            default:    outMuxA = inRegA;
        endcase
        case(isMUX_B)
            2'b00:      outMuxB = inRegB;
            2'b01:      outMuxB = inWB_FRWrData;
            2'b10:      outMuxB = inMEM_ALUResult;
            default:    outMuxB = inRegB;
        endcase
        
    end

    always @(*)
    begin
        if (rst)
        begin
            wreg     <= 0;
            regB_ALU <= 0;
        end
        else
        begin
            // Jump <= ((inInstruction_ls << 2) + inInstructionAddress);
            // Le sacamos el << 2 porque nosotros vamos sumando de a 1 el PC
            Jump <= inInstruction_ls + inInstructionAddress:
            casez(inEXE)
                4'b0???: wreg <= inLD_rt;
                4'b1???: wreg <= inRT_rd;
                default: wreg <= inRT_rd;
            endcase
            casez(inEXE) // segundo mux de regB
                4'b???1: regB_ALU <= inInstruction_ls;
                4'b???0: regB_ALU <= outMuxB;
                default: regB_ALU <= outMuxB;
                // regB_ALU       <= inInstruction_ls;
                // probar esto como default, para nosotros tiene más sentido
            endcase
        end
    end
    
    // Asignaciones de salida
    assign outWB        = inWB;
    assign outMEM       = inMEM;
    assign outPCJump    = PCJump;
    assign outFRWrReg   = FRWrReg;
    assign outALUResult = ALUResult;
    assign outALUZero   = ALUZero;
    assign outRegB      = RegB;
    
endmodule
