//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 5 ---> Problema 3 – Detector de Paridade Par
//---------------------------------------------------------------------
parameter size = 1;
module detector_paridade_par(
  input clk, reset, in_bit, 
  output out_bit);
  
  enum logic [size - 1 : 0] {FALSE, TRUE} state;
    
  always_ff @ (posedge clk)
    if (reset) state <= TRUE;
     else
		unique case (state)
			FALSE:
              if (in_bit == 1)
					state <= TRUE;
				else 
					state <= FALSE;
			TRUE:
              	if (in_bit == 1)
					state <= FALSE;
				else
					state <= TRUE;
		endcase

  always_comb out_bit <= (state == TRUE);
 
endmodule 
