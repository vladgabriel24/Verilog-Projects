`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2022 11:47:51 AM
// Design Name: 
// Module Name: MUX4
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


module MUX4(
    
    input in0,
    input in1,
    input in2,
    input in3,
    input [2:0] sel,
    output out
    
    );
    
    wire out0;
    assign out0 = (sel[0] == 0) ? in0 : in1;
    
    wire out1;
    assign out1 = (sel[0] == 0) ? in2 : in3;
    
    assign out = (sel[1] == 0) ? out0 : out1;
    
    
endmodule
