module d_ff(interf.ds inf);
  
  always@(posedge inf.clk or negedge inf.rst)
    begin
      if(!inf.rst)
        inf.q<=0;
      else
        inf.q<=inf.d;
    end
endmodule
