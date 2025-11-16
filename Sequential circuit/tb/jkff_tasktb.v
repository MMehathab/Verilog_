`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:10 09/13/2025 
// Design Name: 
// Module Name:    jkff_tasktb 
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
module jkff_tasktb();
reg clk,rst,j,k;
wire q,qb;
jkff dut(.clk(clk),.rst(rst),.j(j),.k(k),.q(q),.qb(qb));

always
begin
 clk=1'b0;
 #5 clk=~clk;
 #5;
 end
 
 task t1(input j1,k1);
 begin
 j=j1;
 k=k1;
 #10;
 end
 endtask
 
 initial
 begin
 j=0;k=0;rst=1;
 #5;
 rst=0;
 t1(1,0);
 t1(0,0);
 t1(0,1);
 t1(1,1);
 $display("test bench complete");
 end
 
 initial
 $monitor("time=%d, j=%d, k=%d, clk=%d, rst=%d, q=%d, qb=%d",$time,j,k,clk,rst,q,qb);
 initial
 #100 $finish;
 
endmodule
