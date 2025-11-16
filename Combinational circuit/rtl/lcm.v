`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:09 10/18/2025 
// Design Name: 
// Module Name:    lcm 
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
module lcm();
reg [15:0] a,b;       
reg [15:0] temp_a, temp_b;
reg [15:0] gcd;   // positive number that divides two number
reg [31:0] lcm;

initial
begin
a = 16'd21; // inputs
b = 16'd6;

temp_a=a;
temp_b=b;

while (temp_b != 0) 
begin
if (temp_a > temp_b)
temp_a = temp_a - temp_b; // 21-6=15  15-6=9   9-6=3
else
temp_b = temp_b - temp_a;
end

gcd = temp_a;   /// gcd will be 3 here

lcm=(a*b)/gcd; /// 21*6=126    126/3=42

#50;

a = 16'd15; // inputs
b = 16'd10;

temp_a=a;
temp_b=b;

while (temp_b != 0) 
begin
if (temp_a > temp_b)
temp_a = temp_a - temp_b; // 15-10=5  
else
temp_b = temp_b - temp_a;
end

gcd = temp_a;   /// gcd will be 5 here

lcm=(a*b)/gcd; /// 15*10=150    150/5=30
end

initial
$monitor("time=%d, temp_a=%d, temp_b=%d, gcd=%d, lcm=%d", $time,temp_a,temp_b,gcd,lcm);
initial
#500 $finish;

endmodule
