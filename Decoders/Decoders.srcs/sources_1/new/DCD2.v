`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 03:32:51 PM
// Design Name: 
// Module Name: DCD2
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


module DCD2(

    input in0,
    output reg out0,
    output reg out1

    );
    
    always @(*)
    begin
        case(in0)
            0:
            begin
                out0 = 1;
                out1 = 0;
            end
            1:
            begin
                out0 = 0;
                out1 = 1;
            end
            
        default:
        begin
            out0 = 0;
            out1 = 0;
        end
        
     endcase
    end
    
endmodule
