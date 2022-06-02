`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 12:13:43 PM
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
    
    reg clk;
    reg rst;
    reg en;
    reg [7:0] data_in;
    wire [7:0] data_read;
    wire [7:0] consonants;
    wire [7:0] vowels;
    wire check;
    
    TOP DUT(

    .clk(clk),
    .rst(rst),
    .en(en),
    .data_in(data_in),
    .data_read(data_read),
    .consonants(consonants),
    .vowels(vowels),
    .check(check)

    );
    
    initial
    begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial
    begin
        rst = 1;
        #5 rst = 0;
        
    end
    
    initial en = 1;
    
    initial
    begin
        data_in = 0;
        
        #10 data_in = "v";
        #2 data_in = "l";
        #2 data_in = "a";
        #2 data_in = "d";
        #2 data_in = "d";
        #2 data_in = "x";
        #2 data_in = "o";
    end
    
    initial #200 $stop();
    
endmodule
