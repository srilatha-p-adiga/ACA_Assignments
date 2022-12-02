`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2022 11:49:52
// Design Name: 
// Module Name: mealy_machine_code
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


module mealy_machine_code (clk,reset,din,dout);
  input clk;
  input reset;
  input din;
  output reg dout;

reg [1:0] state;
reg [1:0] next_state;
parameter S0=0, S1=1, S2=2, S3=3;

always @(posedge clk or posedge reset)
begin
 if(reset==1) 
 state <= 0;// when reset=1, reset the state of the FSM to "Zero" State
 else
 state <= next_state; // otherwise, next state
end 

always @ (state or din)
begin 
 case(state)
 S0: if(din)
 next_state<=S1;
 else 
 next_state<=S0;
 
 S1: if(din)
 next_state<=S1;
 else 
 next_state<=S2;
 
 S2: if(din)
 next_state<=S3;
 else 
 next_state<=S0;
 
 S3: if(din)
 next_state<=S1;
 else 
 next_state<=S2;
 endcase
 end
 
always @(state)
begin
case(state)
S0 :  dout = 0;
S1 :  dout = 0;
S2 :  dout = 0;
S3 :  begin
if(din)
dout = 1 ;
else 
dout = 0;
end
endcase 

end 
endmodule
