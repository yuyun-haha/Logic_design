module FA(x,y,cin,cout,s);

output cout,s;
input x,y,cin;
wire a1,a2,a3;

HA t1(.s(a1),.c(a2),.x(x),.y(y));
HA t2(.s(s),.c(a3),.x(a1),.y(cin));
or o1(cout,a2,a3);

endmodule

