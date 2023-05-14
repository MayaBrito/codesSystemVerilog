//Aluna: Mayara Brito
//Matricula: 121110615
//Disciplina: Laboratório de Organização e Arquitetura de Computadores
//Roteiro 3 ---> Problema - ULA(Unidade Lógica e Aritmética)
//---------------------------------------------------------------------

parameter BITS = 8;

parameter AND = 2'b00;
parameter OR = 2'b01;
parameter ADD = 2'b10;
parameter SUB = 2'b11;

module ULA(
  input logic signed [BITS-1:0] A,B,
  input logic [1:0] F,
  output logic signed [BITS-1:0] SAIDA,
  output logic FLAG_O );

  always_comb begin
    case(F)
      AND: begin
        SAIDA <= A & B;
        FLAG_O <= 0;
      end
     
      OR: begin
        SAIDA <= A | B;
        FLAG_O <= 0;
      end
       
      ADD: begin
        SAIDA <= A + B;
        if((A > 0) && (B > 0) && (SAIDA < 0))
          FLAG_O <= 1;
        else if((A < 0) && (B < 0) && (SAIDA > 0))
          FLAG_O <= 1;
        else
          FLAG_O <= 0;
      end
     
      SUB: begin
        SAIDA <= A - B;   
        if((A > 0) && (B < 0) && (SAIDA < 0)) 
          FLAG_O <= 1;
        else if((A < 0) && (B > 0) && (SAIDA > 0))
          FLAG_O <= 1;
        else
          FLAG_O <= 0;
      end
    endcase
  end
  
endmodule