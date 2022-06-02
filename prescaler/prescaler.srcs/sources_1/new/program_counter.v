`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2022 03:32:46 PM
// Design Name: 
// Module Name: program_counter
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


module program_counter(

    input rst_n,
    input clock,
    output reg [3:0] out

    );
    
    always @(posedge clock)
    begin
        if(~rst_n) out <=0;
        else out <= out + 1;
    end
    
endmodule
