`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 11:50:24 AM
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

    input clock,
    input [1:0] addr_r_a,
    input [1:0] addr_r_b,
    input [1:0] addr_w,
    input write_en_n_data,
    input [3:0] data_w,
    input reset,
    input write_en_n_instr,
    input sel_mux,
    output [2:0] cnt,
    output [3:0] out_alu

    );
    
    wire [3:0] mux;
    
    assign mux = (sel_mux == 0) ? out_alu : data_w;
    
    wire [3:0] out_a, out_b; 
    
    Data_RAM RAM_data(

    .clock(clock),
    .addr_r_a(addr_r_a),
    .addr_r_b(addr_r_b),
    .addr_w(addr_w),
    .write_en_n(write_en_n_data),
    .data_w(mux),
    .a(out_a),
    .b(out_b)

    );
    
    wire [1:0] instr;
    
    wire [31:0] cnt_o;
    
    Counter_32b counter(

    .clock(clock),
    .rst_n(reset),
    .val(cnt_o)

    );
    
    Instr_RAM RAM_instr(

    .clock(clock),
    .addr(cnt_o[2:0]),
    .data_w(data_w),
    .write_en_n(write_en_n_instr),
    .data_r(instr)

    );
    
    
    ALU alu(

    .in0(out_a),
    .in1(out_b),
    .instr(instr),
    .result(out_alu)

    );
    
    assign cnt = cnt_o[2:0];
    
    
    
endmodule
