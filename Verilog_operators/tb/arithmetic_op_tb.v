`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:00:08 09/08/2025 
// Design Name: 
// Module Name:    arithmetic_op_tb 
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
module arithmetic_op_tb();
reg [3:0]a,b,c,d; 
wire [4:0]x,y,u,z,v;
arithmetic_op ap1(.a(a),.b(b),.c(c),.d(d),.x(x),.y(y),.u(u),.z(z),.v(v));
initial

begin
a=3;b=8;c=5;d=12;
#10;
a=4;b=7;c=4;d=10;
#10;
a=2;b=11;c=7;d=15;
end

initial
$monitor("a=%d, b=%d, c=%d, d=%d, x=%d, y=%d, z=%d, u=%d, v=%d",a,b,c,d,x,y,z,u,v);
initial
#100 $finish;

endmodule
