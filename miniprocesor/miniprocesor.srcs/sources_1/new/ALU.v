`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2022 11:14:00 AM
// Design Name: 
// Module Name: ALU
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


module ALU(

    input [3:0] in0,
    input [3:0] in1,
    input [1:0] instr,
    output reg [3:0] result

    );
    
    always @(*)
    begin
        case(instr)
        
            2'b00: result = in0 + in1;
            2'b01: result = in0 - in1;
            2'b10: result = in0 & in1;
            2'b11: result = 0;
        endcase
    end
endmodule
