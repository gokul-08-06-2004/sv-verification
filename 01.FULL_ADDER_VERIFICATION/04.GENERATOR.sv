class generator;
  transaction tr;
  mailbox gen2drv;
  
  function new(mailbox gen2drv);
    this.gen2drv=gen2drv;
  endfunction
  
  task main();
    
    repeat (5)begin
      $display("---------------generator class--------------");
      tr=new();
      $display("---------------memory_created---------------");
      tr.randomize();
      tr.display("value are generator");
      gen2drv.put(tr);
      #3;
    end
  endtask
endclass
        
