module decoder2to4_df(a0,a1,d0,d1,d2,d3);
input a0, a1;
output d0,d1,d2,d3;
assign a1bar=~a1;
assign a0bar=~a0;
assign d0=a1bar & a0bar;
assign d1=a1bar & a0;
assign d2=a1 & a0bar;
assign d3=a0 & a1;
endmodule
