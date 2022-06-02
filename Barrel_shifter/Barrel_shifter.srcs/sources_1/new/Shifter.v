`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 09:27:28 AM
// Design Name: 
// Module Name: Shifter
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


module Shifter(

    input [7:0] in,
    input [2:0] val,
    output reg [7:0] out

    );
    
    integer i;
    
    
    
    always @(*)
    begin
        
        
        out = (in >> val) | (in << 8 - val);
        
        /*
            Dpdv logic, aceasta operatie reprezinta ROL.
            
            Practic, eu iau input ul meu, il shiftez in 
            directia pe care vreau sa rotesc input ul si 
            fac SAU cu input ul meu shiftat invers
            de nr.biti-val ori.
            
            In felul acesta eu mut in directia in care vreau
            sa rotesc , bitii si cei care au "disparut"
            sunt adusi de catre operatia de SAU pe care o fac
            cu input ul meu shiftat in mod COMPLEMENTAR in directia
            opusa.
            
            Asa , eu prin shiftarea in mod complementar si prin SAU
            aduc la inceput bitii pe care ii pierd prin shiftare normala
            si restul de biti sunt copiati tot prin SAU.
        */
    
    
    end
    
    
endmodule
