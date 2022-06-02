`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 08:19:44 PM
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
    
    reg R, S;
    wire Q, Qn;
    
    initial
    begin
        R = 1;
        
        #5 R = 0;
        #10 R = 1;
        #5 R = 0;
    end
    
    initial
    begin
        S = 0;
        
        #5 S = 1;
        #5 S = 0;
        #5 S = 1;
        #5 S = 1;
    end
    
    SR_LATCH DUT(

    .set(S),
    .reset(R),
    .q(Q),
    .qn(Qn)

    );
    
    initial #25 $stop();
    
endmodule
