


module dff_tb();
wire q,qb;
reg clk,rst,d;

dff dut (.clk(clk),.rst(rst),.d(d),.q(q),.qb(qb));

always
begin
clk=1'b1;
#5 clk=~clk;
#5;
end

task initialze(input d1,rst1);
begin
{d,rst}={d1,rst1};
#10;
end
endtask

initial
begin
d=0;rst=1;
#5;
initialze(1,0);
initialze(0,0);
initialze(1,0);
initialze(1,1);
end

initial
$monitor("time=%d, d=%d, rst=%d, clk=%d, q=%d, qb=%d", $time,d,rst,clk,q,qb);
initial
#100 $finish;

endmodule