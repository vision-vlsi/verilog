//Faulty code
module demux4x1_beh(d,s1,s0,y0,y1,y2,y3);
  input d,s1,s0;
  output reg y0,y1,y2,y3;
  always@*
  case({s1,s0})  //bad coding
  2'b00: y0=d;
  2'b01: y1=d;
  2'b10: y2=d;
  2'b11: y3=d;
 endcase
endmodule