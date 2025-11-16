`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:39:22 09/17/2025 
// Design Name: 
// Module Name:    async_dualport8_16 
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
module async_dualport8_16(input wclk,rclk,rst,we,re, input[2:0]wr_addr,rd_addr, input [15:0]din, output reg[15:0]dout);
reg [15:0]mem[7:0];
integer i;

always @(posedge wclk or posedge rst)
begin
if(rst)
begin
for(i=0;i<8;i=i+1)
begin
mem[i]<=16'b0;
end
end
else if(we)
mem[wr_addr]<=din;
end


always @(posedge rclk or posedge rst)
begin
if(rst)
begin
for(i=0;i<8;i=i+1)
dout<=16'b0;
end
else if(re)
dout<=mem[rd_addr];
end


endmodule
