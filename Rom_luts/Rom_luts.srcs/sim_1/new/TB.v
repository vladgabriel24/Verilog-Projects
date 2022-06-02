`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2022 11:51:47 PM
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
    
    reg [7:0] instr_in;
    reg [1:0] data0, data1;
    
    wire ok;
    wire OF;
    
    wire [1:0] out0, out1, out2, out3;
    wire [7:0] instr_out;
    wire [1:0] and_test;
    
    initial
    begin
        instr_in = 0;
        #10 instr_in = 8'h02;
        #10 instr_in = 8'hf0;
        #10 instr_in = 0;
    end
    
    initial
    begin
        data0 = 0;
        #10 data0 = 1;
        #5 data0 = 2;
        #5 data0 = 3;
        #15 data0 = 0;
    end
    
    initial
    begin
        data1 = 0;
        #10 data1 = 1;
        #15 data1 = 0;
    end
    
   // assign add_test = data0 + data1;
   // assign and_test = data0 & data1;
    
    TOP DUT(

    .data0(data0),
    .data1(data1),
    .instr_in(instr_in),
    .ok(ok),
    .OF(OF),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3),
    .instr_out(instr_out)

    );
    
    initial #50 $stop();
    
    
    
endmodule
