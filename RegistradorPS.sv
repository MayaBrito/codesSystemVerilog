//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 4 ---> Problema 01 Registrador em paralelo/serial
//---------------------------------------------------------------------

parameter BITS = 4;

module RegistradorParaleloSerial (
  input logic clk, reset, SEL,
  input logic [BITS-1:0] Din_serie,
  input logic [BITS-1:0] Din,
  output logic [BITS-1:0] Dout
);

  reg [BITS-1:0] reg_data;

  always @(posedge clk or posedge reset) begin
    if (reset)
      reg_data <= 4'b0;
   	else begin
      if (SEL) 
        // Modo Serial
        reg_data <= {reg_data[2:0], Din_serie};
      else 
        // Modo Paralelo
        reg_data <= Din;
    end
  end

  assign Dout = reg_data;

endmodule