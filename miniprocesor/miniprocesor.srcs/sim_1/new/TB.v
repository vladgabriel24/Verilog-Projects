`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 01:07:54 PM
// Design Name: 
// Module Name: TB
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


module TB(

    );
    
    reg clock;
    reg [1:0] addr_r_a;
    reg [1:0] addr_r_b;
    reg [1:0] addr_w;
    reg write_en_n_data;
    reg [3:0] data_w;
    reg reset;
    reg write_en_n_instr;
    reg sel_mux;
    wire [2:0] cnt;
    wire [3:0] out_alu;
    
    
    TOP DUT(

    .clock(clock),
    .addr_r_a(addr_r_a),
    .addr_r_b(addr_r_b),
    .addr_w(addr_w),
    .write_en_n_data(write_en_n_data),
    .data_w(data_w),
    .reset(reset),
    .write_en_n_instr(write_en_n_instr),
    .sel_mux(sel_mux),
    .cnt(cnt),
    .out_alu(out_alu)

    );

    initial
    begin
        clock = 0;
        forever #2 clock = ~clock;
    end
    
    initial
    begin
        reset = 1;
        write_en_n_instr = 1;
    
    
    #10
    write_en_n_data = 0;
    addr_w = 0;
    sel_mux = 1;
    data_w = 8;
    
    
    #10
    addr_w = 1;
    data_w = 7;
    
    addr_r_a = 0;
    addr_r_b = 1;
    
    #10
    write_en_n_data = 1;
    write_en_n_instr = 0;
    
    reset = 0;
    
    #10 reset = 1;
    
//    #1 reset = 1;
       data_w = 0;
    
    #4 data_w = 1;
    #4 data_w = 2;
    #4 data_w = 3;
    #4 write_en_n_instr = 1;
    
//    #2 reset = 0;
//    #1 reset = 1;
    
    #300 $stop();
    
    end
    
    
endmodule
