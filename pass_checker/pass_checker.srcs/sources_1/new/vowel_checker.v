`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 11:43:16 AM
// Design Name: 
// Module Name: vowel_checker
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


module vowel_checker(

    input [7:0] data_in,
    output reg is_vowel
    
    );
    
    always @(*)
    begin
        case(data_in)
            
            "a": is_vowel = 1;
            "e": is_vowel = 1;
            "i": is_vowel = 1;
            "o": is_vowel = 1;
            "u": is_vowel = 1;
        
            default: is_vowel = 0;
        endcase
    end
    
endmodule
