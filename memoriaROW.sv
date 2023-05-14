//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 4 ---> Problema 3 – Memória RAM ROM
//---------------------------------------------------------------------

parameter ADDR_WIDTH = 2;
parameter DATA_WIDTH = 4;

module RAM_ROM(
  input logic [ADDR_WIDTH-1:0] addr,
  output logic [DATA_WIDTH-1:0] data_out);
  
  always_comb
    case(addr)
    2'b00: data_out = 4'b0100;
    2'b01: data_out = 4'b1100;
    2'b10: data_out = 4'b0110;
    2'b11: data_out = 4'b0111;
    endcase
  
endmodule