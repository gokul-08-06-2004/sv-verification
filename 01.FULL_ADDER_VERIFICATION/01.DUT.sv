// Code your design here
`include "interface.sv"
module full_adder(intf fu);
  assign fu.sum=fu.a^fu.b^fu.c;
  assign fu.carry=((fu.a&fu.b) | (fu.b&fu.c) | (fu.a&fu.c));
endmodule
