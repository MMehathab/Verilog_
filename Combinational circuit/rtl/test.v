`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:12 10/18/2025 
// Design Name: 
// Module Name:    test 
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
module test(input clk,rst,x, output reg y);
reg [1:0]ps,ns;
parameter s0=2'b00,s1=2'b01,s2=2'b10;

always @(posedge clk)
begin
if(rst)
ps<=s0;
else
ps<=ns;
end

always @(*)
begin
case(ps)
s0:begin
    if(x)
	 ns=s1;
	 else
	 ns=s0;
	end
	
s1:begin
    if(x)
	 ns=s0;
	 else
	 ns=s2;
	end
	
s2:begin
    if(x)
	 ns=s2;
	 else
	 ns=s1;
	end
	
default:ns=s0;

endcase
end

always @(*)
begin
case(ps)
s0:begin
    if(x)
	  y=0;
	 else
	  y=1;
	end
	
s1:begin
    if(x)
	  y=1;
	 else
	  y=0;
	end	
	
s2:y=0;

default:y=0;

endcase
end

endmodule
