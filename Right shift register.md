# 4-bit Right shift register 
<h2>
module rsr(clk,rst,in,out);
input clk, rst, in;
output oyt;
reg [3:0]q;
always@(posedge clk)
begin 
if(rst)
q<=0;
else begin
q[3]<=in;
q[2]<=q[3];
q[1]<=q[2];
q[0]<=q[1];
end
end
assign out=q[0];
endmodule </h2>
