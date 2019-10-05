module t_traffic_light;

reg clk,rst,sidecar; 
wire mg,my,mr,sg,sy,sr; 

traffic_light bobo(.sidecar(sidecar),.clk(clk),.rst(rst),
				   .mg(mg),.my(my),.mr(mr),.sg(sg),.sy(sy),.sr(sr));



initial begin

	rst=1'b0;
	clk=1'b1;
	sidecar=1'b0;

	forever#5
	clk=~clk;

end

initial begin
	#15 
	rst=~rst; 
	#180
	sidecar=1'b1;
	#400
	sidecar=1'b0;
end

initial #800 $finish;

endmodule
