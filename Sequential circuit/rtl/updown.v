`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:00:44 09/16/2025 
// Design Name: 
// Module Name:    updown 
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
module updown(input clk,rst,load,mode, input [3:0]a, output reg[3:0]count);

always @(posedge clk)
begin
if(rst)
count<=0;
else if (load)
count<=(a);
else
begin
case (mode)
1'b0:count<=count+1'b1;
1'b1:count<=count-1'b1;
endcase
end
end

endmodule
