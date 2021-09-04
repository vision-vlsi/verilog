`timescale 1ns/1ps
module tb_full_adder;
   reg a,b,cin;
   wire sum,co;
  full_adder fa1(a,b,cin,sum,co);
   initial
    begin
      $dumpfile("fa.vcd");
       $dumpvars(1);
    end
  initial
    begin
          {a,b,cin}=3'b000;  //0
      #5  {a,b,cin}=3'b001;  //1
      #5  {a,b,cin}=3'b010;  //2
      #5  {a,b,cin}=3'b011;  //3
      #5  {a,b,cin}=3'b100;  //4
      #5  {a,b,cin}=3'b101;  //5
      #5  {a,b,cin}=3'b110;  //6
      #5  {a,b,cin}=3'b111;  //7
    end
  initial
    $monitor("simtime=%0g, a=%b, b=%b, cin=%b, sum=%b, co=%b", $time, a,b,cin,sum,co);
endmodule
