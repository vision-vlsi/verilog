//Good code - style-2
module demux4x1_beh(d,s1,s0,y0,y1,y2,y3);
  input d,s1,s0;
  output reg y0,y1,y2,y3;
  always@*
  case({s1,s0})  //Good coding
  2'b00: begin y0=d; {y1,y2,y3}=3'b000; end
  2'b01: begin y1=d; {y0,y2,y3}=3'b000; end
  2'b10: begin y2=d; {y0,y1,y3}=3'b000; end
  2'b11: begin y3=d; {y0,y1,y2}=3'b000; end
 endcase
endmodule
