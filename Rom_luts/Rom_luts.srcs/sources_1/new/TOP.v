`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2022 11:26:53 PM
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

    input [1:0] data0,
    input [1:0] data1,
    input [7:0] instr_in,
    output ok,
    output OF,
    output [1:0] out0,
    output [1:0] out1,
    output [1:0] out2,
    output [1:0] out3,
    output [7:0] instr_out

    );
    
    wire ok_add;
    wire [1:0] add_mux;
    
    add_block ADD(

    .data0(data0),
    .data1(data1),
    .sel(instr_in[0:0]),
    .ok(ok_add),
    .mux(add_mux),
    .OF(OF)

    );
    
    wire ok_and;
    wire [1:0] and_mux;
    
    and_block AND(

    .data0(data0),
    .data1(data1),
    .sel(instr_in[0:0]),
    .ok(ok_and),
    .mux(and_mux)

    );
    
    wire [1:0] special;
    
    Spec(

    .in0(data0),
    .in1(data1),
    .out(special)

    );
    
    assign ok = ok_add | ok_and;
    
    wire [1:0] out_mux4;
    
    Mux4 mux4(

    .in0(add_mux),
    .in1(and_mux),
    .in2(special),
    .in3(0),
    .sel(instr_in[2:1]),
    .out(out_mux4)

    );
    
    Demux4 dmux4(

    .in(out_mux4),
    .sel(instr_in[4:3]),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3)

    );
    
    assign instr_out = instr_in;
    
endmodule
