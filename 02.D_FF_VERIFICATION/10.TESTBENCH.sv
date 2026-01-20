`include "test.sv"
`include "interface.sv"
module tb;
  
  bit clk;
  interf inf(clk);
  
  test t1(inf);
  d_ff dut(inf.ds);
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    
    #100;
    $finish;
  end
endmodule

// # --------------------------------------
// # time=0 [GEN]      count=1 rst=0 d=0 q=0
// # time=0 [DRI]      count=1 rst=0 d=0 q=0
// # time=6 [MON]      count=1 rst=0 d=0 q=0
// # time=6 [SCO]      count=1 rst=0 d=0 q=0
// # 	         test case passed
// # --------------------------------------
// # --------------------------------------
// # time=6 [GEN]      count=2 rst=1 d=1 q=0
// # time=6 [DRI]      count=2 rst=1 d=1 q=0
// # time=16 [MON]      count=2 rst=1 d=1 q=1
// # time=16 [SCO]      count=2 rst=1 d=1 q=1
// # 	         test case passedes
// # --------------------------------------
// # --------------------------------------
// # time=16 [GEN]      count=3 rst=1 d=0 q=0
// # time=16 [DRI]      count=3 rst=1 d=0 q=0
// # time=26 [MON]      count=3 rst=1 d=0 q=0
// # time=26 [SCO]      count=3 rst=1 d=0 q=0
// # 	         test case passedes
// # --------------------------------------
// # --------------------------------------
// # time=26 [GEN]      count=4 rst=1 d=1 q=0
// # time=26 [DRI]      count=4 rst=1 d=1 q=0
// # time=36 [MON]      count=4 rst=1 d=1 q=1
// # time=36 [SCO]      count=4 rst=1 d=1 q=1
// # 	         test case passedes
// # --------------------------------------
// # --------------------------------------
// # time=36 [GEN]      count=5 rst=1 d=0 q=0
// # time=36 [DRI]      count=5 rst=1 d=0 q=0
// # time=46 [MON]      count=5 rst=1 d=0 q=0
// # time=46 [SCO]      count=5 rst=1 d=0 q=0
// # 	         test case passedes
// # --------------------------------------
