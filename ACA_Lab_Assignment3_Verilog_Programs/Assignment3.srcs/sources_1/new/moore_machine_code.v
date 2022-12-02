`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2022 15:09:01
// Design Name: 
// Module Name: moore_machine_code
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


module moore_machine_code (clk,reset,din,dout);
  input clk;
  input reset;
  input din;
  output reg dout;

reg [2:0] state;
reg [2:0] next_state;
parameter S0=0, S1=1, S2=2, S3=3, S4=4;

always @(posedge clk or posedge reset)
begin
 if(reset==1) 
 state <= 0;// when reset=1, reset the state of the FSM to "Zero" State
 else
 state <= next_state; // otherwise, next state
end 

always @ (state, din)
begin 
 case(state)
 S0: begin
 if(din==1)
 next_state<=S1;
 else 
 next_state<=S0;
 end
 
 S1: begin
 if(din==0)
 next_state<=S2;
 else 
 next_state<=S1;
 end
 
 S2: begin
 if(din==0)
 next_state<=S0;
 else 
 next_state<=S3;
 end
 
 S3: begin
 if(din==0)
 next_state<=S2;
 else 
 next_state<=S4;
 end
 
 S4: begin
 if(din==0)
 next_state<=S2;
 else 
 next_state<=S1;
 end
 default : next_state = S0;
 endcase
 end
 
always @(state)
begin
case(state)
S0 :  dout = 0;
S1 :  dout = 0;
S2 :  dout = 0;
S3 :  dout = 0;
S4 :  dout = 1;
default :  dout = 0;
endcase 
end
endmodule
