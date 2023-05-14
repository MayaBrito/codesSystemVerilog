//Variáveis de entrada:
//A1 - 1º Andar
//A2 - 2º Andar
//A3 - Aº Andar 
//M - Status de movimentação do elevador

//Saída do circuito:
//P - Status para a porta do elevador

//A saída só é 1 quando M = 0 e o elevador está 
//presente somente em um dos andares

module elevador( input logic M, A1, A2, A3, 
                output logic P); 
  
  always_comb P <= (~M & (A1 | A2 | A3)); 

endmodule