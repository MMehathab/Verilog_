`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:37 09/09/2025 
// Design Name: 
// Module Name:    mux4_1 
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
module mux4_1(input [3:0]data_in, input [1:0]sel_in, output reg y_out);

always @(data_in,sel_in)
begin
case(sel_in)
2'b00:y_out=data_in[0];
2'b01:y_out=data_in[1];
2'b10:y_out=data_in[2];
2'b11:y_out=data_in[3];
default:y_out=1'b0;
endcase
end

endmodule
