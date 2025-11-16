`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:35 09/07/2025 
// Design Name: 
// Module Name:    log_operators 
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
module log_operators(input [3:0]a,b,c, output u,v,x,y,z );

assign x= a||b;
assign y= a&&c;
assign z= !b;
assign u= !b||c;
assign v= a&&(!c);

endmodule

