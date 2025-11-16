`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:41 09/10/2025 
// Design Name: 
// Module Name:    decoder3_8_task_tb 
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
module decoder3_8_task_tb();
reg [2:0]d;
reg en;
wire [7:0]y;
decoder3_8 d1(.d(d),.en(en),.y(y));

task initialize (input [2:0]d1, input en1);
begin
{d,en}={d1,en1};
#10;
end
endtask

initial 
$monitor("d=%b, en=%b, y=%b", d,en,y);

initial
begin
initialize(3'b000,1);
initialize(3'b010,1);
initialize(3'b100,1);
initialize(3'b101,1);
initialize(3'b111,1);
initialize(3'b011,0);
$display("test bench complete");
end

initial
#200 $finish;

endmodule
