`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 12:04:16 PM
// Design Name: 
// Module Name: DEMUX
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


module DEMUX(

    input [7:0] in0,
    input [1:0] sel,
    output reg [7:0] out0,
    output reg [7:0] out1,
    output reg [7:0] out2,
    output reg [7:0] out3

    );
    
    
    always @(*)
    begin
    
        if(sel == 0)
        begin
            out0 = in0;
            out1 = 0;
            out2 = 0;
            out3 = 0;
        end
        else if(sel == 1)
        begin
            out0 = 0;
            out1 = in0;
            out2 = 0;
            out3 = 0;
        end
        else if(sel == 2)
        begin
            out0 = 0;
            out1 = 0;
            out2 = in0;
            out3 = 0;
        end
        else if(sel == 3)
        begin
            out0 = 0;
            out1 = 0;
            out2 = 0;
            out3 = in0;
        end
        else
        begin
            out0 = 0;
            out1 = 0;
            out2 = 0;
            out3 = 0;
        end
         
    
    end
    
    
endmodule
