`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 11:33:46 AM
// Design Name: 
// Module Name: ALU
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


module ALU(
    
    input [15:0] instr,
    input [7:0] data0,
    input [7:0] data1,
    output OF,
    output [7:0] out0,
    output [7:0] out1,
    output [7:0] out2,
    output [7:0] out3,
    output ZF
    
    );
    
    wire [7:0] shr, shl, sub, and_, or_, xor_;
    wire [8:0] add;
    
    assign shr = data0 >> data1;
    assign shl = data0 << data1;
    assign add = data0 + data1;
    assign sub = data0 - data1;
    assign and_ = data0 & data1;
    assign or_ = data0 | data1;
    assign xor_ = data0 ^ data1;
    
    wire [7:0] mux1;
    
    MUX4 mux_1(

    .in0(shr),
    .in1(shl),
    .in2(add[7:0]),
    .in3(sub),
    .sel(instr[11:10]),
    .out0(mux1)

    );
    
    wire [7:0] mux2;
    
    MUX4 mux_2(

    .in0(and_),
    .in1(or_),
    .in2(xor_),
    .in3(1),
    .sel(instr[11:10]),
    .out0(mux2)

    );
    
    wire [7:0] spec = (data0[7] == data1[7] && data0[0] == data1[0] && data0[7] == data1[0] && data0[0] == data1[7]) ? 1 : 0;
    
    wire [7:0] mux3;
    
    MUX4 mux_3(

    .in0(mux1),
    .in1(mux2),
    .in2(0),
    .in3(spec),
    .sel(instr[13:12]),
    .out0(mux3)

    );
    
    
    DEMUX dmux(

    .in0(mux3),
    .sel(instr[15:14]),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3)

    );
    
    assign ZF = (mux3 == 0) ? 1:0;
    assign OF = add[8];
    
endmodule
