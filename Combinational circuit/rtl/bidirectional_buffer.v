`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:44 09/06/2025 
// Design Name: 
// Module Name:    bidirectional_buffer 
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
module bidirectional_buffer( inout a,b, input ctrl);

bufif1(a,b,ctrl);
bufif0(b,a,ctrl);

endmodule
