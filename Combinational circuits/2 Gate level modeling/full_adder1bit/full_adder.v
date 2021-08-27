module full_adder(a,b,cin,sum,co);
  input a,b,cin;
  output sum,co;
  xor(s1,a,b);
  and(c1,a,b);
  xor(sum,s1,cin);
  and(c2,s1,cin);
  or(co,c1,c2);
endmodule
  
