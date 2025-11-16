`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:47 09/07/2025 
// Design Name: 
// Module Name:    conditional_op_tb 
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
module conditional_op_tb();
reg[3:0]a,b,c;
wire[3:0]y;
conditional_op co1(.a(a),.b(b),.c(c),.y(y));

initial
begin
a=4'b1110;b=4'b0101;c=4'b0110;
#10;
c=4'b0000;
end

initial
$monitor("a=%b, b=%b, c=%b, y=%b", a,b,c,y);
initial
#100 $finish;


endmodule
