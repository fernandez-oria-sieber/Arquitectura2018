
`timescale 1ns / 1ps
module SignExtensionMem(input [31:0] inDataToMem,
                        input [31:0] inMemData,
                        input isMemWrite,
                        input [2:0] isLoadStoreType,
                        output reg [31:0] outLoad,
                        output reg [31:0] outStore);

always@(*)
begin
    if (isMemWrite)
    begin
        case(isLoadStoreType[1:0])
            // store bytesigned [SB]
            2'b00: outStore = $signed(inDataToMem[7:0]);   // rellena del [31:8] con el valor del bit 7
            // store half [SH]
            2'b01: outStore = $signed(inDataToMem[15:0]);   // rellena del [31:16] con el valor del bit 15
            // store word [SW]
            2'b11: outStore   = inDataToMem;
            default: outStore = 0;
        endcase
    end
    else
    begin
        case(isLoadStoreType)
            //load bytesigned [LB]
            3'b000: outLoad = {{24{inMemData[7]}},inMemData[7:0]};
            //load half [LH]
            3'b001: outLoad = {{16{inMemData[15]}},inMemData[15:0]};
            //load word [LW]
            3'b011: outLoad = inMemData;
            //load byte unsigned [LBU]
            3'b100: outLoad = {{24'b0},inMemData[7:0]};
            //load half unsigned [LHU]
            3'b101: outLoad = {{16'b0},inMemData[15:0]};
            //load word unsigned [LWU]
            3'b111: outLoad  = inMemData;
            default: outLoad = 0;
        endcase
    end
end

endmodule


