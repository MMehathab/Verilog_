`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:53:01 09/07/2025 
// Design Name: 
// Module Name:    conditional_op 
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
module conditional_op( input[3:0]a,b,c, output[3:0]y);

assign y=c ? a:b; //if c is 1 then y=a, else y=b

endmodule
