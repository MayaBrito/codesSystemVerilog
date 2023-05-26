parameter size = 1;
module gerador_paridade_par(
  input clk, reset, in_bit, 
  output out_bit);
  
   enum logic [size - 1 : 0] {PAR, IMPAR} state;
    
  always_ff @ (posedge clk)
     if (reset) state <= PAR;
     else
		unique case (state)
			PAR:
				if (in_bit == 0)
					state <= PAR;
				else 
					state <= IMPAR;
			IMPAR:
				if (in_bit == 0)
					state <= IMPAR;
				else
					state <= PAR;
		endcase

  always_comb out_bit <= (state == IMPAR);
 
endmodule 
