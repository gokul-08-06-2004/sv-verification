class monitor;
  virtual interf vir;
  mailbox mb_mon;
  transaction tr;
  
  extern function new(virtual interf vir,mailbox mb_mon);
    extern task main();
      
      endclass
      
      function  monitor::new(virtual interf vir,mailbox mb_mon);
        this.vir=vir;
        this.mb_mon=mb_mon;
      endfunction
      
      task  monitor::main();
        begin
       
          for(int i=0;i<10;i++)begin
            tr=new();
            @(posedge vir.clk)
               #1;
            tr.rst=vir.rst;
            tr.a=vir.a;
            tr.q=vir.q;
            mb_mon.put(tr);
            tr.display("MON");
          end
        end
      endtask
