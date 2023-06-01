//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 5 ---> Problema 2 – Contador de uma Sequência Qualquer
//---------------------------------------------------------------------

// BITS_COUNT --> Representa a quantidade de bits necessária para o contador(count) e para o dado de entrada(data_in). 
  // Nesse sistema temos configurado um contador em anel, nesse caso ele está definido para a seguinte sequência:
    // 1 --> 2 --> 4 --> 8, quando chega ao valor máximo retorna ao primeiro, seguindo a ideia de anel(loop).

// load --> Inicializa o sistema com um valor já definido, o data_in, caso o valor passado esteja fora do conjunto 
          // de sequência exibido acima, o sistema não aplicará nenhuma ação.
          // Uma vez que o sistema é iniciado com um data_in atribuído, para alterar o valor do data_in devesse 
              // utilizar o reset para reiniciar o sistema, assim informando um novo valor de entrada.

// reset --> reseta o sistema, voltando o contador para 0 e nesse caso esperasse o load para inicializar o sistema.

parameter BITS_COUNT = 4;

module contador8421 (
  input logic clk,reset, load,
  input logic [BITS_COUNT-1:0] data_in,
  output logic [BITS_COUNT-1:0] count);
  
  always_ff @(posedge clk) begin
    if(reset)
      count <= 0;
    else if(load) begin
      count <= data_in;
      unique case (count) 
        1: count <= 2;
        2: count <= 4;
        4: count <= 8;
        8: count <= 1;
      endcase
    end     
  end 
endmodule
  
