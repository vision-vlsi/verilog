module decoder2to4(a0,a1,d0,d1,d2,d3);
input a0, a1;
output d0,d1,d2,d3;
  not(a0bar,a0);
not(a1bar,a1);
and(d0,a0bar,a1bar);
and(d1,a0,a1bar);
and(d2,a0bar,a1);
and(d3,a0,a1);
endmodule
