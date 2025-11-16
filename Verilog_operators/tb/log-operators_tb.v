`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:41 09/07/2025 
// Design Name: 
// Module Name:    log-operators_tb 
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
module log_operators_tb();
   reg [3:0]a,b,c;
	wire u,v,x,y,z;
	log_operators op1(.a(a),.b(b),.c(c),.u(u),.v(v),.x(x),.y(y),.z(z));
	
	initial
	begin
	a=4'b1000;b=4'b1100;c=4'b0000;
	#10;
	a=4'b0000;b=4'b1010;c=4'b0100;
	#10;
	a=4'b0010;c=4'b00xx;
	end
	
	initial
	$monitor("a=%b, b=%b, c=%b, u=%b, v=%b, x=%b, y=%b, z=%b", a,b,c,u,v,x,y,z);
	initial
	#100 $finish;
	
endmodule
