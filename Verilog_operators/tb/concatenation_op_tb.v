`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:10 09/07/2025 
// Design Name: 
// Module Name:    concatenation_op_tb 
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
module concatenation_op_tb();
reg [3:0]a,b;
reg c;
wire [7:0]x,y,z;
concatenation_op cp1(.a(a),.b(b),.c(c),.x(x),.y(y),.z(z));

 initial
 
 begin
 a=4'b0011;b=4'b0101;c=1'b1;
 #10;
 a=4'b1111;b=4'b1010;
 #10;
 a=4'b0110;b=4'b1101;
 end
 
 initial
 $monitor("a=%b, b=%b, c=%b, x=%b, y=%b, z=%b",a,b,c,x,y,z);// continously monitors the signal 
                                                            // and prints whenever any listed signal changes
 initial
 $display("a=%b, b=%b, c=%b, x=%b, y=%b, z=%b",a,b,c,x,y,z);//prints only when executed 
                                                            //that is only once at time 0
 initial
 #100 $finish;
 
endmodule
