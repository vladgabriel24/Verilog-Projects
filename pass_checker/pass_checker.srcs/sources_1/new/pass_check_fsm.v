`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 11:13:56 AM
// Design Name: 
// Module Name: pass_check_fsm
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


module pass_check_fsm(

    input rst,
    input clk,
    input en,
    input [7:0] data_in,
    output reg pass_ok

    );
    
    reg [2:0] state;
    
    localparam q0 = 3'b000;
    localparam q1 = 3'b001;
    localparam q2 = 3'b010;
    localparam q3 = 3'b011;
    localparam q4 = 3'b100;
    localparam q5 = 3'b101;
    
    // f de tranzitie a starilor
    always @(posedge clk)
    begin
        
        if(rst) state <= q0;
        else if(en)
        begin
            case(state)
                q0: if(data_in == "v") state <= q1;
                    else state <= q0;
                
                q1: if(data_in == "l") state <= q2;
                    else state <= q0;
                
                q2: if(data_in == "a") state <= q3;
                    else state <= q0;
            
                q3: if(data_in == "d") state <= q4;
                    else state <= q0;
                    
                q4: if(data_in == "d") state <= q5;
                    else state <= q0;
            
                default: state <= state;
            
            endcase
        end
    end
    
    // f de output
    always @(posedge clk)
    begin
            
        if(rst) state <= q0;
        else if(en)
        begin
            case(state)
                q0: if(data_in == "v") pass_ok <= 0;
                    else pass_ok <= 0;
                
                q1: if(data_in == "l") pass_ok <= 0;
                    else pass_ok <= 0;
                
                q2: if(data_in == "a") pass_ok <= 0;
                    else pass_ok <= 0;
            
                q3: if(data_in == "d") pass_ok <= 0;
                    else pass_ok <= 0;
                    
                q4: if(data_in == "d") pass_ok <= 1;
                    else pass_ok <= 0;
            
                default: pass_ok <= pass_ok;
            
            endcase
        end
    end
endmodule
