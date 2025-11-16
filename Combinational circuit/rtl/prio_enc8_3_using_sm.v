`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:25 09/06/2025 
// Design Name: 
// Module Name:    prio_enc8_3_using_sm 
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
module prio_enc8_3_using_sm(input [7:0]I, output[2:0]y, output idle);
wire [7:0]w;

pri_ckt p1(.I(I),.H(w),.idle(idle));
bin_enc b1(.I(w),.y(y));


endmodule
