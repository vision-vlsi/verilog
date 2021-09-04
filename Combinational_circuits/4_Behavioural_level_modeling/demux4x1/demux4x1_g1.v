//Good code - style-1
module demux4x1_beh(d,s1,s0,y0,y1,y2,y3);
  input d,s1,s0;
  output reg y0,y1,y2,y3;
  always@*
  case({s1,s0})  //Good coding
  2'b00: begin y0=d; y1=1'b0; y2=1'b0; y3=1'b0; end
  2'b01: begin y0=1'b0; y1=d; y2=1'b0; y3=1'b0; end
  2'b10: begin y0=1'b0; y1=1'b0; y2=d; y3=1'b0; end
  2'b11: begin y0=1'b0; y1=1'b0; y2=1'b0; y3=d; end
  endcase
endmodule