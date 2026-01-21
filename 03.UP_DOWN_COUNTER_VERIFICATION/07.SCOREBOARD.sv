class scoreboard;
  transaction tr;
  mailbox mb_sco;
  event e;
  bit [3:0]prev_q;
  
  
  extern function new(mailbox mb_sco);
    extern task main();
      
      endclass
      
      function scoreboard::new(mailbox mb_sco);
        this.mb_sco=mb_sco;
      endfunction
      
      task scoreboard::main();
        begin
          for(int i=0;i<10;i++)begin
            mb_sco.get(tr);
            tr.display("SCO");
           // Compare with old expected value  
        if(prev_q==tr.q)
          $display(" DATA IS MATCHED");
        else 
          $display("DATA IS NOT MATCHED");
            // now update expected for NEXT cycle
            if(tr.rst)begin
              prev_q=0;
            end
               else begin
                 case(tr.a)
            1 : prev_q = prev_q + 1;
            0 : prev_q = prev_q - 1;
          endcase
               end
            ->e;
            tr.display_line();
          end
        end
      endtask
