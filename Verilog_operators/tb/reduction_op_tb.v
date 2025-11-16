`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:57:07 09/08/2025 
// Design Name: 
// Module Name:    reduction_op_tb 
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
module reduction_op_tb();

reg [3:0]a,b;
wire x,y,z,u,v;
reduction_op rd1(.a(a),.b(b),.x(x),.y(y),.z(z),.u(u),.v(v));

initial
begin
a=4'b0101;b=4'b1010;
#10;
a=4'b1101;b=4'b0010;
end

initial
$monitor("a=%b, b=%b, x=%b, y=%b, z=%b, u=%b, v=%b", a,b,x,y,z,u,v);
initial
#100 $finish;

endmodule
