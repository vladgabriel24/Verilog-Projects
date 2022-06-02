`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2022 11:40:19 PM
// Design Name: 
// Module Name: Demux4
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


module Demux4(

    input [1:0] in,
    input [1:0] sel,
    output reg [1:0] out0,
    output reg [1:0] out1,
    output reg [1:0] out2,
    output reg [1:0] out3

    );
    
    always @(*)
    begin
        
        case(sel)
            0:
            begin
                out0 = in;
                out1 = 0;
                out2 = 0;
                out3 = 0;
            end
            
            1:
            begin
                out1 = in;
                out0 = 0;
                out2 = 0;
                out3 = 0;
            end
            
            2:
            begin
                out2 = in;
                out1 = 0;
                out0 = 0;
                out3 = 0;
            end
            
            3:
            begin
                out3 = in;
                out1 = 0;
                out2 = 0;
                out0 = 0;
            end
        endcase
    
    
    
    end
    
    
endmodule
