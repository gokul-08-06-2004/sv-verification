// Code your testbench here
// or browse Examples

`include "interface.sv"
`include "test.sv"
module tb;
  
  intf inf();
  test t1(inf);
  
  full_adder dut(inf);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule 
  
  
