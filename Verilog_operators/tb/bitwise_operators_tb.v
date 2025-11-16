`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:28:49 09/07/2025 
// Design Name: 
// Module Name:    bitwise_operators_tb 
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
module bitwise_operators_tb();
reg [3:0]a,b,c;
	wire [3:0]u,v,w,x,y,z,s;
	bitwise_operators bp1(.a(a),.b(b),.c(c),.u(u),.v(v),.w(w),.x(x),.y(y),.z(z),.s(s));
	
	initial
	begin
	a=4'b1000;b=4'b1100;c=4'b0000;
	#10;
	a=4'b0000;b=4'b1010;c=4'b0100;
	#10;
	a=4'b0010;c=4'b0011;
	end
	
	initial
	$monitor("a=%b, b=%b, c=%b, u=%b, v=%b, w=%b, x=%b, y=%b, z=%b, s=%b", a,b,c,u,v,w,x,y,z,s);
	initial
	#100 $finish;


endmodule
