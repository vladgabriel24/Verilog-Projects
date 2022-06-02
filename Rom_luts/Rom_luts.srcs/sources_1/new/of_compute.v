`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2022 10:44:25 PM
// Design Name: 
// Module Name: of_compute
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


module of_compute(
    
    input [1:0] in0,
    input [1:0] in1,
    output out
    
    );
    
    reg [2:0] sum;
    
    always @(*) sum = in0 + in1;
    
    assign out = sum[2];
    
endmodule
