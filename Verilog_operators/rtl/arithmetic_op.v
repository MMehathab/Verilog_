`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:30 09/08/2025 
// Design Name: 
// Module Name:    arithmetic_op 
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
module arithmetic_op(input[3:0]a,b,c,d , output[4:0]x,y,z,u,v);

assign x=a+b;
assign y=b-a;
assign z=d/c;
assign u=a*b;
assign v=d%c;

endmodule
