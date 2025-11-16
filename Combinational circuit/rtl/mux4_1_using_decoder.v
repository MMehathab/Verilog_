`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:43 09/03/2025 
// Design Name: 
// Module Name:    mux4_1_using_decoder 
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
module mux4_1_using_decoder(input I0,I1,I2,I3,s1,s0, output z);

wire w0,w1,w2,w3;
decoder2_4 d1(.s1(s1),.s0(s0),.y3(w3),.y2(w2),.y1(w1),.y0(w0));
bufif1 b1(z,I0,w0);  // (out,in,enable)//
bufif1 b2(z,I1,w1);
bufif1 b3(z,I2,w2);
bufif1 b4(z,I3,w3);


endmodule

