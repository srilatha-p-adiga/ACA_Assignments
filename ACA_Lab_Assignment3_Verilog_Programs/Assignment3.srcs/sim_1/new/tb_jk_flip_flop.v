`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2022 07:40:40
// Design Name: 
// Module Name: tb_jk_flip_flop
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


module tb_jk_flip_flop();
   reg j_tb, k_tb, clk_tb,reset_tb;
   wire Q_tb, Q_bar_tb;  
  
   JK_Flip_Flop jk0 (
         .j(j_tb),  
          .k(k_tb),  
          .clk(clk_tb),
          .reset(reset_tb),   
          .q(Q_tb),
          .q_bar(Q_bar_tb)
 );  
  
initial
begin
clk_tb=0;
 forever #10 clk_tb = ~clk_tb;  
end 
initial 
begin 
       reset_tb=1; j_tb <= 0; k_tb<=0;
 #100; reset_tb=0; j_tb <= 1; k_tb<=1;
 #100; j_tb<=0; k_tb<=0;                             
 #100; j_tb<=0; k_tb<=1;
 #100; j_tb<=1; k_tb<=0;
 #100; j_tb<=1; k_tb<=1;
 #100; $finish;
end 
endmodule