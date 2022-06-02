`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2022 10:10:39 AM
// Design Name: 
// Module Name: TB
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
module TB();
    reg x1_t;
    reg x0_t;
    reg clock_t;
    reg reset_t;
    wire [2:0] out_t;

    Delayed_Mealy_Autom DUT(
        .x1(x1_t),
        .x0(x0_t),
        .clock(clock_t),
        .reset(reset_t),
        .out(out_t)
        );
    initial
    begin 
        clock_t=1;
        forever #1 clock_t=~clock_t;
    end
    
    initial 
    begin 
        reset_t=1;
        #5 reset_t=0;
    end
    
    initial
    begin
        x0_t=0;
        #15 x0_t=1;
        #5  x0_t=0;
    end
    
    initial
    begin 
        x1_t=0;
        #5 x1_t=1;
        #5 x1_t=0;
        #15 x1_t=1;
    end
    initial #40 $stop();
endmodule
