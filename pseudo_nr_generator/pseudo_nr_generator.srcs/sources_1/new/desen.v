`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2022 01:25:04 PM
// Design Name: 
// Module Name: desen
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


module desen(

    input start,
    input stop,
    input clock,
    input reset,
    input [11:0] prev,
    input [11:0] seed,
    output [3:0] data_out
    );
    
    wire out_T_ff;
    
    T_FF t_ff(

    .toggle(start | stop),
    .clock(clock),
    .reset(reset),
    .data(out_T_ff)

    );
    
    wire [3:0] out_cnt;
    
    counter #(.n(4)) cnt(

    .en(out_T_ff),
    .clock(clock),
    .rst(reset),
    .data(out_cnt)

    );
    
    wire [11:0] adder;
    
    assign adder = prev + seed + out_cnt;
    
    lut LUT(

    .in(adder[3:0]),
    .out(data_out)

    );
    
    
    
endmodule
