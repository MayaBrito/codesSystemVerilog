//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 5 ---> Problema 1 – Contador Up/Down
//---------------------------------------------------------------------

// BITS --> Representa a quantidade de bits que meu contador vai receber, nesse caso o contador está funcionando de
// [0:15] porque está sendo iniciado com 4 bits, dessa forma pode ser alterado conforme a escolha dos limites de contagem.

// sel --> Representa a ação de incremento ou decremento do contador. 
	// (sel = 1) o contador funcionará de maneira crescente.
	// (sel = 0) o contador funcionará de maneira descrescente.

parameter BITS = 4;

module contadorUpDown(
	input logic reset, clk, sel,
  output logic [BITS-1:0]count);
  
  initial begin
    count <= ((1<<BITS)-1);
  end
		
  always_ff @(posedge reset or posedge clk) begin
     
    if (reset)
      count <= ((1<<BITS)-1); 
    else begin 
      if (sel) 
        count <= count + 1; // UP
      else
        count <= count - 1; // DOWN
    end 
  end 
      
endmodule
