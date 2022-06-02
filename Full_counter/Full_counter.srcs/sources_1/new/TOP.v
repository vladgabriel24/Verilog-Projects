`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 05:39:42 PM
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
module TOP #(parameter n = 4)(
    input [n-1:0] in,
    input load,
    input down,
    input count,
    input clock,
    input reset,
    output [n-1:0] out
    );
    
    wire [n-1:0] inc;
    wire [n-1:0] reg_;
    
    INC_n #(.n(n)) INC(
    .in(out),
    .down(down),
    .reset(reset),
    .count(count),
    .out(inc)
    );
    
    wire [n-1:0] mux;
    
    assign mux = (load == 1) ? in : inc;
    
    D_FF_reset #(.n(n)) R(
    .data(mux),
    .clock(clock),
    .out(reg_)
    );
    assign out = reg_;
endmodule
