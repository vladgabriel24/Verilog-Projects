`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 11:35:05 AM
// Design Name: 
// Module Name: reg_6b
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


module reg_6b(

    input [5:0] in,
    input clk,
    input rst,
    output reg [5:0] out

    );
    
    always @(posedge clk)
    begin
        if(rst) out <= 0;
        else
            out <= in;
    end
endmodule
