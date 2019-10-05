module ADDER_4b(x,y,co,carry,s);


output [3:0]s;
output carry;
wire [3:0]cin;
input co;
input [3:0]x;
input [3:0]y;


FA a0(.s(s[0]),.cin(co) ,.cout(cin[1]),.x(x[0]),.y(y[0]));
FA a1(.s(s[1]),.cin(cin[1]),.cout(cin[2]),.x(x[1]),.y(y[1]));
FA a2(.s(s[2]),.cin(cin[2]),.cout(cin[3]),.x(x[2]),.y(y[2]));
FA a3(.s(s[3]),.cin(cin[3]),.cout(carry) ,.x(x[3]),.y(y[3]));

endmodule

