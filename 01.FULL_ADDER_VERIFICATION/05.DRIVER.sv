class driver;
  
  virtual intf vir;
  transaction tr;
  mailbox gen2drv;
  
  function new(virtual intf vir,mailbox gen2drv);
    this.vir = vir;
    this.gen2drv=gen2drv;
    endfunction
  
  task main();
    
    repeat(5)begin
     
      tr=new();
      gen2drv.get(tr);
      vir.a=tr.a;
      vir.b=tr.b;
      vir.c=tr.c;
      $display("---------------driver class-----------------");
      tr.display("drive the vlaue");
    end
  endtask
endclass
  
