module half_adder_df(a,b,sum,co);
  input a,b;
  output sum,co;
  assign sum=a^b;    //xor(sum,a,b)
  assign co=a&b;     //and(co,a,b)
endmodule
