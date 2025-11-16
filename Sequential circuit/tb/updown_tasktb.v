`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:13:13 09/16/2025 
// Design Name: 
// Module Name:    updown_tasktb 
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
module updown_tasktb();
wire [3:0]count;
reg clk,rst,mode,load;
reg [3:0]a;

updown dut(.clk(clk),.rst(rst),.load(load),.mode(mode),.a(a),.count(count));

always
begin
clk=1'b0;
#5 clk=~clk;
#5;
end

task t1(input load1,mode1, input [3:0]a1);
begin
load=load1;
mode=mode1;
a=a1;
#10;
end
endtask


initial
begin
rst=1;
#5 rst=0;
t1(1'b1,1'b0,4'b0000);
t1(1'b0,1'b0,4'b0111);
#135;
t1(1'b1,1'b1,4'b1110);
t1(1'b0,1'b1,4'b0111);

end

initial
$monitor("time=%d, clk=%d, rst=%d, mode=%d, load=%d, a=%d, count=%d",$time,clk,rst,mode,load,a,count);
initial
#400 $finish;

endmodule
