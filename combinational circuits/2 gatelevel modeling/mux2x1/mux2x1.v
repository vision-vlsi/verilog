module mux2x1(a,b,s,y);
  input a,b,s;
  output y;
  wire sbar,o1,o2;
  not(sbar,s);
  and(o1,sbar,a);
  and(o2,s,b);
  or(y,o1,o2);
endmodule
