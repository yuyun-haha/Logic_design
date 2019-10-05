module traffic_light(sidecar,clk,rst,mg,my,mr,sg,sy,sr);
 
 input  clk,rst,sidecar; 
 reg[4:0] count; 
 output reg mg,my,mr,sg,sy,sr; 
 parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
 reg[1:0] state,nextstate; 


always@(posedge clk , negedge rst)
 if(!rst) 
    begin
     state<=s0;
     count<=5'b0;
    end
 else state<=nextstate;
   
   
always@(sidecar,posedge clk,state)
 begin

 case(state)
   s0: // mg sr
      
      if((sidecar==1)&&(count>5'b11000))
         begin 
         nextstate<=s1; 
         count<=5'b0;
         end
       else begin
            count<=count+5'b1;
            nextstate<=s0;
            end
  
   s1: //my sr
     
       if (count<5'b00100)
          begin
           
           nextstate<=s1;
           count<=count+5'b1;
          end
       else begin
           nextstate<=s2;
           count<=5'b0;
          end  
   
   s2:  // mr sg
     
       if((sidecar==0)||(count>5'b11000)) 
          begin 
          nextstate<=s3;
          count<=5'b0;
        end
       else 
         begin       
          nextstate<=s2;
          count<=count+5'b1;
         end
    
   s3: //mr sy
       
       if (count<5'b00100)
        begin
          nextstate<=s3;
          count<=count+5'b1;
        end
       else begin
       nextstate<=s0; 
       count<=5'b0;
     end
       
   endcase
  end
  
always@(*)
 case (state)
   s0: {mg,my,mr,sg,sy,sr}=6'b100001;
   s1: {mg,my,mr,sg,sy,sr}=6'b010001;
   s2: {mg,my,mr,sg,sy,sr}=6'b001100;  
   s3: {mg,my,mr,sg,sy,sr}=6'b001010;
 endcase
 

endmodule
