`timescale 1ns / 1ps

module FSM(

    input clock,
    input reset,
    input start,
    input stop,
    input [11:0] prev,
    input [11:0] seed,
    output reg [3:0] data_out
    );
    
    reg [3:0] state;
    
    always @(posedge clock)
    begin
        if(reset)
            begin
                state <= 0;
                data_out <= seed[3:0];
            end
        else
            begin
                case(state)
                
                    0:
                    begin
                        if(start)
                        begin
                            state <= 1;
                            data_out <= prev[3:0] + prev[3:0];
                        end
                        
                        if(stop)
                        begin
                            state <= 2;
                            data_out <= data_out;
                        end
                        
                    end
            
                    1:
                        begin
                            if(stop)
                            begin
                                state <= 2;
                                data_out <= data_out;
                            end
                            else
                            data_out <= prev[3:0] + prev[3:0];
                        end
                
                    2:
                        begin
                            if(start)
                            begin
                                state <= 1;
                                data_out <= prev[3:0] + prev[3:0];
                            end
                            else
                            data_out <= data_out;
                        end
        
                endcase
            end
    end
    
endmodule
