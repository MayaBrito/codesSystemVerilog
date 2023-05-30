//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 5 ---> Problema 2 – Contador de uma Sequência Qualquer
//---------------------------------------------------------------------

parameter BITS_COUNT = 4;

module contador8421 (
  input logic clk,reset, load,
  input logic [BITS_COUNT-1:0] data_in,
  output logic [BITS_COUNT-1:0] count);
  
  assign load <= 1;
  
  always_ff @(posedge clk) begin
    if(reset)
      count <= 0;
    else if(load)
      count <= data_in;
    else begin
      unique case (count) 
        1: count <= 2;
        2: count <= 4;
        4: count <= 8;
        8: count <= 1;
      endcase
    end
  end
  
endmodule
  
