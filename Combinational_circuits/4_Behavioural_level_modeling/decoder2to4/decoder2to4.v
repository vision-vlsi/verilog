module decoder2to4_beh(a0,a1,d0,d1,d2,d3);
input a0, a1;
output reg d0,d1,d2,d3;
always@*
case({a0,a1})
2'b00: begin d3=1'b0; d2=1'b0; d1=1'b0; d0=1'b1; end
2'b01: begin d3=1'b0; d2=1'b0; d1=1'b1; d0=1'b0; end
2'b10: begin d3=1'b0; d2=1'b1; d1=1'b0; d0=1'b0; end
2'b11: begin d3=1'b1; d2=1'b0; d1=1'b0; d0=1'b0; end
endcase
endmodule