`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 11:32:16 AM
// Design Name: 
// Module Name: counter_6b
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


module counter_6b(

    input clk,
    input reset,
    input en,
    output reg [5:0] out

    );
    
    always @(posedge clk)
    begin
        if(reset) out <= 0;
        else
            if(en)
                out <= out + 1;
            else out <= out;    
    end
    
endmodule
