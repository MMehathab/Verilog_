`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:33:17 09/04/2025 
// Design Name: 
// Module Name:    mux4_1_using_decoder_tb 
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
module mux4_1_using_decoder_tb();
wire z;
reg s1,s0,i0,i1,i2,i3;
integer i;
mux4_1_using_decoder dut(.s1(s1),.s0(s0),.I0(i0),.I1(i1),.I2(i2),.I3(i3),.z(z));

initial
begin
  for(i=0;i<64;i=i+1)
    begin
     {s1,s0,i0,i1,i2,i3}=i;
#10;
end
end


// we can also give our own random inputs and check instead of for loop//


//s1=0;s0=0;i0=0;i1=0;i2=0;i3=0;
//#10;
//s1=0;s0=0;i0=1;i1=0;i2=0;i3=0;
//#10;
//s1=0;s0=1;i0=0;i1=1;i2=0;i3=0;
//#10;
//s1=0;s0=1;i0=0;i1=0;i2=0;i3=0;
//#10;
//s1=1;s0=0;i0=0;i1=0;i2=1;i3=0;
//#10;
//s1=1;s0=1;i0=0;i1=0;i2=0;i3=1;

initial
#500 $finish;

endmodule
