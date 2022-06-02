`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 04:14:02 PM
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
    input [3:0] in1,
    input [1:0] sel0,
    input [1:0] sel1,
    output out0,
    output [1:0] out1
    
    );
    
    wire [1:0] dcd2;
    
    assign dcd2 = 1 << in0;
    
    wire [3:0] dcd4;
    
    assign dcd4 = 1 << ({dcd2[1],dcd2[0]});
    
    wire [1:0] special;
    
    Special spc(

    .in(in1),
    .out(special)

    );
    
    wire [7:0] dcd8;
    
    assign dcd8 = 1 << ({special,dcd4[3]});
    
    MUX4 mux1(

    .in0(0),
    .in1(dcd4[0]),
    .in2(dcd4[1]),
    .in3(dcd4[2]),
    .sel(sel0),
    .out(out0)

    );
    
    MUX4_2b mux2(

    .in0({dcd8[0],dcd8[1]}),
    .in1({dcd8[2],dcd8[3]}),
    .in2({dcd8[4],dcd8[5]}),
    .in3({dcd8[6],dcd8[7]}),
    .sel(sel1),
    .out(out1)

    );
    
    
endmodule
