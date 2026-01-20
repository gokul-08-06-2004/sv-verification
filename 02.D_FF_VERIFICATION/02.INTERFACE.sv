interface interf(input logic clk);
  logic rst;
  logic d;
  logic q;
  
  modport ds(input clk,rst,d,output q);
  
endinterface
