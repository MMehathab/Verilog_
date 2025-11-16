`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:01 09/03/2025 
// Design Name: 
// Module Name:    three_to_eight_decoder_tb 
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
module three_to_eight_decoder_tb();
wire y7,y6,y5,y4,y3,y2,y1,y0;
reg s2,s1,s0;
three_to_eight_decoder dut(.s2(s2),.s1(s1),.s0(s0),.y7(y7),.y6(y6),.y5(y5),.y4(y4),.y3(y3),.y2(y2),.y1(y1),.y0(y0));

initial
begin
s2=0;s1=0;s0=0;
#10;
s2=0;s1=1;s0=0;
#10;
s2=0;s1=1;s0=1;
#10;
s2=1;s1=0;s0=0;
#10;
s2=1;s1=1;s0=0;
#10;
s2=1;s1=1;s0=1;
end

initial
$monitor("s2=%b, s1=%b, s0=%b, y7=%b, y6=%b, y5=%b, y4=%b, y3=%b, y2=%b, y1=%b, y0=%b", s2,s1,s0,y7,y6,y5,y4,y3,y2,y1,y0);

initial
#100 $finish;

endmodule
