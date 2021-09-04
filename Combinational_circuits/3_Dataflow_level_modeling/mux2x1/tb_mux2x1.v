`timescale 1ns/1ps
module tb_mux2x1;
  reg a,b,s;
  wire y;
   mux2x1 ins1(a,b,s,y);
  initial
begin
  $dumpfile("mux2x1.vcd");
 $dumpvars(1);
end
initial
begin
     a=1'b0; b=1'b1;
     s=1'b0;
  #5 s=1'b1;
  #5 s=1'b0;
end
initial
  $monitor("simtime=%0g, a=%b, b=%b, s=%b, y=%b", $time, a,b,s,y);
endmodule
