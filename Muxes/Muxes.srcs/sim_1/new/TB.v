`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2022 12:35:07 PM
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
    
    reg in0, in1, in2, in3;
    reg [1:0] sel;
    reg [3:0] data;
    
    wire out0, out1, out2, out3;
    
    initial
    begin
        in0 = 0;
        #20 in0 = 1;
        #20 in0 = 0;
        #10 in0 = 1;
    end
    
    initial
    begin
        in1 = 0;
        #20 in1 = 1;
    end
        
    initial
    begin
        in2 = 0;
        #20 in2 = 1;
        #20 in2 = 0;
    end
    
    initial
    begin
        in3 = 0;
        #20 in3 = 1;
        #20 in3 = 0;
        #10 in3 = 1;
    end
    
    initial
    begin
        sel = 0;
        #10 sel = 1;
        #10 sel = 2;
        #5 sel = 3;
        #5 sel = 2;
        #5 sel = 0;
    end
    
    initial
    begin
        data = 0;
        #10 data = 1;
        #10 data = 2;
        #5 data = 3;
        #5 data = 4;
        #5 data = 5;
        #5 data = 6;
        #5 data = 7;
        #5 data = 0;
    end
    
    TOP DUT(
    
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .sel(sel),
    .data(data),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3)
    
    );
    
    initial #90 $stop();
    
    
endmodule
