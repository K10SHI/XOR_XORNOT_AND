`include "VERILOG_CIRCUITS3.v"

module XOR_XORNOT_AND_gates_tb;
reg a, b, c;
wire  d, e, f, y;
XOR_XORNOT_AND_gates Instance0 ( d, e, f, y, a, b,c);
 initial begin
      a = 0; b = 0; c = 1; 
   #1 a = 0; b = 1; c = 0;
   #1 a = 1; b = 0; c = 0;
   #1 a = 1; b = 1; c = 1;
 end
 initial begin
   $monitor ("T=%t |a=%b |b=%b |c=%b |d(xor)=%b |e(xor)=%b |f(not)=%b | y(and)=%b", $time, a, b, c, d, e,f,y);
   $dumpfile ("dump.vcd");
   $dumpvars ();
 end
endmodule