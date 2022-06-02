`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2022 03:38:47 PM
// Design Name: 
// Module Name: osccon_reg
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


module osccon_reg(

    input [3:0] data,
    input reset_n,
    input save,
    input clock,
    output reg [1:0] out
    );
    
    always @(posedge clock)
    begin
        if(~reset_n) out <= 0;
        else
        begin
            if(save) out <= data;
        end
    end
endmodule
