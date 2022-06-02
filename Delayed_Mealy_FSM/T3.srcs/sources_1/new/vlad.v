`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2022 07:24:50 PM
// Design Name: 
// Module Name: vlad
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


module vlad(

    input x1,
    input x0,
    input clock,
    input reset,
    output reg [2:0] out
   
    );
    
    reg [1:0] state;
    
    // codificarea starilor
    parameter q0=2'b00;
    parameter q1=2'b10;
    parameter q2=2'b11; 

    // functia de tranzitie intre stari
    always @(posedge clock)
    begin
        if(reset) state <= q0;
        else 
        case(state)
                q0: if(x1) state <= q2;
                    else state <= q1;
                    
                q1: if(x0) state <= q0;
                    else state <= q1;
            
                q2: state <= q0;
        endcase
    end 
    
    // functia de tranzitie la output (Mealy cu intarziere)
    always @(posedge clock)
    case(state)
        q0: if(x1) out=3'b010;
            else out=3'b101;
        q1: if(x0) out=3'b111;
            else out=3'b110;
        q2: out=3'b001;
     endcase
     
endmodule
