




module alu(input [3:0]a,b,c, input oe, output reg[15:0]y, output [15:0]x);
always @(*)
begin
if(oe!=1)
y=16'b0;
else
begin
case(c)
4'b0000:y=a+b;// add a and b
4'b0001:y=a+1;// increement a by 1
4'b0010:y=a-b;// substract b from a
4'b0011:y=a-1;// decreement a by 1
4'b0100:y=a*b;// multiply 4 bit a and b
4'b0101:y=a/b;// divide a by b
4'b0110:y=a<<1;// left shift a by 1
4'b0111:y=a>>1;// right a by 1
4'b1000:y=a&&b;// logical and
4'b1001:y=a||b;// logical or
4'b1010:y=!a;// logical negation
4'b1011:y=~(a&b);// bitwise nand
4'b1100:y=~(a|b);// bitwise nor
4'b1101:y=a^b;// bitwise xor
4'b1110:y=~(a^b);// bitwise xnor
4'b1111:y=a;// buffer
default:y=16'b0;
endcase 
end
end

assign x=(oe)?y:16'bz;

endmodule
