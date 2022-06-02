`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 12:42:14 AM
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
    
    
    reg [3:0] a0, b0, a1, b1;
    
    wire [3:0] s0, s1;
    wire s2;
    
    initial
    begin
        a1 = 0;
        #5 a1 = 3;
        #4 a1 = 6;
        #4 a1 = 9;
        #4 a1 = 0;
    end
    
    initial
    begin
        a0 = 0;
        #3 a0 = 3;
        #4 a0 = 6;
        #4 a0 = 9;
        #4 a0 = 0;
    end
    
    initial
    begin
        b1 = 0;
        #1 b1 = 4;
        #4 b1 = 8;
        #4 b1 = 4;
        #4 b1 = 8;
        #4 b1 = 0;
    end
    
    initial
    begin
        b0 = 0;
        #1 b0 = 2;
        #1 b0 = 4;
        #1 b0 = 6;
        #1 b0 = 8;
        
        #1 b0 = 2;
        #1 b0 = 4;
        #1 b0 = 6;
        #1 b0 = 8;
        
        #1 b0 = 2;
        #1 b0 = 4;
        #1 b0 = 6;
        #1 b0 = 8;
        
        #1 b0 = 2;
        #1 b0 = 4;
        #1 b0 = 6;
        #1 b0 = 8;
        
        #1 b0 = 0;
    end
    
    
    TOP DUT(

    .a0(a0),
    .a1(a1),
    .b0(b0),
    .b1(b1),
    .ci(0),
    .s0(s0),
    .s1(s1),
    .c0(s2)
    

    );
    
    initial #19 $stop();
    
    
    
    
    
    
    
    
endmodule
