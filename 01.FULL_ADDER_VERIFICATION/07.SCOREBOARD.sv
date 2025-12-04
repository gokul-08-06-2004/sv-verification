class scoreboard;

  transaction tr;
  mailbox mon2scb;
  
  function new(mailbox mon2scb);
 
    this.mon2scb=mon2scb;
  endfunction
  
  task main();
    
    repeat(5)begin
      
      tr=new();
      mon2scb.get(tr);
      $display("-------------class scoreboard---------------");
      tr.display(" value  in  scoreboard");
      
      if ((tr.a^tr.b^tr.c)==tr.sum && ((tr.a & tr.b )|(tr.b & tr.c)|(tr.c & tr.a)) == tr.carry)begin
        $display("expected value == monitor value ");
        $display("\n");
      end
      
           else
             $display("Incorrect");
      
    end
  endtask
endclass
  
