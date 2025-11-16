`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:31:49 09/22/2025 
// Design Name: 
// Module Name:    moore_vending_tb 
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
module moore_vending_tb();
reg clk,rst,i,j;
wire x,y;

moore_vending dut (.clk(clk),.rst(rst),.i(i),.j(j),.x(x),.y(y));

initial
clk=1'b0;
always
#5 clk=~clk;

task reset;
begin
rst=1;
@(posedge clk)
rst=0;
end
endtask
 
task t1(input i1,j1);
begin
i=i1;
j=j1;
#10;
end
endtask

initial
begin
reset;
t1(0,0);
t1(0,1);
t1(1,0);
t1(1,1);
t1(1,1);
t1(1,1);
t1(1,1);
end

initial
$monitor("time=%d, clk=%d, rst=%d, i=%d, j=%d, x=%d, y=%d",$time,clk,rst,i,j,x,y);
initial
#500 $finish;

endmodule
