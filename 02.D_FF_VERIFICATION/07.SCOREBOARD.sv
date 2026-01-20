class scoreboard;
  transaction tr;
  mailbox mb_sco;
  event e;
  
  extern function new(mailbox mb_sco);
    extern task main();
endclass
  
  function scoreboard::new(mailbox mb_sco);
    this.mb_sco=mb_sco;
  endfunction
  
  task scoreboard::main();
    begin
      for(int i=1;i<6;i++)begin
        mb_sco.get(tr);
        tr.display("SCO");
        
        if(tr.rst==0&&tr.q==0)
          $display("\t         test case passed");
        else if(tr.rst==1&&tr.q==tr.d)
          $display("\t         test case passedes");
        else
          $display("\t         test case failed");
        ->e;
        tr.display_line();
      end
    end
  endtask
