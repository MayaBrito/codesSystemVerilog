//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 4 ---> Problema 01 Registrador em paralelo/serial
//---------------------------------------------------------------------

parameter BITS = 4;

module RegistradorParaleloSerial (
  input logic clk, reset, SEL, Din_serie,
  input logic [BITS-1:0] Din,
  output logic [BITS-1:0] Dout
);

  always @(posedge clk or posedge reset) begin
    if (reset)
      Dout <= 4'b0;
   else begin
      if (SEL) 
        Dout <= {Din_serie, Dout[BITS-1:1]};
      else 
        Dout <= Din;
    end
  end
  
endmodule