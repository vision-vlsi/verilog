`timescale 1ns/1ps
module andgate_tb;
reg a,b;
wire y;
andgate ins1(a,b,y);
initial
begin
$dumpfile("andgate.vcd");
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
   $monitor("simtime=%0g, a=%b, b=%b, y=%b", $time, a,b,y);
endmodule

