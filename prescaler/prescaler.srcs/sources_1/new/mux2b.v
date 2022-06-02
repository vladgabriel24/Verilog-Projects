`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2022 04:15:33 PM
// Design Name: 
// Module Name: mux2b
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


module mux2b(

    input in0,
    input in1,
    input in2,
    input in3,
    input [1:0] sel,
    output reg out

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
