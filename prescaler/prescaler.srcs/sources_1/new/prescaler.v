`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2022 04:25:21 PM
// Design Name: 
// Module Name: prescaler
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


module prescaler(

    input clock,
    input reset_n,
    input [1:0] sel,
    output out

    );
    
    wire [2:0] counter;
    
    counter_3b cnt(

    .clock(clock),
    .reset_n(reset_n),
    .en(1),
    .out(counter)
    
    );
    
    wire [3:0] out_dcd;
    
    decoder DCD(

    .sel(sel),
    .out(out_dcd)

    );
    
    mux2b MUX(

    .in0(clock),
    .in1(counter[0] & out_dcd[1]),
    .in2(counter[1] & out_dcd[2]),
    .in3(counter[2] & out_dcd[3]),
    .sel(sel),
    .out(out)

    );
    
    
    
    
endmodule
