`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2022 12:14:36 PM
// Design Name: 
// Module Name: structural
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


module structural(

    input [11:0] seed,
    input [11:0] prev,
    output [3:0] data_out

    );
    
    wire [11:0] out_func;
    
    funct functie(

    .in(prev),
    .out(out_func)

    );
    
    mux_4b MUX(

    .in0(prev[3:0]),
    .in1(prev[7:4]),
    .in2(prev[11:8]),
    .in3(out_func[3:0]),
    .sel(seed[1:0]),
    .out(data_out)

    );
    
    
endmodule
