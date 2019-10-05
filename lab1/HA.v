module HA(x,y,c,s);

output c,s;
input x,y;
assign s=x^y; //xor x1(s,x,y);
assign c=x&y; //and a1(c,x,y); 

endmodule
 
