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
  
  mailbox mb_gen;
  mailbox mb_mon;
  
  virtual interf vir;
  event e1;
  
  extern function new(virtual interf vir);
  extern task finish();

endclass

  function environment::new(virtual interf vir);
    
    this.vir=vir;
    //created mailbox 
    mb_gen=new();
    mb_mon=new();
    //creating geerator and driver
    gen=new(mb_gen);
    drv=new(vir,mb_gen);
    mon=new(vir,mb_mon);
    sco=new(mb_mon);
    
    gen.e=e1;
    sco.e=e1;
  endfunction
  
  task environment::finish();
    fork
      gen.main();
      drv.main();
      mon.main();
      sco.main();
    join
  endtask
