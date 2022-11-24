`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 07:31:44
// Design Name: 
// Module Name: Full_Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_Adder(sum, c_out, a, b, c_in);
 input a;
 input b;
 input c_in;
 output reg sum , c_out;
  
always @(a or b or c_in)
begin   
if(a==0 && b==0 && c_in==0)
begin
   sum=0;
   c_out=0;
  end

else if(a==0 && b==0 && c_in==1)
  begin
   sum=1;
   c_out=0;
  end

else if(a==0 && b==1 && c_in==0)
  begin
   sum=1;
   c_out=0;
  end


else if(a==0 && b==1 && c_in==1)
  begin
   sum=0;
   c_out=1;
  end



else if(a==1 && b==0 && c_in==0)
  begin
   sum=1;
   c_out=0;
  end



else if(a==1 && b==0 && c_in==1)
  begin
   sum=0;
   c_out=1;
  end



else if(a==1 && b==1 && c_in==0)
  begin
  sum=0;
  c_out=1;
  end

else if(a==1 && b==1 && c_in==1)
  begin
  sum=1;
  c_out=1;
  end
   end
endmodule

