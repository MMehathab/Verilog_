module full_adder(input a,b,c,output s,c0);
assign s= a^b^c;
assign c0= a&b|b&c|c&a;

endmodule
