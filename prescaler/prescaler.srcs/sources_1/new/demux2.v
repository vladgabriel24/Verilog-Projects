`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2022 04:17:46 PM
// Design Name: 
// Module Name: demux2
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


module demux2 #(parameter n = 1)(

    input [n-1:0] in,
    input sel,
    output reg [n-1:0] out0,
    output reg [n-1:0] out1
    );
    
    always @(*)
    begin
        case(sel)
            0:
            begin 
                out0 = in;
                out1 = 0;
            end
            
            1:
            begin
                out0 = 0;
                out1 = in;
            end
        
            default:
            begin
                out0 = 0;
                out1 = 0;
            end
        
        endcase
    end
endmodule
