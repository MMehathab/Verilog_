`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:58:44 09/17/2025 
// Design Name: 
// Module Name:    async_dualport8_16_tasktb 
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
module async_dualport8_16_tasktb();
reg we,re,wclk,rclk,rst;
reg [2:0]wr_addr,rd_addr;
reg [15:0]din;
wire [15:0]dout;
async_dualport8_16 dut(.wclk(wclk),.rclk(rclk),.rst(rst),.we(we),.re(re),.wr_addr(wr_addr),.rd_addr(rd_addr),.din(din),.dout(dout));

always
begin
wclk=1'b1;
#10 wclk=~wclk;
#10;
end

always
begin
rclk=1'b1;
#5 rclk=~rclk;
#5;
end

task reset;
begin
#5;
rst=1;
#5;
rst=0;
end
endtask

task write(input [2:0]wr_addr1, input [15:0]din1);
begin
we=1;
wr_addr=wr_addr1;
din=din1;
@(posedge wclk);
we=0;
end
endtask

task read(input [2:0]rd_addr1);
begin
re=1;
rd_addr=rd_addr1;
@(posedge rclk)
re=0;
end
endtask


initial
begin
we=1;re=0;din=0;
reset;
write(0,16'd0);
#5;
read(0);
#5;
write(1,16'd1);
#5;
read(1);
#5;
write(2,16'd2);
#5;
read(2);
#5;
write(3,16'd3);
#5;
read(3);
#5;
write(4,16'd4);
#5;
read(4);
#5;
write(5,16'd5);
#5;
read(5);
#5;
write(6,16'd6);
#5;
write(7,16'd7);
#5;
read(7);
end

initial
$monitor("time=%d, wclk=%d, rclk=%d, rst=%d, we=%d, re=%d, din=%d, dout=%d", $time,wclk,rclk,rst,we,re,din,dout);
initial
#500 $finish;

endmodule
