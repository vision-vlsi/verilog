//testbench
`timescale 1ns/1ps
module tb_decoder2to4;
reg a0, a1;
wire d0, d1, d2, d3;
decoder2to4  ins1(a0,a1,d0,d1,d2,d3);
initial begin
$dumpfile("decoder2to4.vcd");
$dumpvars(1);
end
initial begin
   {a1,a0}=2'b00;
#5 {a1,a0}=2'b01;
#5 {a1,a0}=2'b10;
#5 {a1,a0}=2'b11;
end
initial
$monitor("simtime=%0g,a0=%b, a1=%b, d3=%b,d2=%b,d1=%b,d0=%b",$time,a0,a1,d3,d2,d1,d0);
endmodule
