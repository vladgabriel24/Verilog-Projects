`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 11:11:39 AM
// Design Name: 
// Module Name: Counter_32b
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


module Counter_32b(

    input clock,
    input rst_n,
    output reg [31:0] val

    );
    
    always @(posedge clock)
    begin
        if(~rst_n)
            val <= 0;
        else
            val <= val + 1;
    end
endmodule
