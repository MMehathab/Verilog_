`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:17 09/04/2025 
// Design Name: 
// Module Name:    mux4_1_using2_1 
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
module mux4_1_using2_1( input i3,i2,i1,i0,s1,s0,output z );
wire w1,w2;
mux2_1 m1(.i0(i0),.i1(i1),.s(s0),.y(w1));
mux2_1 m2(.i0(i2),.i1(i3),.s(s0),.y(w2));
mux2_1 m3(.i0(w1),.i1(w2),.s(s1),.y(z));



endmodule
