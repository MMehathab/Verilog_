`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:27 09/06/2025 
// Design Name: 
// Module Name:    bin_enc 
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
module bin_enc(input [7:0]I, output [2:0]y);

assign y[0]= (I[1]|I[3]|I[5]|I[7]);
assign y[1]= (I[2]|I[3]|I[6]|I[7]);
assign y[2]= (I[4]|I[5]|I[6]|I[7]);

endmodule
