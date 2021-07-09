`timescale 1ns / 1ps

module WB_Testbench(

    );
    
    
    reg 		rst,clk;
    reg [1:0]  WB_inWB;
    reg [4:0]  WB_inFRWrReg;
    reg [31:0] WB_inMem;
    reg [31:0] WB_inALUResult;;
    
    // Stage Write Back
    wire         WB_osFRWr;      // WB:osFRWr -> ID:isFRWr
    wire [4:0]    WB_outFRWrReg;  // WB:outFRWrReg -> ID:inFRWrAddr
    wire [31:0]    WB_outFRWrData; // WB:outFRWrData -> ID:inFRWrData
        
    
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

    
    initial begin
    WB_inWB = 2'b0;
    clk = 1'b0;
    rst = 1'b1;
    WB_inFRWrReg = 5'd7;
    WB_inMem = 32'd472;
    WB_inALUResult = 32'd125;
    #20 rst = 1'b0;
    WB_inWB = 2'b11; // Escribe el valor de la Alu en el registro FRWrReg
    #100
    WB_inWB = 2'b10; // Escribe el valor de la Memoria en el registro FRWrReg
    
    
    
    end
    
    
 always #5 clk=~clk;  // Genero los ciclos de reloj
    
endmodule