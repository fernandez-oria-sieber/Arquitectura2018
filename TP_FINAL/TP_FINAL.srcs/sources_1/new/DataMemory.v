`timescale 1ns / 1ps

module DataMemory #(parameter RAM_WIDTH = 32,        // Specify RAM data width
                    parameter ADDR_WIDTH = 11,
                    parameter RAM_DEPTH = 2048,
                    parameter INIT_FILE = "")
                   (input inWrEnable,
                    clk,
                    //rst,
                    ena,
                    input [ADDR_WIDTH-1:0] inAddress,
                    input [RAM_WIDTH-1:0] inData,
                    output [RAM_WIDTH-1:0] outData//,
                    //output [319:0] values // valores de los primeros diez registros de la memoria
                    );

    reg [RAM_WIDTH-1:0] ram_name [RAM_DEPTH-1:0];
    reg [RAM_WIDTH-1:0] ram_data = {RAM_WIDTH{1'b0}};
    integer ram_index;
    //reg [319:0] aux_values = {320{1'b0}};
    
    // The following code either initializes the memory values to a specified file or to all zeros to match hardware
    /* COMENTADO PARA SOLUCIONAR PROBLEMA EN TIMING SIMULATION */ 
    initial
    if (INIT_FILE != "")
        $readmemh(INIT_FILE, ram_name, 0, RAM_DEPTH-1);
    else 
        for (ram_index = 0; ram_index < RAM_DEPTH; ram_index = ram_index + 1)
            ram_name[ram_index] = {RAM_WIDTH{1'b0}};
    
    always @(negedge clk)
        if (ena)    ram_data <= ram_name[inAddress];
            //aux_values <= { ram_name[9], ram_name[8], ram_name[7], ram_name[6], ram_name[5],
            //            ram_name[4], ram_name[3], ram_name[2], ram_name[1], ram_name[0] };
    
    always @(posedge clk)
        if (ena && inWrEnable) ram_name[inAddress] <= inData;
    
    assign outData = ram_data;
    //assign values = aux_values;
    
endmodule
