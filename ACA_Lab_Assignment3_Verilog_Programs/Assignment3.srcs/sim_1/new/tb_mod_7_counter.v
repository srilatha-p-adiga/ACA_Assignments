`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2022 10:44:25
// Design Name: 
// Module Name: tb_mod_7_counter
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


module tb_mod_7_counter();
reg clk_tb, reset_tb;
wire [2:0] out_tb;  
  
mod_7_counter co1 (
  .clk(clk_tb),  
  .reset(reset_tb),  
  .dout(out_tb)
);
initial 
begin
clk_tb=0;
forever #5 clk_tb = ~clk_tb; 
end 

initial 
begin
     reset_tb=1; 
#10; reset_tb=0;
#70;reset_tb=1;
#10; reset_tb=0;
#10; $finish;
end 
endmodule
