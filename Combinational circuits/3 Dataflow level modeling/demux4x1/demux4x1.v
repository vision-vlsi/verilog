module demux4x1(d,s1,s0,y0,y1,y2,y3);
  input d,s1,s0;
  output y0,y1,y2,y3;
 assign s0bar=~s0;
 assign s1bar=~s1;
 assign y0=d & s0bar & s1bar;
 assign y1=d & s0 & s1bar ;
 assign y2=d & s0bar & s1 ;
 assign y3=d & s0 & s1 ;
endmodule
