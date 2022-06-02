`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 04:34:59 PM
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
    
    reg in0;
    reg [3:0] in1;
    reg [1:0] sel0, sel1;
    
    wire out0;
    wire [1:0] out1;
    
    initial
    begin
        in0 = 0;
        forever #5 in0 = ~in0;
    end
    
    initial
    begin
        in1 = 0;
        #10 in1 = 1;
        #25 in1 = 2;
        #25 in1 = 3;
        #25 in1 = 4;
        #20 in1 = 0;
    end
    
    initial
    begin
        sel0 = 0;
        #10 sel0 = 0;
        #5 sel0 = 1;
        #5 sel0 = 2;
        #5 sel0 = 3;
    end
    
    initial
    begin
        sel1 = 0;
        #10 sel1 = 1;
    end
    
    TOP DUT(
    
    .in0(in0),
    .in1(in1),
    .sel0(sel0),
    .sel1(sel1),
    .out0(out0),
    .out1(out1)
    
    );
    
    initial #125 $stop();
  
  
    
    
endmodule
