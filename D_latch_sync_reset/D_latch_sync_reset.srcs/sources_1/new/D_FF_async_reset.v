`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 11:57:07 PM
// Design Name: 
// Module Name: D_FF_async_reset
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


module D_FF_async_reset(

    input D,
    input clock,
    input reset_n,
    output reg out

    );
    
    always @(negedge clock, reset_n)
    begin
        if(reset_n == 1)
            out <= D;
        else out <= 0;
    end
    
endmodule
