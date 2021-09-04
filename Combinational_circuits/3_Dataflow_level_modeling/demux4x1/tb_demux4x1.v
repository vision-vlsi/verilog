`timescale 1ns/1ps
module tb_demux4x1;
  reg d,s1,s0;
  wire y0,y1,y2,y3;
  demux4x1  ins1(d,s1,s0,y0,y1,y2,y3);
  initial
begin
   $dumpfile("demux4x1.vcd");
   $dumpvars(1);
end

  initial
begin
  
   d=1'b0; {s1,s0}=2'b00;
#5 d=1'b1; {s1,s0}=2'b01;
#5 d=1'b0;{s1,s0}=2'b10;
#5 d=1'b1; {s1,s0}=2'b11;
end
initial
  $monitor("simtime=%0g, d=%b, s1=%b, s0=%b, y0=%b,y1=%b,y2=%b,y3=%b", $time, d, s1,s0,y0,y1,y2,y3);
endmodule
  
