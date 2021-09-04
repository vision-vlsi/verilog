module half_adder_beh(a,b,sum,co);
  input a,b;
  output reg sum,co;
  always@*
  case({a,b})
  2'b00:begin sum=1'b0;co=1'b0; end
  2'b01:begin sum=1'b1;co=1'b0; end
  2'b10:begin sum=1'b1;co=1'b0; end
  2'b11:begin sum=1'b0;co=1'b1; end
endcase
endmodule