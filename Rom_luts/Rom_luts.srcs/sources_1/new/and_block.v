`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2022 11:02:09 PM
// Design Name: 
// Module Name: and_block
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


module and_block(

    input [1:0] data0,
    input [1:0] data1,
    input sel,
    output ok,
    output [1:0] mux

    );
    
    wire [1:0] and_ = data0 & data1;
    
    wire [1:0] data;
    
    rom_and Rom(

    .addr({data0,data1}),
    .data(data)

    );
    
    assign ok = (data == and_) ? 1 : 0;
    
    assign mux = (sel == 0) ? and_ : data;
    
endmodule
