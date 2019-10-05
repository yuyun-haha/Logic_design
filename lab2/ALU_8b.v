module ALU_8b(sel,A,B,out);
  input [2:0]sel;
  input [7:0]A,B;
  output reg[7:0] out;
  
  always @(sel,A,B)
   case(sel)
     3'b000:  out= 8'b0 ;
     3'b001:  out= A & B;
     3'b010:  out= A | B;
     3'b011:  out= A ^ B;
     3'b100:  out= ~A;
     3'b101:  out= A - B; 
     3'b110:  out= A + B;
     3'b111:  out= 8'b1 ;
  endcase
  
endmodule
