`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 12:19:27 AM
// Design Name: 
// Module Name: DIGIT_SUM
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


module DIGIT_SUM(

    input [3:0] in0,
    input [3:0] in1,
    input ci,
    output [3:0] digit,
    output co

    );
    
    reg [4:0] sum4_1;
    
    always @(*) sum4_1 = in0 + in1 + ci;
    
    wire [3:0] sum4_2;
    
    assign sum4_2 = sum4_1[3:0] + 6 + 0;
    
    wire gt;
    
    CMP dut(

    .in0(sum4_1),
    .out(gt)

    );
    
    assign digit = (gt == 0) ? sum4_1[3:0] : sum4_2;
    
    assign co = gt;
    
endmodule
