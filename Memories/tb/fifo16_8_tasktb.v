`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:28 09/18/2025 
// Design Name: 
// Module Name:    fifo16_8_tasktb 
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
module fifo16_8_tasktb();
reg we,re,clk,rst;
reg [7:0]din;
wire [7:0]dout;
wire full,empty;
fifo16_8 dut(.clk(clk),.rst(rst),.we(we),.re(re),.full(full),.empty(empty),.din(din),.dout(dout));

always
begin
clk=1'b1;
#5 clk=~clk;
#5;
end

task reset;
begin
rst=1;
@(posedge clk);
rst=0;
end
endtask

task write( input [7:0]din1);
begin
we=1;
din=din1;
@(posedge clk);
we=0;
end
endtask

task read;
begin
re=1;
@(posedge clk)
re=0;
end
endtask

initial
begin

we=0;re=0;din=0;
reset;
write(8'd1);
write(8'd2);
write(8'd3);
write(8'd4);
write(8'd5);
write(8'd6);
write(8'd7);
write(8'd8);
write(8'd9);

read;
read;
read;
read;
read;
read;
read;
read;
read;
end

initial
$monitor("time=%d, clk=%d, rst=%d, we=%d, re=%d, din=%d, dout=%d", $time,clk,rst,we,re,din,dout);
initial
#200 $finish;

endmodule
