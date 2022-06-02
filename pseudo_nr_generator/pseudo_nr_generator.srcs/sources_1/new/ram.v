`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2022 12:04:15 PM
// Design Name: 
// Module Name: ram
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


module ram(

    input clock,
    input [5:0] r_addr,
    input [5:0] w_addr,
    input w_en,
    input [11:0] w_data,
    output [11:0] r_data
    );
    
    reg [11:0] mem [0:63];
    
    assign r_data = mem[r_addr];
    
    always @(posedge clock)
    begin
        if(w_en)
            mem[w_addr] <= w_data;
    end
    
    
endmodule
