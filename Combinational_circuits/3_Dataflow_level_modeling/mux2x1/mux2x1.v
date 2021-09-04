module mux2x1_df(a,b,s,y);
  input a,b,s;
  output y;
  wire sbar,o1,o2;
   assign sbar=~s;    // not(sbar,s);
   assign o1=sbar&a;  // and(o1,sbar,a);
   assign o2=s&b;    //  and(o2,s,b);
   assign y=o1|o2;  //  or(y,o1,o2);
endmodule
