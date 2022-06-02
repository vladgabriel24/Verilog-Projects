`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2022 03:42:32 PM
// Design Name: 
// Module Name: ram_instr
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


module ram_instr(
    
    input [3:0] rd_addr,
    input [3:0] wr_data,
    input [3:0] wr_addr,
    input clock,
    input save,
    output [3:0] rd_data

    );
    
    reg [3:0] mem [0:15];
    
    assign rd_data = mem[rd_addr];
    
    always @(posedge clock)
    begin
        if(save)
            mem[wr_addr] <= wr_data;
    end
    
    
endmodule
