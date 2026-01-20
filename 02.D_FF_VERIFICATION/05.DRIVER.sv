class driver;
  virtual interf vir;
  transaction tr;
  mailbox mb_drv;

  extern function new(virtual  interf vir,mailbox mb_drv);
    extern task main();
endclass

  
  function driver::new(virtual interf vir,mailbox mb_drv);
    this.vir=vir;
    this.mb_drv=mb_drv;
  endfunction
  
  task driver::main();
    for(int i=1;i<6;i++)begin
      mb_drv.get(tr);
      vir.rst=tr.rst;
      vir.d=tr.d;
      tr.display("DRI"); 
    end
  endtask
