class monitor;
  virtual intf vir;
  transaction tr;
  mailbox mon2scb;
  
  function new(virtual intf vir,mailbox mon2scb);
    this.vir=vir;
    this.mon2scb=mon2scb;
  endfunction
  
  task main();
    repeat(5)begin
    
      #2;
      tr=new();
      tr.a=vir.a;
      tr.b=vir.b;
      tr.c=vir.c;
      tr.sum=vir.sum;
      tr.carry=vir.carry;
        $display("---------------monitor class----------------");
      tr.display("value are monitor");
      mon2scb.put(tr);
      
    end
  endtask
endclass
      
