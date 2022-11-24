`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 10:19:23
// Design Name: 
// Module Name: tb_four_to_one_mux
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


module tb_four_to_one_mux();
reg A,B,C,D,S0,S1;
wire Y;
four_to_one_mux m1(
   .a(A), 
   .b(B),
   .c(C), 
   .d(D), 
   .s0(S0),
   .s1(S1),
   .y(Y)
);
initial 
 begin
         S1=1'b0; S0=1'b0; A=1'b1; B=1'b0; C=1'b0; D=1'b0;
   #10;  S1=1'b0; S0=1'b1; A=1'b0; B=1'b1; C=1'b0; D=1'b0;
   #10;  S1=1'b1; S0=1'b0; A=1'b0; B=1'b0; C=1'b1; D=1'b0;
   #10;  S1=1'b1; S0=1'b1; A=1'b0; B=1'b0; C=1'b0; D=1'b1;
   
end
endmodule
