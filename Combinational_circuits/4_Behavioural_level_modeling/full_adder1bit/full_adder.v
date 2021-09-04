module full_adder_beh(a,b,cin,sum,co);
  input a,b,cin;
  output sum,co;
 always@*
   case({a,b,cin})
     3'b000: begin sum=0; co=0; end
     3'b001: {co,sum}=2'b01;
     3'b010: {co,sum}=2'b01;
     3'b011: {co,sum}=2'b10;
     3'b100: {co,sum}=2'b01;
     3'b101: {co,sum}=2'b10;
     3'b110: {co,sum}=2'b10;
     3'b111: {co,sum}=2'b11;
    endcase
 endmodule