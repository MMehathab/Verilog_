`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:10 09/09/2025 
// Design Name: 
// Module Name:    mux4_1_task_tb 
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
module mux4_1_task_tb();
reg [3:0]data_in;
reg [1:0] sel_in;
wire y_out;
 mux4_1 m1(.data_in(data_in),.sel_in(sel_in),.y_out(y_out));
 
 task initialize(input [3:0]data_in1, input[1:0]sel_in1);
 begin
 {data_in,sel_in}={data_in1,sel_in1};
 #10;
 end
 endtask
 
 initial
 $monitor("data_in=%b, sel_in=%b, y_out=%b", data_in,sel_in,y_out);
 
 initial
 begin
 initialize(4'b0101,2'b00);
 initialize(4'b0111,2'b01);
 initialize(4'b1011,2'b10);
 initialize(4'b0001,2'b11);
 $display("test bench complete");
end

initial
 #100 $finish;
 
endmodule
