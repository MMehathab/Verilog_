`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:38 09/04/2025 
// Design Name: 
// Module Name:    mux4_1_using2_1_tb 
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
module mux4_1_using2_1_tb();
wire z;
reg i3,i2,i1,i0,s1,s0;

mux4_1_using2_1 dut(.i3(i3),.i2(i2),.i1(i1),.i0(i0),.s1(s1),.s0(s0),.z(z));
 initial
 begin
 i3=0;i2=0;i1=0;i0=0;s1=0;s0=0;
 #10;
 i3=0;i2=0;i1=0;i0=1;s1=0;s0=0;
 #10;
 i3=0;i2=0;i1=1;i0=0;s1=0;s0=1;
 #10;
 i3=0;i2=1;i1=0;i0=0;s1=1;s0=0;
 #10;
 i3=1;i2=0;i1=0;i0=0;s1=1;s0=1;
 
 end
 
endmodule
