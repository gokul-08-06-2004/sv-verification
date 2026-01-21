//updown_counter

module up_down_counter(interf.ds inf);
  
  always@(posedge inf.clk or posedge inf.rst)begin
    if(inf.rst)begin
      inf.q<=0;
    end
  else begin
    if(inf.a)
    inf.q<=inf.q+1;
  else 
    inf.q<=inf.q-1;
  end
  end
endmodule
  
    
