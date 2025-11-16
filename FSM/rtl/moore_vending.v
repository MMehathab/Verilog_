`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:02:45 09/22/2025 
// Design Name: 
// Module Name:    moore_vending 
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
module moore_vending(input clk,rst, input i,j, output reg x,y);
reg [2:0]ps,ns;
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;

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

s0:
begin
if(i==1 && j==0)
ns=s1;
else if(i==1 && j==1)
ns=s2;
else
ns=s0;
end

s1:
begin
if(i==1 && j==0)
ns=s2;
else if(i==1 && j==1)
ns=s3;
else
ns=s1;
end

s2:
begin
if(i==1 && j==0)
ns=s3;
else if(i==1 && j==1)
ns=s4;
else
ns=s0;
end

s3:ns=s0;
s4:ns=s0;

endcase
end

always @(*)
begin
case(ps)
s0,s1,s2:begin
x=0;y=0;
end
s3:begin
x=1;y=0;
end
s4:begin
x=1;y=1;
end
default:begin
x=0;y=0;
end

endcase
end

endmodule
