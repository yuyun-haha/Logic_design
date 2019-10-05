module ADD_SUB(m,x,y,carry,s);


output carry; //c4
output [3:0]s;
input [3:0]x,y;
input m;
wire [3:0]k;

assign k[0]=y[0]^m;
assign k[1]=y[1]^m;
assign k[2]=y[2]^m;
assign k[3]=y[3]^m;

/*xor p1(k[0],y[0],m);
xor p2(k[1],y[1],m);
xor p3(k[2],y[2],m);
xor p4(k[3],y[3],m);*/
ADDER_4b b(.x(x),.y(k),.co(m),.carry(carry),.s(s));


endmodule



