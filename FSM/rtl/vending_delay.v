`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:13 09/28/2025 
// Design Name: 
// Module Name:    vending_delay 
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
module vending_delay(input clk,rst,input [1:0]coin,output reg y);
reg [2:0] p,n;
reg [7:0]clk_count;
reg [2:0]count_sec;
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;

always @(posedge clk)
begin
if(rst)
p<=s0;
else
p<=n;
end

always @(*)
begin
case(p)

s0:begin
case(coin)
2'b00:n<=s1;
2'b01:n<=s2;
2'b10:n<=s4;
2'b11:n<=s0;
endcase
end

s1:begin
case(coin)
2'b00:n<=s2;
2'b01:n<=s3;
2'b10:n<=s4;
2'b11:n<=s1;
endcase
end

s2:begin
case(coin)
2'b00:n<=s3;
2'b01:n<=s4;
2'b10:n<=s4;
2'b11:n<=s2;
endcase
end

s3:begin
case(coin)
2'b00:n<=s4;
2'b01:n<=s4;
2'b10:n<=s4;
2'b11:n<=s3;
endcase
end

s4:n<=s0;

endcase
end

always @(*)
begin
case(p)
s0:y=0;
s1:y=0;
s2:y=0;
s3:y=0;
s4:y=1;
endcase
end

always @(posedge clk)
begin
if(rst)
clk_count<=0;
else
begin
if((coin==2'b11) && (p==s1)||(p==s2)||(p==s3))
clk_count<=clk_count+1'b1;
else
clk_count<=0;
end
end

always @(posedge clk)
begin
if (rst)
count_sec<=0;
else
begin
if(coin!=3)
count_sec<=0;
else
begin
if(clk_count==255)
begin
if(count_sec==4)
count_sec<=0;
else
count_sec<=count_sec+1'b1;
end
end
end
end

endmodule
