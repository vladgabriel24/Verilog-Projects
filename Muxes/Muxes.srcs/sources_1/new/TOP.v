`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2022 11:56:27 AM
// Design Name: 
// Module Name: TOP
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


module TOP(
    
    input in0,
    input in1,
    input in2,
    input in3,
    input [1:0] sel,
    input [3:0] data,
    output reg out0,
    output reg out1,
    output reg out2,
    output reg out3
    
    );
    
    wire sel0;
    
    assign sel0 = (data%2 == 0) ? 0 : 1;    
    
    wire [1:0] sel1;
    
    assign sel1 = (sel0 == 0) ? ~sel : sel;
    
    wire out_mux4;
    
    MUX4 mux4(
    
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .sel(sel),
    .out(out_mux4)
    
    );
    
    always @(*)
    begin
        case(sel1)
            0:
            begin
            out0 = out_mux4;
            out1 = 0;
            out2 = 0;
            out3 = 0;
            end
            
            1:
            begin
            out1 = out_mux4;
            out0 = 0;
            out2 = 0;
            out3 = 0;
            end
            
            2:
            begin
            out2 = out_mux4;
            out0 = 0;
            out1 = 0;
            out3 = 0;
            end
            
            3:
            begin
            out3 = out_mux4;
            out0 = 0;
            out1 = 0;
            out2 = 0;
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
