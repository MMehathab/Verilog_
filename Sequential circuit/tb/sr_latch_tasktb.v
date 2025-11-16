`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:55 09/13/2025 
// Design Name: 
// Module Name:    sr_latch_tasktb 
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
module sr_latch_tasktb();
reg s,r;
wire q,qb;
sr_latch dut(.s(s),.r(r),.q(q),.qb(qb));

task t1(input s1,r1);
begin
s=s1;
r=r1;
#10;
end
endtask

initial
begin
s=0;r=0;
#5;
t1(1,0);
t1(0,0);
t1(0,1);
t1(1,1);
t1(1,0);
t1(1,1);
end

initial
$monitor("time=%d, s=%d, r=%d, q=%d, qb=%d",$time,s,r,q,qb);
initial
#100 $finish;





endmodule
