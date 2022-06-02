`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 03:44:17 PM
// Design Name: 
// Module Name: Special
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


module Special(

    input [3:0] in,
    output reg [1:0] out

    );
    
    always @(*)
    begin
    
        case(in%4)
        
            0: out = in;
            1: out = in;
            2: out = in+1;
            3: out = in[3:2];
        endcase
    
    
    
    end
    
    
    
    
endmodule
