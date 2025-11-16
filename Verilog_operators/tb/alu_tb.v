`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:41 09/09/2025 
// Design Name: 
// Module Name:    alu_tb 
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
module alu_tb();
reg [3:0]a,b;
reg [3:0]c;
reg oe;
wire [15:0]y;
wire [15:0]x;

alu a1(.a(a),.b(b),.oe(oe),.c(c),.y(y),.x(x));

task initialize(input [3:0]a1,b1,c1, input oe1);
begin
{a,b,c,oe}={a1,b1,c1,oe1}; 
//a=a1;
//b=b1;
//c=c1;
//oe=oe1;
#10;
end
endtask

initial
$monitor("a=%b, b=%b, c=%b, oe=%b, y=%b, x=%b",a,b,c,oe,y,x);

initial
begin
initialize(4'b0011,4'b0010,4'b0001,1); //increement a by 1
initialize(4'b1001,4'b0110,4'b0010,1);// substract b from a
initialize(4'b1010,4'b1010,4'b0101,1); // divide a by b
initialize(4'b1000,4'b1100,4'b0000,1); // add a and b
initialize(4'b1111,4'b1110,4'b1000,1);// logical AND
initialize(4'b0111,4'b1110,4'b1011,1); //  bitwise nand
initialize(4'b0110,4'b0110,4'b0100,1); // multiply a and b
initialize(4'b1111,4'b0110,4'b0100,0); // if otput enable is 0
$display("test bench complete");
end

initial
#200 $finish;

endmodule
