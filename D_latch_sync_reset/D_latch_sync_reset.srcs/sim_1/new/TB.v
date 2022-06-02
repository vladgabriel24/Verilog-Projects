`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 11:04:50 PM
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
    
    reg D, clock, reset_n;
    wire out, out1;
    
    
    D_FF DUT(

    .D(D),
    .clock(clock),
    .reset_n(reset_n),
    .out(out)

    );
    
    D_FF_async_reset DUT1(

    .D(D),
    .clock(clock),
    .reset_n(reset_n),
    .out(out1)

    );
    
    initial
    begin
        clock = 0;
        
        forever #5 clock = ~clock;
    end
    
    initial
    begin
        reset_n = 1;
        
        #10 reset_n = 0;
        #10 reset_n = 0;
        #10 reset_n = 1;
        #10 reset_n = 1;
        #10 reset_n = 0;
        #10 reset_n = 1;
        #10 reset_n = 1;
    end
    
    initial
    begin
        D = 1;
        
        #20 D = 0;
        #10 D = 1;
        #10 D = 0;
        #10 D = 1;
        #10 D = 1;
        #10 D = 1;
        #10 D = 1;
        #10 D = 1;
    end
    
    initial #150 $stop();
    
    
endmodule
