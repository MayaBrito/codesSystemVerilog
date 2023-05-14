//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 4 ---> Problema 2 – Memória RAM R/W
//---------------------------------------------------------------------

parameter ADDR_WIDTH = 2;
parameter DATA_WIDTH = 4;

module MemoriaRAM (
  input logic clk, reset, SEL,
  input logic [ADDR_WIDTH - 1:0] Addr,
  input logic [DATA_WIDTH - 1:0] Din,
  output logic [DATA_WIDTH - 1:0] Dout
);

  logic [DATA_WIDTH - 1:0] ram [0:(1<<ADDR_WIDTH)-1];

  always_ff @(posedge clk) begin
    if (reset) ram[Addr] <= '0;
    else begin
      if (SEL) 
        ram[Addr] <= Din;
      else
        Dout <= ram[Addr];
    end
  end
endmodule