`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:38 09/06/2025 
// Design Name: 
// Module Name:    bidirectional_buffer_tb 
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
module bidirectional_buffer_tb();
wire a,b;
reg ctrl;
reg data1,data2;
assign a= (~ctrl) ? data1:1'bz;  //a drives when ctrl is 0
assign b= (ctrl) ? data2:1'bz;   //b drives when ctrl is 1
bidirectional_buffer dut(.a(a),.b(b),.ctrl(ctrl));

initial
begin

ctrl=0;data1=0; // a drives b recieves.//when ctrl=0;a=data1;b=1b'z;
                                       //then from dut a values goes to b.                                                   
#10;
data1=1;

#10;
ctrl=1;data2=0; // b drives a recieves.//when ctrl=1;b=data2;a=1b'z.
                                       //then from dut b value goes to a.
#10;
data2=1;

end

initial
$monitor("a=%b, b=%b, data1=%b, data2=%b, ctrl=%b", a,b,data1,data2,ctrl);
initial
#100 $finish;
 
endmodule
