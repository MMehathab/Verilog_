`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:21 09/07/2025 
// Design Name: 
// Module Name:    relational_op_tb 
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
module relational_op_tb();
wire eq,neq,ceq,cneq,lt,gt,lte,gte;
reg [3:0]a,b;
relational_op rp1(.a(a),.b(b),.eq(eq),.neq(neq),.ceq(ceq),.cneq(cneq),.lt(lt),.gt(gt),.lte(lte),.gte(gte));

initial
begin
a=4'b1101;b=4'b0101;
#10;
a=4'b0011;b=4'b0011;
#10;
a=4'b11x1;b=4'b01x1;
#10;
a=4'b1z00;b=4'bz100;
#10;
a=4'bx101;b=4'bz101;
end

initial
$monitor("a=%b, b=%b, eq=%b, neq=%b, ceq=%b, cneq=%b, lt=%b, gt=%b, lte=%b, gte=%b",a,b,eq,neq,ceq,cneq,lt,gt,lte,gte);
initial
#100 $finish;
endmodule
