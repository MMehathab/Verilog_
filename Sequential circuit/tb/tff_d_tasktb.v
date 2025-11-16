`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:59 09/13/2025 
// Design Name: 
// Module Name:    tff_d_tasktb 
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
module tff_d_tasktb();
wire q,qb;
reg clk,rst,t;

tff_d dut(.clk(clk),.rst(rst),.t(t),.q(q),.qb(qb));

always
begin
clk=1'b1;
#5 clk=~clk;
#5;
end

task initialze(input t1);
begin
t=t1;
#10;
end
endtask

initial
begin
t=0;rst=1;
#10;
rst=0;

initialze(1);
initialze(0);
initialze(1);
initialze(0);
initialze(1);
$display ("test bench complete");
end

initial
begin
$monitor("time=%d, t=%d, rst=%d, clk=%d, q=%d, qb=%d", $time,t,rst,clk,q,qb);
#100 $finish;
end

endmodule
