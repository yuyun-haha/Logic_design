module lab1_t;

reg [3:0]x; 
reg [3:0]y;
reg m;
wire carry;
wire [3:0]s;

ADD_SUB add(.s(s), .carry(carry), .x(x), .y(y),.m(m));

initial begin
x = 4'b0000; y = 4'b0000; m =0;
end

always #10 begin
  $monitor ($time, "x = %b y = %b s = %b carry = %b m = %b", x, y,s,carry ,m );
m=m+1;

end

always #20 begin
x=x+1;
end

always #320 begin
y=y+1;
end

initial #5120 $finish;

endmodule
