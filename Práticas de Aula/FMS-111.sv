parameter size = 2;
module FSM_3bits1(
  input clk, reset, in_bit, 
  output out_bit);
  
  enum logic [size - 1 : 0] {A,B,C,D} state;
    
  always_ff @ (posedge clk)
    if (reset) state <= A;
     else
		unique case (state)
			A:
				if (in_bit == 0)
					state <= A;
				else 
					state <= B;
            B:
                  if (in_bit == 0)
                      state <= A;
                  else 
                      state <= C;
            C:
                  if (in_bit == 0)
                      state <= A;
                  else 
                      state <= LOAD;
           	LOAD:
                  if (in_bit == 1)
                      state <= A;
                  else 
                      state <= D;	
		endcase

  always_comb out_bit <= (state == D);
 
endmodule 
