`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:45 09/07/2025 
// Design Name: 
// Module Name:    bitwise_operators 
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
module bitwise_operators(input [3:0]a,b,c, output [3:0]s,u,v,w,x,y,z);

assign x= a|b;
assign y= a&c;
assign z= ~b;
assign u= ~b|c;
assign v= a^(c);
assign w= a~^(c);
assign s= a^b^(c);

endmodule
