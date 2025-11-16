`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:48:00 09/03/2025 
// Design Name: 
// Module Name:    three_to_eight_decoder 
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
module three_to_eight_decoder(input s2,s1,s0,output y7,y6,y5,y4,y3,y2,y1,y0);
assign y0=(~s2)&(~s1)&(~s0);
assign y1=(~s2)&(~s1)&(s0);
assign y2=(~s2)&(s1)&(~s0);
assign y3=(~s2)&(s1)&(s0);
assign y4=(s2)&(~s1)&(~s0);
assign y5=(s2)&(~s1)&(s0);
assign y6=(s2)&(s1)&(~s0);
assign y7=(s2)&(s1)&(s0);


endmodule
