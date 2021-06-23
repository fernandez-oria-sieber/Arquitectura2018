`timescale 1ns / 1ps

module Execute(input clk,
               input rst,
               input inMEM_RegWrite,          // flag de control que viene de MEM y determina si se va a escribir un registro
               input inWB_RegWrite,           // flag de control que viene de WB y determina si se va a escribir un registro
               input [1:0] inWB,
               input [2:0] inMEM,
               input [2:0] isLoadStoreType,
               input [4:0] inLD_rt,
               input [4:0] inRT_rd,
               input [4:0] inFUnit_rs,
               input [4:0] inMEM_rd,
               input [4:0] inWB_rd,
               input [5:0] inEXE,
               input [31:0] inPC,             // PC
               input [31:0] inRegA,
               input [31:0] inRegB,
               input [31:0] inInstruction_ls, // entrada con extension de signo de Intruction[15:0]
               input [31:0] inMEM_ALUResult,
               input [31:0] inWB_FRWrData,
               output outALUZero,
               output [1:0] outWB,
               output [2:0] outMEM,           // Esto va a EX/MEM y el MEM[1] al Hazard Unit
               output [2:0] outLoadStoreType, // op[2:0] se utiliza en SignExtensionMemory de MEM
               output [4:0] outFRWrReg,       // FR - Registro a escribir en ID
               output [31:0] outPCJump,
               output [31:0] outALUResult,
               output [31:0] outRegB
               );
    
    // Registros
    reg [4:0] FRWrReg;
    reg [4:0] wreg;
    reg [31:0] PCJump;
    reg [31:0] Jump;
    reg [31:0] ALUResult;
    reg [31:0] RegB;
    reg [31:0] regB_ALU;
    reg [31:0] outMuxA;
    reg [31:0] outMuxB;
    
    // Cables
    wire [1:0] isMuxA;
    wire [1:0] isMuxB;
    wire [3:0] ALUControl;
    
    // Instancia de "ALU"
    ALU #(.size(32)) alu0 (
    .inOp(ALUControl),
    .inRegA(outMuxA),
    .inRegB(regB_ALU),
    .outZero(outALUZero),
    .outResult(outALUResult)
    );
    
    // Instancia de "ALUControl"
    ALU_control alu_control (
    .inALUOp(inEXE),
    .inFunc(inInstruction_ls[5:0]), // funct: selecciona la operación aritmética a realizar
    .outOp(ALUControl)
    );
    
    // Instancia de "ForwardingUnit"
    ForwardingUnit forwardingUnit0 (
    .rst(rst),
    .inMEM_RegWrite(inMEM_RegWrite),
    .inMEM_Rd(inMEM_rd),
    .inRs(inFUnit_rs),
    .inRt(inLD_rt),
    .inWB_RegWrite(inWB_RegWrite),
    .inWB_Rd(inWB_rd),
    .out_isMUX_A(isMuxA),
    .out_isMUX_B(isMuxB)
    );
    
    always @(negedge clk, posedge rst)
    begin
        if (rst)
        begin
            PCJump     <= 32'b0;
            FRWrReg    <= 5'b0;
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
        case(isMuxA)
            2'b00:      outMuxA = inRegA;
            2'b01:      outMuxA = inWB_FRWrData;
            2'b10:      outMuxA = inMEM_ALUResult;
            default:    outMuxA = inRegA;
        endcase
        case(isMuxB)
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
            // Jump <= ((inInstruction_ls << 2) + inPC);
            // Le sacamos el << 2 porque nosotros vamos sumando de a 1 el PC
            Jump <= inInstruction_ls + inPC;
            casez(inEXE)
                6'b0XXXXX: wreg <= inLD_rt;
                6'b1XXXXX: wreg <= inRT_rd;
                default: wreg <= inRT_rd;
            endcase
            casex(inEXE) // segundo mux de regB
                6'b00XXXX: regB_ALU <= inInstruction_ls;
                6'b11XXXX: regB_ALU <= outMuxB;
                default: regB_ALU <= outMuxB;
                // probar esto como default, para nosotros tiene más sentido
            endcase
        end
    end
    
    // Asignaciones de salida
    assign outWB            = inWB;
    assign outMEM           = inMEM;
    assign outPCJump        = PCJump;
    assign outFRWrReg       = FRWrReg;
    assign outRegB          = RegB;
    assign outLoadStoreType = isLoadStoreType;
    
endmodule
