`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:08 09/19/2025 
// Design Name: 
// Module Name:    moore101_ov 
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
module moore101_ov(input clk,rst,din, output reg y);
reg [1:0] ps,ns;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;

always @(posedge clk)
begin
if(rst)
ps<=s0;
else
ps<=ns;
end

always @(din,ps)
begin
case(ps)
s0: begin
if(din)
ns=s1;
else
ns=s0;
end

s1:begin
if(din)
ns=s1;
else
ns=s2;
end

s2:begin
if(din)
ns=s3;
else
ns=s0;
end

s3:begin
if(din)
ns=s1;
else
ns=s2;
end

endcase
end

always @(din,ps)
begin
case(ps)
s0:y=0;
s1:y=0;
s2:y=0;
s3:y=1;
endcase
end

endmodule
