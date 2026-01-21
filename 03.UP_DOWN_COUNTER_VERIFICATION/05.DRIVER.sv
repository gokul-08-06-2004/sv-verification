class driver;
  virtual interf vir;
  transaction tr;
  mailbox mb_drv;
  
  extern function new(virtual interf vir,mailbox mb_drv);
    extern task main();
      
endclass
      
      function driver::new(virtual interf vir,mailbox mb_drv);
        this.vir=vir;
        this.mb_drv=mb_drv;
      endfunction
      
      task  driver::main();
        begin
          for(int i=0;i<10;i++)begin
            mb_drv.get(tr);
            @(posedge vir.clk)
            vir.rst<=tr.rst;
            vir.a<=tr.a;
            tr.display("DRV");
          end
        end
      endtask
          
  
