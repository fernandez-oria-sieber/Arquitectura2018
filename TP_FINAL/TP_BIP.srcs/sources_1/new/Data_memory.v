`timescale 1ns / 1ps

module Data_memory
#(
parameter RAM_WIDTH = 32,   // Specify RAM data width
parameter RAM_DEPTH = 2048,
parameter INIT_FILE = ""    // Specify name/location of RAM initialization file if using one (leave blank if not)
)
(
input Wr, Rd, clk, ena,
input [RAM_WIDTH-1:0] Addr,
input [RAM_WIDTH-1:0] In_Data,
output [RAM_WIDTH-1:0] Out_Data
  );


  //  Xilinx Single Port Read First RAM
  //  This code implements a parameterizable single-port read-first memory where when data
  //  is written to the memory, the output reflects the prior contents of the memory location.
  //  If the output data is not needed during writes or the last read value is desired to be
  //  retained, it is suggested to set WRITE_MODE to NO_CHANGE as it is more power efficient.
  //  If a reset or enable is not necessary, it may be tied off or removed from the code.
  //  Modify the parameters for the desired RAM characteristics.

  reg [RAM_WIDTH-1:0] ram_name [RAM_DEPTH-1:0];
  reg [RAM_WIDTH-1:0] ram_data = {RAM_WIDTH{1'b0}};

  // The following code either initializes the memory values to a specified file or to all zeros to match hardware
  generate
    if (INIT_FILE != "") begin: use_init_file
      initial
        $readmemh(INIT_FILE, ram_name, 0, RAM_DEPTH-1);
    end else begin: init_bram_to_zero
      integer ram_index;
      initial
        for (ram_index = 0; ram_index < RAM_DEPTH; ram_index = ram_index + 1)
          ram_name[ram_index] = {RAM_WIDTH{1'b0}};
    end
  endgenerate

  always @(negedge clk)
    if (ena) begin
      ram_data <= ram_name[Addr]; 
    end
    
  always @(posedge clk)
    if (ena) begin
      if (Wr) ram_name[Addr] <= In_Data;
    end

assign Out_Data = ram_data;

endmodule
