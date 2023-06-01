//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 5 ---> Problema 4 – Detector de sequência 123
//---------------------------------------------------------------------

// size --> Tamanho que define os estados possiveis, nesse caso preciso de 3 estados, e com 2 bits consigo o valor. 
// bits --> Tamanho de bits que utilizarei na entrada, poderia usar o size já que nesse caso os 2 possuem o mesmo valor,
             // porém para legibilidade e diferentes objetivos de cada um achei melhor optar por um novo parameter. 
// port1 --> Representa o acionamento da primeira porta.
// port2 --> Representa o acionamento da segunda porta.
// port3 --> Representa o acionamento da terceira porta.

// O objetivo desse sistema é acionar um alarme, quando as três portas forem acionadas em sequência (1 --> 2 --> 3)

parameter size = 2;
parameter bits = 2;

module FSM_ports123(
  input clk, reset, 
  input logic [bits-1:0] in_port, 
  output alarm);
  
  // Definindo os possíveis estados para o sistema. 
  enum logic [size - 1 : 0] {port1,port2,port3} state;
    
  always_ff @ (posedge clk)
    if (reset) state <= port1;
    else
	unique case (state)
	    port1:
                if (in_port == 2)
		    state <= port2;
          	else 
		    state <= port1;
            port2:
                if (in_port == 3)
                    state <= port3;
                else 
                    state <= port1;
            port3:
                    state <= port1;
	endcase

  always_comb alarm <= (state == port3);
 
endmodule 
