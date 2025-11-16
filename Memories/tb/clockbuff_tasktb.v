`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:58:30 09/18/2025 
// Design Name: 
// Module Name:    clockbuff_tasktb 
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
module clockbuff_tasktb();
reg mclk;
wire bclk;
time t1,t2,t3,t4,t5,t6; // t1 is first posedge of mclk 
                        // t2 is second posedge of mclk
                        // t3 is first posedge of bclk 								
                        // t4 is second posedge of bclk 

clockbuf dut(.mclk(mclk),.bclk(bclk));

initial
mclk=1'b0;
always
#10 mclk=~mclk;


task m;
begin
@(posedge mclk);
t1=$time;
@(posedge mclk);
t2=$time;
end
endtask

task b;
begin
@(posedge bclk);
t3=$time;
@(posedge bclk);
t4=$time;
end
endtask

initial
begin
fork
m;
b;
join

if((t1==t3) && (t2==t4)) // to check when t1 is high t3 is also high at same time, same t2 and t4
$display("phase matched");

else
begin
$display("phase not matched");
end

t5=t2-t1;// to check time period difference is same or not
t6=t4-t3;

if(t5==t6)
begin
$display("frequency matched");
end
else
begin
$display("frequency not matched");
end
end

initial
#100 $finish;

endmodule
