parameter BITS = 4;

module contador(
	input logic clk,reset,
  output logic [BITS-1:0]count);
  
  initial count <= ((1<<BITS)-1);
  
  always_ff @ (posedge reset or posedge clk) begin
    if (reset)
      count <= 0;
    else
      count <= count - 1;
  end
endmodule