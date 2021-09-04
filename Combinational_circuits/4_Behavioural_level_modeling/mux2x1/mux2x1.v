module mux2x1_beh(a,b,s,y);
  input a,b,s;
  output reg y;
  always@*
  case(s)
  1'b0:y=a;
  1'b1:y=b;
  endcase  
endmodule