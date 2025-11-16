`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:59 09/06/2025 
// Design Name: 
// Module Name:    pri_ckt 
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
module pri_ckt( input[7:0]I, output [7:0]H, output idle);

assign H[7]=I[7];
assign H[6]=(I[6])&(~I[7]);  // H6 when I6 is 1 and I7 is 0
assign H[5]=(I[5])&(~I[6])&(~I[7]);
assign H[4]=(I[4])&(~I[5])&(~I[6])&(~I[7]);
assign H[3]=(I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]);
assign H[2]=(I[2])&(~I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]);
assign H[1]=(I[1])&(~I[2])&(~I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]);
assign H[0]=(I[0])&(~I[1])&(~I[2])&(~I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]);
assign idle=(~I[0])&(~I[1])&(~I[2])&(~I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]);


endmodule
