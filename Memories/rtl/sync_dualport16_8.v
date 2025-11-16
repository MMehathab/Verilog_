`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:59 09/16/2025 
// Design Name: 
// Module Name:    sync_dualport16_8 
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
module sync_dualport16_8(input clk,rst,we,re, input [3:0]wr_addr,rd_addr,input [7:0]din, output reg[7:0]dout);

reg [7:0]mem[15:0];
integer i;
parameter depth=16,width=8;
always @(posedge clk)
begin
if(rst)
begin
for(i=0;i<depth;i=i+1)
mem[i]<=8'b0;
end
else
begin
if(we)
mem[wr_addr]<=din;
if(re)
dout<=mem[rd_addr];
end
end

endmodule
