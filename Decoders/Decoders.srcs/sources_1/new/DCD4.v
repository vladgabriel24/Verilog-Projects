`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 03:35:22 PM
// Design Name: 
// Module Name: DCD4
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


module DCD4(

    input in0,
    output reg out0,
    output reg out1,
    output reg out2,
    output reg out3

    );
    
    
    always @(*)
    begin
        case(in0)
            0:
            begin
                out0 = 1;
                out1 = 0;
                out2 = 0;
                out3 = 0;
            end
            
            1:
            begin
                out0 = 0;
                out1 = 1;
                out2 = 0;
                out3 = 0;
            end
            
            2:
            begin
                out0 = 0;
                out1 = 0;
                out2 = 1;
                out3 = 0;
            end
            
            3:
            begin
                out0 = 0;
                out1 = 0;
                out2 = 0;
                out3 = 1;
            end
            
        default:
        begin
            out0 = 0;
            out1 = 0;
            out2 = 0;
            out3 = 0;
        end
        
     endcase
    end
    
endmodule
