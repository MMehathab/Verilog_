`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:58:20 09/07/2025 
// Design Name: 
// Module Name:    shift_op_tb 
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
module shift_op_tb();
reg [3:0]c,b;
reg signed [3:0]a; // signed arithmetic operation
	wire [3:0]u,v,w,x,y,z,s;
	shift_op sp1(.a(a),.b(b),.c(c),.u(u),.x(x),.y(y),.z(z));
	
	initial
	begin
	a=4'b1100;b=4'b1100;c=4'b0001;
	#10;
	a=4'b1110;b=4'b1010;c=4'b0100;
	#10;
	a=4'b0010;c=4'b1011;
	end
	
	initial
	$monitor("a=%b, b=%b, c=%b, u=%b, x=%b, y=%b, z=%b", a,b,c,u,x,y,z);
	initial
	#100 $finish;



endmodule
