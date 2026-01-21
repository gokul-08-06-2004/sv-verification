`include "interface.sv"
`include "test.sv"
module  tb;

  bit clk;
  interf inf(clk);
  test t1(inf);
  up_down_counter dut(inf.ds);
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial  begin
    $dumpfile("dump.vcd");
    $dumpvars();
    
    #400;
    $finish;
  end
endmodule

// # run -all
// # ---------------------------------
// # time=0 [GEN] count=1 rst=1 a=1 q=0
// # time=5 [DRV] count=1 rst=1 a=1 q=0
// # time=6 [MON] count=1 rst=1 a=1 q=0
// # time=6 [SCO] count=1 rst=1 a=1 q=0
// #  DATA IS MATCHED
// # ---------------------------------
// # ---------------------------------
// # time=6 [GEN] count=2 rst=0 a=1 q=0
// # time=15 [DRV] count=2 rst=0 a=1 q=0
// # time=16 [MON] count=2 rst=0 a=1 q=0
// # time=16 [SCO] count=2 rst=0 a=1 q=0
// #  DATA IS MATCHED
// # ---------------------------------
// # ---------------------------------
// # time=16 [GEN] count=3 rst=0 a=0 q=0
// # time=25 [DRV] count=3 rst=0 a=0 q=0
// # time=26 [MON] count=3 rst=0 a=0 q=1
// # time=26 [SCO] count=3 rst=0 a=0 q=1
// #  DATA IS MATCHED
// # ---------------------------------
// # ---------------------------------
// # time=26 [GEN] count=4 rst=0 a=1 q=0
// # time=35 [DRV] count=4 rst=0 a=1 q=0
// # time=36 [MON] count=4 rst=0 a=1 q=0
// # time=36 [SCO] count=4 rst=0 a=1 q=0
// #  DATA IS MATCHED
// # ---------------------------------
// # ---------------------------------
// # time=36 [GEN] count=5 rst=0 a=1 q=0
// # time=45 [DRV] count=5 rst=0 a=1 q=0
// # time=46 [MON] count=5 rst=0 a=1 q=1
// # time=46 [SCO] count=5 rst=0 a=1 q=1
// #  DATA IS MATCHED
// # ---------------------------------
// # ---------------------------------
// # time=46 [GEN] count=6 rst=0 a=1 q=0
// # time=55 [DRV] count=6 rst=0 a=1 q=0
// # time=56 [MON] count=6 rst=0 a=1 q=2
// # time=56 [SCO] count=6 rst=0 a=1 q=2
// #  DATA IS MATCHED
// # ---------------------------------
// # ---------------------------------
// # time=56 [GEN] count=7 rst=0 a=0 q=0
// # time=65 [DRV] count=7 rst=0 a=0 q=0
// # time=66 [MON] count=7 rst=0 a=0 q=3
// # time=66 [SCO] count=7 rst=0 a=0 q=3
// #  DATA IS MATCHED
// # ---------------------------------
// # ---------------------------------
// # time=66 [GEN] count=8 rst=0 a=0 q=0
// # time=75 [DRV] count=8 rst=0 a=0 q=0
// # time=76 [MON] count=8 rst=0 a=0 q=2
// # time=76 [SCO] count=8 rst=0 a=0 q=2
// #  DATA IS MATCHED
// # ---------------------------------
// # ---------------------------------
// # time=76 [GEN] count=9 rst=0 a=0 q=0
// # time=85 [DRV] count=9 rst=0 a=0 q=0
// # time=86 [MON] count=9 rst=0 a=0 q=1
// # time=86 [SCO] count=9 rst=0 a=0 q=1
// #  DATA IS MATCHED
// # ---------------------------------
// # ---------------------------------
// # time=86 [GEN] count=10 rst=0 a=0 q=0
// # time=95 [DRV] count=10 rst=0 a=0 q=0
// # time=96 [MON] count=10 rst=0 a=0 q=0
// # time=96 [SCO] count=10 rst=0 a=0 q=0
// #  DATA IS MATCHED
// # ---------------------------------
