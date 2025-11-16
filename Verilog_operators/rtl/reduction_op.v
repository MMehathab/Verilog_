`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:00 09/08/2025 
// Design Name: 
// Module Name:    reduction_op 
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
module reduction_op( input [3:0]a,b, output x,y,z,u,v);

assign x=&a;
assign y=~&a;
assign z=~^b;
assign u=~b;
assign v=|a;

endmodule
