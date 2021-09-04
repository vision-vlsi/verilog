module mux2x1_df(a,b,s,y);
  input a,b,s;
  output y;
  assign y=s?b:a;
endmodule
