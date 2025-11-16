`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:36 09/04/2025 
// Design Name: 
// Module Name:    ripple_carry_tb 
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
module ripple_carry_tb();
reg [3:0]A,B;
reg Cin;
wire [3:0]S;
wire Cout;

ripple_carry dut(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));

initial
begin
A=4'b0001;B=4'b0010;Cin=0;
#10;
A=4'b0000;B=4'b0011;Cin=0;
#10;
A=4'b0100;B=4'b0110;Cin=1;
#10;
A=4'b1000;B=4'b1100;Cin=0;
#10;
A=4'b1001;B=4'b1010;Cin=0;
#10;
A=4'b1101;B=4'b1011;Cin=0;
end

initial
$monitor("A=%b, B=%b, Cin=%b, S=%b, Cout=%b", A,B,Cin,S,Cout);

initial
#100 $finish;
endmodule
