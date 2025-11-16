`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:03:46 09/06/2025 
// Design Name: 
// Module Name:    prio_enc8_3_using_sm_tb 
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
module prio_enc8_3_using_sm_tb();
wire [2:0]y;
reg [7:0]I;
wire idle;
prio_enc8_3_using_sm pe1(.I(I),.y(y),.idle(idle));
initial
begin

I=8'b000001xx;
#10;
I=8'b00100010;
#10;
I=8'b00000100;
#10;
I=8'b10001100;
#10;
I=8'b00010000;
#10;
I=8'b01000000;
#10;
I=8'b1000xxxx;
#10;
I=8'b00000001;
#10;
I=8'b00000000;
end

initial
$monitor("I=%b, y=%b, idle=%b",I,y,idle);

initial
#100 $finish;

endmodule
