`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:50 09/13/2025 
// Design Name: 
// Module Name:    jkff 
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
module jkff(input clk,rst,j,k, output reg q,output qb);
parameter Hold=2'b00,Reset=2'b01,Set=2'b10,Toggle=2'b11;
 
always@(posedge clk)
begin
if(rst==1)
q<=0;
else
begin
case({j,k})
Hold:q<=q;
Reset:q<=0;
Set:q<=1;
Toggle:q<=~q;
endcase
end
end

assign qb=~q;

endmodule
