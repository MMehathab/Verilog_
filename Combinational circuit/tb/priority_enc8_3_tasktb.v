`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:57 09/10/2025 
// Design Name: 
// Module Name:    priority_enc8_3_tasktb 
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
module priority_enc8_3_tasktb();
reg [7:0]d;
wire [2:0]y;

priority_enc8_3 dut(.d(d), .y(y));

task initialize(input [7:0]d1);
begin
d=d1;
#10;
end
endtask

initial 
$monitor("d=%b, y=%b", d,y);

initial
begin
initialize(8'b00000010);
initialize(8'b00010000);
initialize(8'b01000010);
initialize(8'b00000001);
initialize(8'b00100110);
initialize(8'b11100000);
$display("test bench complete");
end

initial
#100 $finish;

endmodule
