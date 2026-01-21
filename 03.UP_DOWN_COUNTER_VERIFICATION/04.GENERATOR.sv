class generator;
  transaction tr;
  mailbox mb_gen;
  virtual interf vir;
  event e;
  
  extern function new(mailbox mb_gen);
    extern task main();
endclass
      
      function generator::new(mailbox mb_gen);
        begin
          this.mb_gen=mb_gen;
          end
      endfunction
      
      task generator::main();
        begin
          for(int i=0;i<10;i++)begin
            tr=new();
//             @(posedge vir.clk)
//           #1;
            void'(tr.randomize());
            tr.check();
            mb_gen.put(tr);
            tr.display_line();
            tr.display("GEN");
            @(e);
          end
        end
      endtask
      
            
