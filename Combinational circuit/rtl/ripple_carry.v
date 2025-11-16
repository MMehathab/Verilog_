`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:12:10 09/04/2025 
// Design Name: 
// Module Name:    ripple_carry 
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
module ripple_carry(A,B,Cin,S,Cout);
input [3:0]A,B;
input Cin;
output [3:0]S;
output Cout;
wire C1,C2,C3;
full_adder f1(.a(A[0]),.b(B[0]),.c(Cin),.s(S[0]),.c0(C1));
full_adder f2(.a(A[1]),.b(B[1]),.c(C1),.s(S[1]),.c0(C2));
full_adder f3(.a(A[2]),.b(B[2]),.c(C2),.s(S[2]),.c0(C3));
full_adder f4(.a(A[3]),.b(B[3]),.c(C3),.s(S[3]),.c0(Cout));



endmodule
