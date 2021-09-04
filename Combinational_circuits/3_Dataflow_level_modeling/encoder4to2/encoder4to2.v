module encoder4to2(y3,y2,y1,y0,a1,a0);
  input y3,y2,y1,y0;
  output a1,a0;
 assign a0=y1|y3;
 assign a1=y2|y3;
endmodule
