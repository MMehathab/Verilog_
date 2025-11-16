`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:34 09/07/2025 
// Design Name: 
// Module Name:    concatenation_op 
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
module concatenation_op(input [3:0]a,b, input c, output [7:0]x,y,z );

assign x={{a[3:2]},{3'b010},{3'b100}};
assign y={{a[2:0]},{2{c}},{b[2:0]}};
assign z={{a},{b[3:1]},{c}};

endmodule
