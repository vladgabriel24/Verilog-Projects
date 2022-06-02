`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 10:56:34 AM
// Design Name: 
// Module Name: Data_RAM
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


module Data_RAM(

    input clock,
    input [1:0] addr_r_a,
    input [1:0] addr_r_b,
    input [1:0] addr_w,
    input  write_en_n,
    input [3:0] data_w,
    output [3:0] a,
    output [3:0] b

    );
    
    reg [3:0] mem [0:3];
    
    always @(posedge clock)
    begin
        if(~write_en_n)
            mem[addr_w] <= data_w;
    end
    
    assign a = mem[addr_r_a];
    assign b = mem[addr_r_b];
    
endmodule
