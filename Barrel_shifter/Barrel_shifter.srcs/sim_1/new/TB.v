`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 09:34:13 AM
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
    
    reg [7:0] in;
    reg [2:0] val;
    
    wire [7:0] out;
    
    initial
    begin
        in = 0;
        #1 in = 8'b1001_0011;
        #8 in = 8'b1010_1010;
    end
    
    initial
    begin
        val = 0;
        
        #1 val = 1;
        #1 val = 2;
        #1 val = 3;
        #1 val = 4;
        #1 val = 5;
        #1 val = 6;
        #1 val = 7;
        
        #2 val = 1;
        #1 val = 2;
        #1 val = 3;
        #1 val = 4;
        #1 val = 5;
        #1 val = 6;
        #1 val = 7;
        
    
    end
    
    Shifter DUT(

    .in(in),
    .val(val),
    .out(out)

    );
    
    initial #17 $stop();
    
    
endmodule
