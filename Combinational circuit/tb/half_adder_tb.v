`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:01:07 09/03/2025 
// Design Name: 
// Module Name:    half_adder_tb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module half_adder_tb();
wire sum,carry;
reg a,b;
half_adder dut(.a(a),.b(b),.sum(sum),.carry(carry));

initial
begin
a=0;b=0;
#10;
a=0;b=1;
#10;
a=1;b=0;
#10;
a=1;b=1;
end

initial
$monitor("a=%b, b=%b, sum=%b, carry=%b", a,b,sum,carry);

initial
#100 $finish;

endmodule
