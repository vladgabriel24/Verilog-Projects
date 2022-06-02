`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 04:21:54 PM
// Design Name: 
// Module Name: MUX4
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


module MUX4_2b(

    input [1:0] in0,
    input [1:0] in1,
    input [1:0] in2,
    input [1:0] in3,
    input [1:0] sel,
    output reg [1:0] out

    );
    
    always @(*)
    begin
    
        case(sel)
            0: out = in0;
            1: out = in1;
            2: out = in2;
            3: out = in3;
            default: out = 0;
        endcase
    end    
endmodule
