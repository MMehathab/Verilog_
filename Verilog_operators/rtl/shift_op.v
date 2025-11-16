`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:24 09/07/2025 
// Design Name: 
// Module Name:    shift_op 
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
module shift_op(input [3:0]b,c, input signed [3:0]a,  output [3:0]u,x,y,z);

assign x= a>>>1; // signed arithmetic operation. means MSB will in the vacant bit position
assign y= b<<<2; // unsigned arithmetic operation
assign z= c<<2; // logical operation
assign u= a<<<3; // signed arithmetic operation. means MSB will in the vacant bit position

endmodule
