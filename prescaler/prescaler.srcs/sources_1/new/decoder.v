`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2022 03:34:30 PM
// Design Name: 
// Module Name: decoder
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


module decoder(

    input [1:0] sel,
    output reg [3:0] out

    );
    
    always @(*)
    begin
        case(sel)
            2'b00:
            begin
                out[0]=1;
                out[1]=0;
                out[2]=0;
                out[3]=0;
            end
            
            2'b01:
            begin
                out[0]=0;
                out[1]=1;
                out[2]=0;
                out[3]=0;
            end
            
            2'b10:
            begin
                out[0]=0;
                out[1]=0;
                out[2]=1;
                out[3]=0;
            end
            
            2'b11:
            begin
                out[0]=0;
                out[1]=0;
                out[2]=0;
                out[3]=1;
            end
            
            default: out = 0;
        
        endcase
    end
endmodule
