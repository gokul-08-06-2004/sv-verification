class monitor;
  virtual interf vir;
  transaction tr;
  mailbox mb_mon;

  extern function new(virtual interf vir,mailbox mb_mon);
    extern task main();
endclass
      
       
  function monitor::new(virtual interf vir,mailbox mb_mon);
    this.vir=vir;
    this.mb_mon=mb_mon;
  endfunction
  
  task monitor::main();
    begin
      for(int i=1;i<6;i++)begin
        tr=new();
        @(posedge vir.clk)
        #1;
        tr.rst=vir.rst;
        tr.d=vir.d;
        tr.q=vir.q;
        mb_mon.put(tr);
        tr.display("MON");
      end
    end
  endtask
