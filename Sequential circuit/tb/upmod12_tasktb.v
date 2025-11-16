`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:56:18 09/15/2025 
// Design Name: 
// Module Name:    upmod12_tasktb 
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
module upmod12_tasktb();
wire [3:0]count;
reg clk,rst,load;
reg [3:0]a;

upmod12 dut(.clk(clk),.rst(rst),.load(load),.a(a),.count(count));

always
begin
clk=1'b0;
#5 clk=~clk;
#5;
end

task t1(input load1, input [3:0]a1);
begin
load=load1;
a=a1;
#10;
end
endtask


initial
begin
rst=1;
#5 rst=0;
t1(1'b1,4'b0000);
t1(1'b0,4'b0111);

end

initial
$monitor("time=%d, clk=%d, rst=%d, load=%d, a=%d, count=%d",$time,clk,rst,load,a,count);
initial
#300 $finish;

endmodule
