`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 11:02:23 AM
// Design Name: 
// Module Name: Instr_RAM
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


module Instr_RAM(

    input clock,
    input [2:0] addr,
    input [1:0] data_w,
    input write_en_n,
    output reg [1:0] data_r

    );
    
    reg [1:0] mem [0:7];
    
    always @(posedge clock)
    begin
        if(~write_en_n)
            mem[addr] <= data_w;
    end
    
    always @(posedge clock)
    begin
        data_r <= mem[addr];
    end
    
endmodule
