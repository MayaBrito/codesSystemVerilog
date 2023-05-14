// Registrador de Deslocamento 
 
parameter BITS_DATA = 4;
parameter BITS_SHIFT = 1;
module REG_DESLOCAMENTO (
  input logic clk, reset,
  input logic [BITS_SHIFT-1:0] shift,
  input logic signed [BITS_DATA-1:0] data_in,
  output logic signed [BITS_DATA-1:0] data_out);
  
  always_ff @ (posedge reset or posedge clk) begin
    if (reset)
      data_out <= 0; 
    else
      data_out <= data_in >>> shift;
  end
  
endmodule 