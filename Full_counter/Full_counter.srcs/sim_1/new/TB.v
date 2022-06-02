`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 04:37:37 PM
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
    
    reg [3:0] in;
    reg down;
    reg clock, reset;
    reg load;
    reg count;
    wire [3:0] out;
    
    parameter n = 4;
    
    TOP #(.n(n)) DUT(
    .in(in),
    .load(load),
    .down(down),
    .count(count),
    .clock(clock),
    .reset(reset),
    .out(out)

    );
    
    initial in = 2;
    
    initial
    begin
        down = 0;
        
        #65 down = 1;
    end
    
    initial
    begin
        count = 1;
        
        #130 count = 0;
    end
    
    initial
    begin
        reset = 0;
        
        #60 reset = 1;
        #10 reset = 0;
    end
    
    initial
    begin
        load = 1;
        #10 load = 0;
    end
    
    initial
    begin
        clock = 0;
        forever #5 clock = ~clock;
    end
    
    initial #300 $stop();
endmodule
