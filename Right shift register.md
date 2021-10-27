# 4-bit Right shift register 
<h2>
module rsr(clk,rst,in,out); <br/>
input clk, rst, in; <br/>
output out; <br/>
reg [3:0]q; <br/>
always@(posedge clk) <br/>
begin <br/>
if(rst) <br/>
q<=0; <br/>
else begin <br/>
q[3]<=in; <br/>
q[2]<=q[3]; <br/>
q[1]<=q[2]; <br/>
q[0]<=q[1]; <br/>
end <br/>
end <br/>
assign out=q[0]; <br/>
endmodule </h2>
