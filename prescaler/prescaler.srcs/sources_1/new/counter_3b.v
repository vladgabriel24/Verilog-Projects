`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2022 03:27:00 PM
// Design Name: 
// Module Name: counter_3b
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


module counter_3b(

    input clock,
    input reset_n,
    input en,
    output reg [2:0] out
    );
    
    always @(posedge clock)
    begin
        if(~reset_n) out <=0;
        else
        begin
            if(en) out <= out + 1;
        end
    end
endmodule
