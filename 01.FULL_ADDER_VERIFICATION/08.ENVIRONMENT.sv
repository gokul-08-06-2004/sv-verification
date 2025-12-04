`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;

  generator gen;
  driver drv;
  monitor mon;
  scoreboard sco;
  
  virtual intf vir;
  
  mailbox gen2drv;
  mailbox mon2scb;
  
  function new(virtual intf vir);
    this.vir=vir;
    gen2drv=new();
    mon2scb=new();
    gen=new(gen2drv);
    drv=new(vir,gen2drv);
    mon=new(vir,mon2scb);
    sco=new(mon2scb);
    
  endfunction
  
  task testrun();
    fork 
      gen.main();
      drv.main();
      mon.main();
      sco.main();
    join
  endtask
endclass
