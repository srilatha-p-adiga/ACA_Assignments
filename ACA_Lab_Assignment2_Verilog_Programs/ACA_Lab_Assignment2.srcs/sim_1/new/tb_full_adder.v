`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 08:27:34
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();
reg A_d,B_d,Cin_d;
wire S_d, Cout_d;

Full_Adder FA0(
    .sum(S_d),
    .c_out(Cout_d),
    .a(A_d),
    .b(B_d),
    .c_in(Cin_d)
 );
 
 initial 
 begin
        A_d=1'b0;  B_d=1'b0; Cin_d=1'b0;
   #10; A_d=1'b0;  B_d=1'b0; Cin_d=1'b1;
   #10; A_d=1'b0;  B_d=1'b1; Cin_d=1'b0;
   #10; A_d=1'b0;  B_d=1'b1; Cin_d=1'b1;
   #10; A_d=1'b1;  B_d=1'b0; Cin_d=1'b0;
   #10; A_d=1'b1;  B_d=1'b0; Cin_d=1'b1;
   #10; A_d=1'b1;  B_d=1'b1; Cin_d=1'b0;
   #10; A_d=1'b1;  B_d=1'b1; Cin_d=1'b1;
   #10; A_d=1'b0;  B_d=1'b0; Cin_d=1'b0;
   
 end
endmodule