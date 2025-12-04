`include "environment.sv"

program test(intf inf);
 environment env;
  initial begin
    env=new(inf);
    env.testrun();
  end
endprogram
