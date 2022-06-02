`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2022 10:46:14 PM
// Design Name: 
// Module Name: add_block
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


module add_block(

    input [1:0] data0,
    input [1:0] data1,
    input sel,
    output ok,
    output [1:0] mux,
    output OF

    );
    
    wire add;
    
    assign add = data0 + data1;
    
    wire [1:0] rom;
    
    rom_add Rom_add(
    
    .addr({data0,data1}),
    .data(rom)
    
    );
    
    assign ok = (add == rom) ? 1 : 0;
    
    assign mux = (sel == 0) ? add : rom;
    
    of_compute Overflow(
    
    .in0(data0),
    .in1(data1),
    .out(OF)
    
    );
    
endmodule
