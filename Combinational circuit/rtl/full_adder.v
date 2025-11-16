/********************************************************************************************
Copyright 2019 - Maven Silicon Softech Pvt Ltd. 
 
All Rights Reserved.

This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd.

It is not to be shared with or used by any third parties who have not enrolled for our paid training 

courses or received any written authorization from Maven Silicon.


Webpage     :      www.maven-silicon.com

Filename    :	   full_adder.v   

Description :      One bit Full adder Design

Author Name :      Susmita

Version     : 	   1.0
*********************************************************************************************/

module full_adder(input a,b,c,output s,c0);
assign s= a^b^c;
assign c0= a&b|b&c|c&a;

endmodule
