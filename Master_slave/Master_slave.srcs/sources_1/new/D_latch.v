`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 11:38:17 PM
// Design Name: 
// Module Name: D_latch
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


module D_latch(

    input D,
    input E,
    output Q,
    output Qn

    );
    
    SR_Latch latch(

    .set(E & D),
    .reset(E & ~D),
    .q(Q),
    .qn(Qn)

    );
    
    
endmodule
