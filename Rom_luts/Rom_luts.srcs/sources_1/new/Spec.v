`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2022 10:38:44 PM
// Design Name: 
// Module Name: Spec
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


module Spec(

    input [1:0] in0,
    input [1:0] in1,
    output reg out

    );
    
    reg [3:0] data;
    
    always @(*)
    begin
        data = {in0,in1};
        
        case(data)
            4'b0001: out = 0;
            4'b0100: out = 0;
            4'b0010: out = 0;
            4'b1000: out = 0;
            4'b0011: out = 0;
            4'b1100: out = 0;
            4'b1110: out = 0;
            4'b1011: out = 0;
            4'b1101: out = 0;
            4'b0111: out = 0;
            default: out = 1;
         endcase
    
    
    
    end
    
    
    
endmodule
