`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 03:40:11 PM
// Design Name: 
// Module Name: DCD8
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


module DCD8(
    
    input in0,
    output reg out0,
    output reg out1,
    output reg out2,
    output reg out3,
    output reg out4,
    output reg out5,
    output reg out6,
    output reg out7,
    output reg out8
    
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
                out4 = 0;
                out5 = 0;
                out6 = 0;
                out7 = 0;
            end
            
            1:
            begin
                out0 = 0;
                out1 = 1;
                out2 = 0;
                out3 = 0;
                out4 = 0;
                out5 = 0;
                out6 = 0;
                out7 = 0;
            end
            
            2:
            begin
                out0 = 0;
                out1 = 0;
                out2 = 1;
                out3 = 0;
                out4 = 0;
                out5 = 0;
                out6 = 0;
                out7 = 0;
            end
            
            3:
            begin
                out0 = 0;
                out1 = 0;
                out2 = 0;
                out3 = 1;
                out4 = 0;
                out5 = 0;
                out6 = 0;
                out7 = 0;
            end
            
            4:
            begin
                out0 = 0;
                out1 = 0;
                out2 = 0;
                out3 = 0;
                out4 = 1;
                out5 = 0;
                out6 = 0;
                out7 = 0;
            end
            
            5:
            begin
                out0 = 0;
                out1 = 0;
                out2 = 0;
                out3 = 0;
                out4 = 0;
                out5 = 1;
                out6 = 0;
                out7 = 0;
            end
            
            6:
            begin
                out0 = 0;
                out1 = 0;
                out2 = 0;
                out3 = 0;
                out4 = 0;
                out5 = 0;
                out6 = 1;
                out7 = 0;
            end
            
            7:
            begin
                out0 = 0;
                out1 = 0;
                out2 = 0;
                out3 = 0;
                out4 = 0;
                out5 = 0;
                out6 = 0;
                out7 = 1;
            end
            
            default:
            begin
                out0 = 0;
                out1 = 0;
                out2 = 0;
                out3 = 0;
                out4 = 0;
                out5 = 0;
                out6 = 0;
                out7 = 0;
            end
        
     endcase
    end
    
endmodule
