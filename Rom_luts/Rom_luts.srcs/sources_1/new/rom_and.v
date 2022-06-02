`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2022 10:58:28 PM
// Design Name: 
// Module Name: rom_and
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


module rom_and(

    input [3:0] addr,
    output reg [1:0] data

    );
    
    always @(*)
    begin
    
        case(addr)
        4'b0000: data = 0;
        4'b0001: data = 0;
        4'b0010: data = 0;
        4'b0011: data = 0;
        
        4'b0100: data = 0;
        4'b0101: data = 1;
        4'b0110: data = 0;
        4'b0111: data = 1;
        
        4'b1000: data = 0;
        4'b1001: data = 0;
        4'b1010: data = 2;
        4'b1011: data = 2;
        
        4'b1100: data = 0;
        4'b1101: data = 1;
        4'b1110: data = 2;
        4'b1111: data = 3;
        
        default: data = 0;
        
        
        endcase
    
    
    
    
    end
    
    
    
endmodule
