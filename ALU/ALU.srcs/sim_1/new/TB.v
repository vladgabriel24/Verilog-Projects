`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 12:27:15 PM
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
    
    
    reg [15:0] instr;
    reg [7:0] data0, data1;
    
    wire OF, ZF;
    wire [7:0] out0, out1, out2, out3;
    
    initial
    begin
    
        instr = 0;
     #2 instr = 16'hffff;
     #4 instr = 16'b00001000000000;
     #5 instr = 0;
    
    end
    
    initial
    begin
        data0 = 0;
        
        #4 data0 = 255;
        #2 data0 = 1;
        #1 data0 = 2;
        #2 data0 = 0;
    end
    
    initial
    begin
        data1 = 0;
        
        #4 data1 = 255;
        #2 data1 = 1;
        #2 data1 = 3;
        #2 data1 = 0;
    end
    
    ALU alu(
    
    .instr(instr),
    .data0(data0),
    .data1(data1),
    .OF(OF),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3),
    .ZF(ZF)
    
    );
    
    
endmodule
