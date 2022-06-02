`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2022 04:22:21 PM
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
    input rst_n,
    input save_n,
    input sel,
    input [3:0] data,
    input [3:0] wr_addr,
    output [3:0] instructions

    );
   
    wire out_prescale;
    wire [1:0] out_reg;
   
    prescaler prescale(

    .clock(clock),
    .reset_n(rst_n),
    .sel(out_reg),
    .out(out_prescale)

    );
    
    wire out0_demux1, out1_demux1;
    
    demux2  #(.n(1)) demux1(

    .in(~save_n),
    .sel(sel),
    .out0(out0_demux1),
    .out1(out1_demux1)
    );
    
    wire [3:0] out0_demux2, out1_demux2;
    
    demux2 #(.n(4)) demux2(

    .in(data),
    .sel(sel),
    .out0(out0_demux2),
    .out1(out1_demux2)
    );
    
    
    osccon_reg osccon(

    .data(out0_demux2),
    .reset_n(rst_n),
    .save(out0_demux1),
    .clock(clock),
    .out(out_reg)
    );
    
    wire [3:0] out_pc;
    
    program_counter PC(

    .rst_n(rst_n),
    .clock(out_prescale),
    .out(out_pc)

    );
    
    ram_instr RAM(
    
    .rd_addr(out_pc),
    .wr_data(out1_demux2),
    .wr_addr(wr_addr),
    .clock(clock),
    .save(out1_demux1),
    .rd_data(instructions)

    );
    
    
endmodule
