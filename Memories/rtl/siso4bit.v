`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:22 09/16/2025 
// Design Name: 
// Module Name:    siso4bit 
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
module siso4bit(input clk,rst,sin, output sout);

reg [3:0]q;
always @(posedge clk)
begin
if (rst)
q<=0;
else
q<={sin,q[3:1]};      //right shift. for left shift q<={q[2:0],sin};
end
assign sout=q[0];

endmodule
