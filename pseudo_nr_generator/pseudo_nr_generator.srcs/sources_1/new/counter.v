`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2022 12:01:51 PM
// Design Name: 
// Module Name: counter
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


module counter #(parameter n = 4)(

    input en,
    input clock,
    input rst,
    output reg [n-1:0] data

    );
    
    always @(posedge clock)
    begin
        if(rst) data <=0;
        else
            if(en)
                data <= data + 1;
            else data <= data;
    end
endmodule
