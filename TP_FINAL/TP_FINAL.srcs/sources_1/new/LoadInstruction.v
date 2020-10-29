`timescale 1ns / 1ps
module LoadInstruction(input [2:0] isLoadStoreType,
                       input [31:0] inMemData,
                       output reg [31:0] outLoad);

always@(*)
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

endmodule
