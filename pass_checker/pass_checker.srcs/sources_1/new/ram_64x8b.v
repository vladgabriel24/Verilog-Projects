`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 11:37:23 AM
// Design Name: 
// Module Name: ram_64x8b
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


module ram_64x8b(

    input [5:0] addr,
    input w_en,
    input w_data, // data ce urmeaza a fi scrisa
    input clk,
    output [7:0] out
    
    );
    
    reg [7:0] mem [63:0];
    
    assign out = mem[addr];
    
    always @(posedge clk)
    begin
        if(w_en)
            mem[addr] <= w_data;
    end
    
endmodule
