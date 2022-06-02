`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 10:58:28 PM
// Design Name: 
// Module Name: D_FF_neg
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


module D_FF_neg(

    input D,
    input clock,
    output Q

    );
    
    wire Q_m;
    
    D_L_neg M(

    .D(D),
    .E(clock),
    .Q(Q_m),
    .Qn()

    );
    
    D_L_neg S(

    .D(Q_m),
    .E(~clock),
    .Q(Q),
    .Qn()

    );
    
    
endmodule
