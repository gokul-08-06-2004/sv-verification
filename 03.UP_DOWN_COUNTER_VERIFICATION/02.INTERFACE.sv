interface interf(input logic clk);
  logic rst;
  logic a;
  logic [3:0]q;
  
  modport ds(input clk,rst,a,output q);
  
endinterface
