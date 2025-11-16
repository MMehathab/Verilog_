`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:34 09/07/2025 
// Design Name: 
// Module Name:    relational_op 
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
module relational_op( input[3:0]a,b, output eq,neq,ceq,cneq,lt,gt,lte,gte);

assign eq=(a==b);
assign neq=(a!=b);
assign ceq=(a===b);
assign cneq=(a!==b);
assign lt=(a<b);
assign gt=(a>b);
assign lte=(a<=b);
assign gte=(a>=b);

endmodule
