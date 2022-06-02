`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 04:56:11 PM
// Design Name: 
// Module Name: D_FF_reset
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

module D_FF_reset #(parameter n = 4)(

    input [n-1:0] data,
    input clock,
    output reg [n-1:0] out

    );
    
    always @(posedge clock)
    begin
            out <= data;
    end
    
endmodule
