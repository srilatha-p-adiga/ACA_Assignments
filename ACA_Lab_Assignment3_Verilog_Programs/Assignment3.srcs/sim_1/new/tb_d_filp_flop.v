`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2022 07:21:04
// Design Name: 
// Module Name: tb_d_filp_flop
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


module tb_d_filp_flop();
reg d_tb,clk_tb,reset_tb;
wire Q_tb, QBAR_tb;

D_flip_flop dut(
    .q(Q_tb), 
    .q_bar(QBAR_tb), 
    .reset(reset_tb), 
    .d(d_tb), 
    .clk(clk_tb)
   );                      

initial begin
  clk_tb=0;
 forever #10 clk_tb = ~clk_tb;  
end 
initial 
begin 
       reset_tb=1; d_tb <= 0;
 #100; reset_tb=0; d_tb <= 1;
 #100; d_tb <= 0;
 #100; d_tb <= 1;
 #100; $finish;
end 
endmodule

