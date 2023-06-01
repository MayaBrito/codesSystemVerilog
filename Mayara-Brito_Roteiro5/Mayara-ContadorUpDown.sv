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

// reset --> Representa a ação de reiniciar o contador, para continuar um novo processo de contagem. 

parameter BITS = 4;

module contadorUpDown(
	input logic reset, clk, sel,
  output logic [BITS-1:0]count);
  
  // Inicializa o sistema com o contador já com o valor máximo representado pela quantidade de bits definida.
  initial count <= ((1<<BITS)-1); 
		
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
