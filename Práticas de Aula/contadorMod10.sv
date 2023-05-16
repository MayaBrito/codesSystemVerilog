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
      count <= 0; 
    else if (load) 
    	count <= data_in;
    else if (counter_on) begin
      if (count_up) begin 
        if(count == 9) count <= 0;
      	else count <= count + 1; // UP
      end
        else begin 
          if(count == 0) count <= 9;
         else count <= count - 1; // DOWN
        end
        end 
  end 
      
endmodule