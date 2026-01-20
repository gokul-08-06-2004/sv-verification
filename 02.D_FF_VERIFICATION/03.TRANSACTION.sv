class transaction;
  
  rand bit rst;
  rand bit d;                                                          
  bit q;
  static bit [3:0]count;//count value are store in single memory
  constraint c1{if(count<1)//count has been choose the rst condition randomly and also print the count value depending on repeat loop:
               rst==0;
               else 
               rst==1;
               }
  
  extern function void display(string name);
    extern function void display_line();
      extern function void check();
endclass

  
  function void  transaction::display(string name);
    $display("time=%0t [%s]  count=%0d rst=%0d d=%0d q=%0d",$time,name,count,rst,d,q);
  endfunction
  
  function  void  transaction::display_line();
    $display("--------------------------------------");
  endfunction
  
  function void transaction::check();
    count++;
  endfunction
