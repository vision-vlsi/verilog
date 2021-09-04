module demux4x1(d,s1,s0,y0,y1,y2,y3);
  input d,s1,s0;
  output y0,y1,y2,y3;
  not(s0bar,s0);
  not(s1bar,s1);
  and(y0,s1bar,s0bar,d);
  and(y1,s1bar,s0);
  and(y2,s1,s0bar);
  and(y3,s1,s0);
endmodule
