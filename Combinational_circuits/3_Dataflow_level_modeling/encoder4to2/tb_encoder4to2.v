`timescale 1ns/1ps
module tb_encoder4to2;
  reg y3,y2,y1,y0;
  wire a1,a0;
   encoder4x2 ins1(y3,y2,y1,y0,a1,a0);
  initial
begin
  $dumpfile("encoder4x2.vcd");
   $dumpvars(1);
end
initial
begin
      y3=1'b0; y2=1'b0; y1=1'b0; y0=1'b1;
   #5 y3=1'b0; y2=1'b0; y1=1'b1; y0=1'b0;
   #5 y3=1'b0; y2=1'b1; y1=1'b0; y0=1'b0;
   #5 y3=1'b1; y2=1'b0; y1=1'b0; y0=1'b0;
end
initial
  $monitor("simtime=%0g, y3=%b, y2=%b, y1=%b, y0=%b, a1=%b, a0=%b", $time, y3,y2,y1,y0,a1,a0);
endmodule
