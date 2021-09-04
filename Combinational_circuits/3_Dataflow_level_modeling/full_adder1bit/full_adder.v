module full_adder_df(a,b,cin,sum,co);
  input a,b,cin;
  output sum,co;
  assign sum=a^b^c;  //xor(sum,a,b,c)
  assign co=(a&b)|(a&c)|(c&b);  // and(y1,a,b), and(y2,a,c), and(y3,c,b) ; or(co,y1,y2,y3)
endmodule
