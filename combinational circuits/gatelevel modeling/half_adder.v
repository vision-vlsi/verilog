module half_adder(a,b,sum,co);
  input a,b;
  output sum,co;
  xor(sum,a,b);
  and(co,a,b);
endmodule
