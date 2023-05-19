parameter BITS = 4;

module contador1248(
	input logic clk,reset, load,
  	output logic [BITS-1:0]count);
  
  always_ff @ (posedge reset or posedge clk) begin
    if (reset)
      count <= 0;
    else if(load)
      count <= 1;
    else begin
      if(count[BITS-1]) count <= 1;
      else count <= count << 1;    
    end
  end
endmodule