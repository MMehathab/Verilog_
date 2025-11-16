`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:06 09/16/2025 
// Design Name: 
// Module Name:    siso4bit_tasktb 
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
module siso4bit_tasktb();

reg clk,rst,sin;
wire sout;
siso4bit dut(.clk(clk),.rst(rst),.sin(sin),.sout(sout));

always
begin
clk=1'b0;
#5 clk=~clk;
#5;
end

task t1(sin1);
begin
sin=sin1;
#10;
end
endtask

initial
begin
rst=1'b1;sin=1;
#10 rst=1'b0;
t1(1);
t1(1);
t1(0);
t1(0);
t1(1);
t1(1);

end

initial
$monitor("time=%d, clk=%d, rst=%d, sin=%d, sout=%d",$time,clk,rst,sin,sout);
initial
#100 $finish;

endmodule

