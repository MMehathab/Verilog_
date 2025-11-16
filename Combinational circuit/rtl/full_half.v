`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:32:35 09/03/2025 
// Design Name: 
// Module Name:    full_half 
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
module full_half(input a,b,c, output sum,carry);
wire w1,w2,w3;
half_adder ha1(.a(a),.b(b),.sum(w1),.carry(w2));
half_adder ha2(.a(w1),.b(c),.sum(sum),.carry(w3));
or o1(carry,w2,w3);

endmodule
