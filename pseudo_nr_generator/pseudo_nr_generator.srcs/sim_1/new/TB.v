`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2022 02:50:29 PM
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


module TB(

    );
    
    reg clock, reset;
    reg start, stop;
    reg [11:0] seed;
    reg [5:0] addr_r;
    wire [11:0] data_read;
    wire [11:0] data_current;
    
    TOP DUT(


    .clock(clock),
    .reset(reset),
    .start(start),
    .addr_r(6'b000110),
    .stop(stop),
    .seed(12'b000000010000),
    .data_read(data_read),
    .data_current(data_current)

    );
    
    
    initial
    begin
        clock = 0;
        #1 clock = 0;
        forever #1 clock = ~clock;
    end
    
    initial
    begin
        reset = 1;
        #6 reset = 0;
    end
    
    initial
    begin
        start = 0;
        #10 start = 1;
        #2 start = 0;
        #6 start = 1;
        #2 start = 0;
        #10 start = 1;
        #2 start = 0;
    
    end
    
    initial
    begin
        stop = 0;
        #12 stop = 1;
        #2 stop = 0;
        #8 stop = 1;
        #2 stop = 0;
        #14 stop = 1;
        #2 stop = 0;
    end
    
    initial #400 $stop();
    
endmodule
