`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:41 09/16/2025 
// Design Name: 
// Module Name:    sync_dualport16_8_tasktb 
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
module sync_dualport16_8_tasktb();
reg we,re,clk,rst;
reg [3:0]wr_addr,rd_addr;
reg [7:0]din;
wire [7:0]dout;
sync_dualport16_8 dut(.clk(clk),.rst(rst),.we(we),.re(re),.wr_addr(wr_addr),.rd_addr(rd_addr),.din(din),.dout(dout));

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

task write(input [3:0]wr_addr1, input [7:0]din1);
begin
we=1;
wr_addr=wr_addr1;
din=din1;
@(posedge clk);
we=0;
end
endtask

task read(input [3:0]rd_addr1);
begin
re=1;
rd_addr=rd_addr1;
@(posedge clk)
re=0;
end
endtask


initial
begin
rst=0;we=0;re=0;din=0;

reset;
write(0,8'd1);
write(1,8'd2);
write(2,8'd3);
write(3,8'd4);
write(4,8'd5);
write(5,8'd6);
write(6,8'd7);
read(0);
read(1);
read(2);
read(3);
read(4);
read(5);
read(6);

end

initial
$monitor("time=%d, clk=%d, rst=%d, we=%d, re=%d, din=%d, dout=%d", $time,clk,rst,we,re,din,dout);
initial
#200 $finish;

endmodule
