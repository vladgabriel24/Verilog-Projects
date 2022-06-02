`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2022 11:57:41 AM
// Design Name: 
// Module Name: T_FF
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


module T_FF(

    input toggle,
    input clock,
    input reset,
    output reg data

    );
    
    always @(posedge clock)
    begin
    
        if(reset) data <= 0;
        else
        begin
            if(toggle)
                data <= ~data;
            else data <= data;
        end
    end
endmodule
