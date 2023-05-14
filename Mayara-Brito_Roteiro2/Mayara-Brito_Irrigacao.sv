//Para o Simulador do TIPO II, deverá ser utilizada apenas a saída (Saida[1:0]) 
//para indicar quais áreas estão com baixa umidade, de acordo com a 
//codificação a seguir.

//Saída (00): as duas áreas estão com umidade adequada;
//Saída (01): área 0 está com baixa umidade;
//Saída (10): área 1 está com baixa umidade;
//Saída (11): as duas áreas estão com baixa umidade.

module circuit(
  input logic[1:0] U,
  output logic [1:0]Saida);

  always_comb Saida <= U;

endmodule