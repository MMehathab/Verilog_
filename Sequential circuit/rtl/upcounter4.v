`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:42 09/15/2025 
// Design Name: 
// Module Name:    upcounter4 
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
module upcounter4(input clk,rst,load, input [3:0]a, output reg [3:0]count);

always @(posedge clk)
begin
if(rst)
count<=0;
else if
(load)
count<=a;
else
count<=count+1'b1;
end


endmodule
