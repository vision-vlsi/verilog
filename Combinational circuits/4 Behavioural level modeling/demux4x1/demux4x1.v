module demux4x1(d,s1,s0,y0,y1,y2,y3);
  input d,s1,s0;
  output y0,y1,y2,y3;
  always@*
  case({s1,s0})
  2'b00: y0=d;
  2'b01: y1=d;
  2'b10: y2=d;
  2'b11: y3=d;
 endcase
endmodule