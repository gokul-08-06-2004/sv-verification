class transaction;
  rand bit rst;
  randc bit a;
  bit [3:0] q;
  static bit [3:0]count;
    constraint c1{if(count==0)
                rst==1;
               else
               rst==0;}
//   constraint c2{ a dist{0:=50,1:=50};}
  extern function void display(string name);
    extern function void display_line();
      extern function void check();
endclass

function void transaction::display(string name);
  $display("time=%0d [%0d] count=%0d rst=%0d a=%0d q=%0d",$time,name,count,rst,a,q);
endfunction

function void transaction::display_line();
  $display("---------------------------------");
endfunction

      function void transaction::check();
        count++;
      endfunction

  
