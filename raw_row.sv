//MEMÓRIA RAW ROM
parameter ADDR_WIDTH = 2;
parameter DATA_WIDTH = 3;
module RAM_ROM(
  input logic [ADDR_WIDTH-1:0] addr,
  output logic [DATA_WIDTH-1:0] data_out);
  
  always_comb
    case(addr)
    2'b00: data_out = 3'b011;
    2'b01: data_out = 3'b110;
    2'b10: data_out = 3'b100;
    2'b11: data_out = 3'b010;
    endcase
  
endmodule