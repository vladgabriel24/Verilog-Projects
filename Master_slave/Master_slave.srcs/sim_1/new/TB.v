`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 11:47:22 PM
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
    
    reg clock, data_in;
    wire data_out;
    
    initial
    begin
        clock = 1;
        forever #5 clock = ~clock;
    end
    
    initial
    begin
        data_in = 1;
         #20 data_in = 0;
         #5 data_in = 1;
         #5 data_in = 0;
         #10 data_in = 1;
         #5 data_in = 0;
    end
    
    D_flip_flop DUT(

    .data_in(data_in),
    .clock(clock),
    .data_out(data_out)

    );
    
    initial #65 $stop();
    
endmodule
