`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 04:26:27 PM
// Design Name: 
// Module Name: INC_n
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

module INC_n #(parameter n = 4)(
    input [n-1:0] in,
    input down,
    input count,
    input reset,
    output reg [n-1:0] out
    );
    
    always @(*)
    begin
    
    if(reset)
        out = 0;
    else
        if(count)
        begin
            if(down == 0)
                out = in + 1;
            else
                out = in - 1;
        end
        else out = in;
    
    end
endmodule
