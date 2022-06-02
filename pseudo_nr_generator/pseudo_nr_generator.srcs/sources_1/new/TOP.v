`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2022 01:18:05 PM
// Design Name: 
// Module Name: TOP
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


module TOP(


    input clock,
    input reset,
    input start,
    input [5:0] addr_r,
    input stop,
    input [11:0] seed,
    output [11:0] data_read,
    output [11:0] data_current

    );
    
    wire [3:0] out_fsm, out_structural, out_desen;
    
    wire [11:0] out_delay;
    
    FSM fsm(

    .clock(clock),
    .reset(reset),
    .start(start),
    .stop(stop),
    .prev(out_delay),
    .seed(seed),
    .data_out(out_fsm)
    
    );
    
    structural struct(

    .seed(seed),
    .prev(out_delay),
    .data_out(out_structural)

    );
    
    desen Desen(

    .start(start),
    .stop(stop),
    .clock(clock),
    .reset(reset),
    .prev(out_delay),
    .seed(seed),
    .data_out(out_desen)
    );
    
    wire [11:0] number;
    
    assign number = {out_fsm,out_structural,out_desen};
    
    delay_reg delay_register(

    .clock(clock),
    .reset(reset),
    .data_in(number),
    .data_out(out_delay)

    );
    
    wire [5:0] w_addr_cnt;
    
    counter #(.n(6)) cnt(

    .en(stop),
    .clock(clock),
    .rst(reset),
    .data(w_addr_cnt)

    );
    
    ram RAM(

    .clock(clock),
    .r_addr(addr_r),
    .w_addr(w_addr_cnt),
    .w_en(stop),
    .w_data(number),
    .r_data(data_read)
    );
    
    assign data_current = number;
    
    
endmodule
