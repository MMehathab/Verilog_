`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:55:25 09/13/2025 
// Design Name: 
// Module Name:    tff_d 
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
module tff_d(input clk,rst,t, output q,qb);
wire w1;
dff dff1(.d(w1),.clk(clk),.rst(rst),.q(q),.qb(qb));
xor x1( w1,t,q);

endmodule
