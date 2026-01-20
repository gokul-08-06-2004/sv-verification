class generator;
  
  transaction tr;//declearing the transaction class beacuse signal transaction 
  mailbox mb_gen;//random value can be put into mailbox
  event e;//event in used wait and triggering purpose
  
  extern function new(mailbox mb_gen);
  extern task main();

endclass


  function generator::new(mailbox mb_gen);
       //getting the mailbox handle from env, in order to share the transaction packet between the generator and driver, the same mailbox is shared between both.
    this.mb_gen=mb_gen;
  endfunction
  
  task generator::main();
    for(int i=1;i<6;i++)begin
      tr=new();
      void'(tr.randomize());
      tr.check();
      mb_gen.put(tr);
      tr.display_line();
      tr.display("GEN");
      @(e);
    end
  endtask
