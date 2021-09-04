module andgate_beh(a,b,y);
input a,b;
output reg y;
always@*
  y=a&b;
endmodule