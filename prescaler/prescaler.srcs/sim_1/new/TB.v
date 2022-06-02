`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2022 09:29:15 PM
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
    
    reg clock_s, rst_n_s, save_n_s, sel_s;
    reg [3:0] data_s, wr_addr_s;
    wire [3:0] instructions_s;
    
   TOP DUT(

    .clock(clock_s),
    .rst_n(rst_n_s),
    .save_n(save_n_s),
    .sel(sel_s),
    .data(data_s),
    .wr_addr(wr_addr_s),
    .instructions(instructions_s)

    );
    
    initial begin
        clock_s=1;
        forever #5 clock_s=~clock_s;
    end
    
    initial begin
    rst_n_s=1;
        #30 rst_n_s=0;
        #20 rst_n_s=1;
    end
    
    initial begin
    save_n_s=1;
        #70 save_n_s=0;
        #40 save_n_s=1;
        #10 save_n_s=0;
        #10 save_n_s=1;
    end
    
    initial begin
    sel_s=0;
        #70 sel_s=1;
        #40 sel_s=0;
    end
    
    initial 
    begin
    
        #70 
        data_s=1;
        wr_addr_s=0;
        #10 
        data_s=2;
        wr_addr_s=1;
        #10 
        data_s=2;
        wr_addr_s=2;
        #10
        data_s=1;
        wr_addr_s=3;
        #10
        data_s=0;
        wr_addr_s=0;
        #10
        data_s=5;
        wr_addr_s=0;
        #10
        data_s=0;
        wr_addr_s=0;
    
    # 10000 $stop;
    end 
    
    
endmodule
