`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:56:18 09/18/2025 
// Design Name: 
// Module Name:    fifo16_8 
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
module fifo16_8(input clk,rst,we,re,input [7:0]din, output reg [7:0]dout,output full,empty);
reg [7:0]mem[15:0]; 
reg[4:0]wr_pointer,rd_pointer;
integer i;

always @(posedge clk)
begin
if(rst)
begin
wr_pointer<=0;
for(i=0;i<16;i=i+1)
mem[i]<=0;
end
else if(we && !full)
begin
mem[wr_pointer]<=din;
wr_pointer<=wr_pointer+1'b1;
end
end

always@(posedge clk)
begin
if(rst)
begin
rd_pointer<=0;
for(i=0;i<16;i=i+1)
dout<=0;
end
else if(re && !empty)
begin
dout<=mem[rd_pointer];
rd_pointer<=rd_pointer+1'b1;
end
end

assign empty=(wr_pointer==rd_pointer)?1'b1:1'b0;
assign full=((wr_pointer[4]!= rd_pointer[4]) && (wr_pointer[3:0]==rd_pointer[3:0]))?1'b1:1'b0;

endmodule
