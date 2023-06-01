//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 5 ---> Problema 3 – Detector de Paridade Par
//---------------------------------------------------------------------

// Size --> Tamanho que define os estados possiveis 
// PARIDADE_VALIDA --> É quando a sequência lida possui uma quantidade par de bits iguais a 1
// PARIDADE_INVALIDA --> É quando a sequência lida possui uma quantidade impar de bits iguais a 1, 
			//nesse caso tornando inválida a paridade esperada que nesse caso seria paridade par. 

parameter size = 1;

module detector_paridade_par(
  input clk, reset, in_bit, 
  output out_bit);
  
  enum logic [size - 1 : 0] {PARIDADE_VALIDA, PARIDADE_INVALIDA} state;
    
  always_ff @ (posedge clk)
    if (reset) state <= PARIDADE_INVALIDA;
     else
		unique case (state)
			PARIDADE_VALIDA:
              if (in_bit == 1)
					state <= PARIDADE_INVALIDA;
				else 
					state <= PARIDADE_VALIDA;
			PARIDADE_INVALIDA:
              	if (in_bit == 1)
					state <= PARIDADE_VALIDA;
				else
					state <= PARIDADE_INVALIDA;
		endcase

  always_comb out_bit <= (state == PARIDADE_INVALIDA);
 
endmodule 
