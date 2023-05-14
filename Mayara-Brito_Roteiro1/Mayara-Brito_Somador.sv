//Variáveis de entrada aplicando sinal(COMP2):  
//A: Representação do 1º valor
//B: Representação do 2º valor

//Variáveis de saída aplicando sinal(COMP2):
//S: Resultado da soma entre os valores

//Variáveris de saída lógica:
//Z: Verifica se o resultado é zero
//N: Verifica se o resultado é negativo
//P: Verifica se o resultado é par

//Variável que é setada a quantidade de bits para representação dos valores 
parameter BITS = 8;

module fullAdder
  (input logic signed[BITS-1:0] A, B,
   	output logic signed[BITS-1:0] S,
  	output logic Z,N,P);
 
  always_comb begin 
    
    S <= A + B ;
   	Z <= ~|S;
   	N <= ~S[BITS-1]+1;
   	P <= ~S[0];
    
  end
 
endmodule