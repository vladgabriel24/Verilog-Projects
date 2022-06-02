`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 11:49:02 AM
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

    input clk,
    input rst,
    input en,
    input [7:0] data_in,
    output [7:0] data_read,
    output wire [7:0] consonants,
    output wire [7:0] vowels,
    output check

    );
    
    wire [5:0] cnt;
    
    counter_6b counter(

    .clk(clk),
    .reset(rst),
    .en(en),
    .out(cnt)

    );
    
    wire [5:0] reg_6b;
    
    reg_6b register(

    .in(data_in),
    .clk(clk),
    .rst(rst),
    .out(reg_6b)

    );
    
    wire is_vowel;
    
    vowel_checker v_check(

    .data_in(data_in),
    .is_vowel(is_vowel)
    
    );
    
    
    ram_64x8b ram_consonants(

    .addr(reg_6b),
    .w_en(en & ~is_vowel),
    .w_data(data_in), // data ce urmeaza a fi scrisa
    .clk(clk),
    .out(data_read)
    
    );
    
    ram_64x8b ram_vowels(

    .addr(reg_6b),
    .w_en(en & is_vowel),
    .w_data(data_in), // data ce urmeaza a fi scrisa
    .clk(clk),
    .out()
    
    );
    
    assign consonants = (is_vowel == 0) ? data_in : 0;
    assign vowels = (is_vowel == 1) ? data_in : 0;
    
    
    pass_check_fsm automat(

    .rst(rst),
    .clk(clk),
    .en(en),
    .data_in(data_in),
    .pass_ok(check)

    );
    
endmodule
