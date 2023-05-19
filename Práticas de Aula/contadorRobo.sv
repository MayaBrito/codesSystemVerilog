parameter BITS = 4;

module contadorRobo(
	input logic clk,reset, load,
  	output logic [BITS-1:0]count);
  
  always_ff @ (posedge reset or posedge clk) begin
    if (reset)
      count <= 0;
    else if(load)
      count <= 15;
    else begin
      if(count[BITS-3]==0) count <= 15;
      else count <= count >> 1;    
    end
  end
endmodule
  