`timescale 1ns / 1ps
module StoreInstruction(input [1:0] isLoadStoreType,
                        input [31:0] inData_to_mem,
                        output reg [31:0] outStore);

always@(*)
begin
    case(isLoadStoreType)
        // store bytesigned [SB]
        2'b00: outStore = {{24{inData_to_mem[7]}},inData_to_mem[7:0]}; // rellena del [31:8] con el valor del bit 7
        // store half [SH]
        2'b01: outStore = {{16{inData_to_mem[15]}},inData_to_mem[15:0]}; // rellena del [31:16] con el valor del bit 15
        // store word [SW]
        2'b11: outStore   = inData_to_mem;
        default: outStore = 0;
    endcase
end

endmodule
