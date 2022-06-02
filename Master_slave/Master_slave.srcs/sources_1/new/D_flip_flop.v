`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 11:41:26 PM
// Design Name: 
// Module Name: D_flip_flop
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


module D_flip_flop(

    input data_in,
    input clock,
    output data_out

    );
    
    wire master;
    
    D_latch M(

    .D(data_in),
    .E(~clock),
    .Q(master),
    .Qn()

    );
    
    D_latch S(

    .D(master),
    .E(clock),
    .Q(data_out),
    .Qn()

    );
    
    
endmodule
