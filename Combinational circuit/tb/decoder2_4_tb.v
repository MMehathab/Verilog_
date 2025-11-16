`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:27 09/03/2025 
// Design Name: 
// Module Name:    decoder2_4_tb 
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

module decoder2_4_tb();
wire y3,y2,y1,y0;
reg s1,s0;
decoder2_4 dut(.s1(s1),.s0(s0),.y3(y3),.y2(y2),.y1(y1),.y0(y0));
initial
begin 
s1=0;s0=0;
#10;
s1=0;s0=1;
#10;
s1=1;s0=0;
#10;
s1=1;s0=1;
end

initial
$monitor("s1=%b, s0=%b, y3=%b, y2=%b, y1=%b, y0=%b", s1,s0,y3,y2,y1,y0);
initial
#100 $finish;

endmodule