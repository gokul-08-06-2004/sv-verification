`include "environment.sv"

program test(interf inf);
  environment env;
  initial begin
    env=new(inf);
    env.finish();
  end
endprogram

// If your driver is called from program block
// Example earlier you used:
// program test(intf inf);
// Then driver executes in Reactive region, which is AFTER DUT.
// So:
// ✔️ DUT samples first
// ✔️ Driver updates later
// ✔️ NO race
// So if your driver runs under program, you are SAFE.
