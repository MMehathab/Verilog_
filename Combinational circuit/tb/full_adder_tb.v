module full_adder_tb();
		
   //Testbench global variables
   reg   a,b,cin;
   wire  sum,carry;

   //Variable for loop iteration 
   integer i;
full_adder dut(.a(a),.b(b),.c(cin),.s(sum),.c0(carry));
   initial 
      begin
    a   = 1'b0;
	 b   = 1'b0;
	 cin = 1'b0;
      end
				
   //Process to generate stimulus using for loop
   initial
      begin 
	 for (i=0;i<8;i=i+1)
	    begin
	       {a,b,cin}=i;
	       #10;
	    end
      end
				
   //Process to monitor the changes in the variables
   initial 
      $monitor("Input a=%b, b=%b, c=%b, Output sum =%b, carry=%b",a,b,cin,sum,carry);
									
   //Process to terminate simulation after 100ns
   initial #100 $finish;
			
   
endmodule






//* we can write tb this way also*//


//module full_adder_tb();
//reg   a,b,cin;
// wire  sum,carry;
//full_adder dut(.a(a),.b(b),.c(cin),.s(sum),.c0(carry));
// initial 
// begin
// a=0;b=0;cin=0;
//#10ns;
// a=0;b=0,cin=1;
// #10ns;
// a=1;b=0;cin=0;
// #10ns;
// a=1;b=1;cin=0;
// #10ns;
// a=1;b=1;cin=1;
// end
// initial 

// $monitor("Input a=%b, b=%b, c=%b, Output sum =%b, carry=%b",a,b,cin,sum,carry);
// initial
// #100 $finish;

// endmodule
