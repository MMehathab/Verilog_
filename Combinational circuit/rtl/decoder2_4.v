`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:05 09/03/2025 
// Design Name: 
// Module Name:    decoder2_4 
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
module decoder2_4(input s1,s0, output y3,y2,y1,y0);

assign y0=(~s1)&(~s0);
assign y1=(~s1)&(s0);
assign y2=(s1)&(~s0);
assign y3=(s1)&(s0);


endmodule
