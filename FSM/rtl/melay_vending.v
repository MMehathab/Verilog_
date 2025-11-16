`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:20 09/22/2025 
// Design Name: 
// Module Name:    melay_vending 
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
module melay_vending(input clk,rst,i,j, output reg x,y);
reg [1:0]ps,ns;
parameter s0=2'b00,s1=2'b01,s2=2'b10;

always @(posedge clk)
begin
if (rst)
ps<=2'b00;
else
ps<=ns;
end

always @(*)
begin
case(ps)
s0:begin
if(i==1 && j==0)
ns=s1;
else if(i==1 && j==1)
ns=s2;
else
ns=s0;
end

s1:begin
if(i==1 && j==0)
ns=s2;
else if(i==1 && j==1)
ns=s0;
else
ns=s1;
end


s2:begin
if(i==1 && j==0)
ns=s0;
else if(i==1 && j==1)
ns=s0;
else
ns=s2;
end

endcase
end

always @(*)
begin
x=0;y=0;
case(ps)

s0:begin
x=0;
y=0;
end

s1:begin
if(i==1 && j==1)
begin
x=1;y=0;
end
else
begin
x=0;y=0;
end
end

s2:begin
if(i==1 && j==0)
begin
x=1;y=0;
end
else if(i==1 && j==1)
begin
x=1;y=1;
end
else
begin
x=0;y=0;
end
end

endcase
end

endmodule
