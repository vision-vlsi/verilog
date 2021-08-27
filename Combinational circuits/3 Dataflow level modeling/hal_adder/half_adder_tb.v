`timescale 1ns/1ps
module half_adder_tb;
    reg a,b;
    wire sum,co;
half_adder ha1(a,b,sum,co);
  initial
    begin
      $dumpfile("ha.vcd");
      $dumpvars(1);
    end
  initial
    begin
         {a,b}=2'b00;
      #5 {a,b}=2'b01;
      #5 {a,b}=2'b10;
      #5 {a,b}=2'b11;
    end
  initial
    $monitor("simtime=%0g, a=%b, b=%b, sum=%b, co=%b", $time, a,b,sum,co);
endmodule
