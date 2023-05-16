parameter BITS = 4;

module contadorDataIn(
	input logic reset, clk, load, count_up, counter_on ,
  input logic [BITS-1:0] data_in,
  output logic [BITS-1:0]count);
  
  initial begin
    count <= ((1<<BITS)-1);
  end
		
  always_ff @(posedge reset or posedge clk) begin
    if (reset)
      count <= ((1<<BITS)-1); 
    else if (load) 
    	count <= data_in;
    else if (counter_on) begin
      if (count_up) 
        count <= count + 1; // UP
      else
        count <= count - 1; // DOWN
    end 
  end 
      
endmodule