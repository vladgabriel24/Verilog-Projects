`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 10:44:11 PM
// Design Name: 
// Module Name: D_L_neg
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


module D_L_neg(

    input D,
    input E,
    output Q,
    output Qn

    );
    
    assign #1 Q = ~(Qn | (~D & E));
    
    assign #1 Qn = ~(Q | (D & E));
   
    
    
    
endmodule
