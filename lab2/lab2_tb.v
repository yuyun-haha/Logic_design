module lab2_t;

reg [7:0]A,B; 
reg [2:0]sel;
wire [7:0]out;

ALU_8b aaa(.sel(sel),.A(A),.B(B),.out(out));


initial begin

$monitor ($time , "A = %b B = %b sel = %b out = %b ", A, B,sel,out  );


A=8'b11100111;
B=8'b00000110;
sel=3'b000;

repeat(7)
#10
sel=sel+1;
end




initial #80 $finish;




endmodule

