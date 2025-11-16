`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:53 10/18/2025 
// Design Name: 
// Module Name:    test_tb 
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
module test_tb();
reg clk,rst,x;
wire y;

test t1(.clk(clk),.rst(rst),.x(x),.y(y));

initial
clk=1'b0;
always #5 clk=~clk;

task div(input x1);
begin
x=x1;
@(posedge clk);
end
endtask

initial
begin
rst=1;
#10;
rst=0;
  
div(1);
div(0);
div(0);
div(1);
div(0);
div(1);
div(0);
end

initial
$monitor("time=%d, clk=%d, rst=%d, x=%d, y=%d", $time,clk,rst,x,y);
initial
#500 $finish;

endmodule
