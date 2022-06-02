`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2022 01:20:35 PM
// Design Name: 
// Module Name: delay_reg
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


module delay_reg(

    input clock,
    input reset,
    input [11:0] data_in,
    output reg [11:0] data_out

    );
    
    always @(posedge clock)
    begin
        if(reset) data_out <= 0;
        else
            data_out <= data_in;
    end
    
endmodule
