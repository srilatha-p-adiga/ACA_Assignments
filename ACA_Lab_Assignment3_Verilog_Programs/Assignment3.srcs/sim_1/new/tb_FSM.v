`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2022 13:14:50
// Design Name: 
// Module Name: tb_FSM
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


module tb_FSM();
 reg in_tb;
 reg clk_tb;
 reg reset_tb;
 wire out_tb;

/*mealy_machine_code m1(
 .din(in_tb), 
 .clk(clk_tb), 
 .reset(reset_tb), 
 .dout(out_tb)
);*/

moore_machine_code m2(
 .din(in_tb), 
 .clk(clk_tb), 
 .reset(reset_tb), 
 .dout(out_tb)
);
 
initial
begin
    clk_tb = 1'b0;
    reset_tb = 1'b1;
#10 reset_tb = 1'b0;
forever #5 clk_tb = ~clk_tb;  
end

initial 
begin
#0 in_tb = 0;
#10 in_tb = 1;
#10 in_tb = 0;
#10 in_tb = 1; 
#10 in_tb = 1;
#10 in_tb = 0;
#10 in_tb = 1;
#10 in_tb = 1;
#10 in_tb = 0;
#10 in_tb = 1;
#10 $finish;
end
endmodule