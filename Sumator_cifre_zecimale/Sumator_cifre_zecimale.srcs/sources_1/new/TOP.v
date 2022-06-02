`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 12:35:09 AM
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

    input [3:0] a0,
    input [3:0] a1,
    input [3:0] b0,
    input [3:0] b1,
    input ci,
    output [3:0] s0,
    output [3:0] s1,
    output c0
    

    );
    
    wire co_sum1;
    
    DIGIT_SUM sum1(

    .in0(a0),
    .in1(b0),
    .ci(ci),
    .digit(s0),
    .co(co_sum1)

    );
    
    DIGIT_SUM sum2(

    .in0(a1),
    .in1(b1),
    .ci(co_sum1),
    .digit(s1),
    .co(c0)

    );
    
endmodule
