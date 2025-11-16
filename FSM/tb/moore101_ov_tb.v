`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:40 09/19/2025 
// Design Name: 
// Module Name:    moore101_ov_tb 
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
module moore101_ov_tb();
reg clk,rst,din;
wire y;

moore101_ov dut (.clk(clk),.rst(rst),.din(din),.y(y));

initial
begin
clk=1'b1;
forever
#5 clk=~clk;
end
task t1(input din1);
begin
din=din1;
#10;
end
endtask

initial
begin
rst=1;
#5 rst=0;
#5;
t1(1);
t1(1);
t1(0);
t1(0);
t1(1);
t1(0);
t1(1);
t1(1);
t1(0);
end

initial
$monitor("time=%d, clk=%d, rst=%d, din=%d, y=%d",$time,clk,rst,din,y);
initial
#200 $finish;

endmodule
