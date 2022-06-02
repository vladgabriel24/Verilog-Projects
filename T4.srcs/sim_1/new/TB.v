`timescale 1ns / 1ps

module TB();
    
    reg clock;
    
    reg [31:0] dataIn;
    reg [2:0] func;
    
    reg [3:0] leftAddr, rightAddr, destAddr;
    reg writeEn;
    reg selInput;
    
    wire [31:0] out, dataO, addrO;
    wire crO;
    
    regFileWithALU DUT(
    .clock(clock),
    .writeEn(writeEn),
    .dataIn(dataIn),
    .destAddr(destAddr),  // 2^4 = 16 locatii
    .leftAddr(leftAddr),  // 2^4 = 16 locatii
    .rightAddr(rightAddr), // 2^4 = 16 locatii
    .func(func),
    .crIn(0),
    .selInput(selInput),
    .dataOut(dataO),
    .addrOut(addrO),
    .crOut(crO),
    .out(out)
    );
    
    initial
    begin
        clock = 0;
        forever #3 clock = ~clock;
    end
    
    initial
    begin
        
        #5
        dataIn = 17;
        destAddr = 4;
        selInput = 1;
        func = 7;
        writeEn = 1;
        
        #10 writeEn = 0;
        
        #5
        rightAddr=4;
        dataIn=2;
        selInput = 1;
        func = 0;
        writeEn = 1;
        destAddr = 8;
        
        #10 writeEn = 0;
        
        #5
        rightAddr = 4;
        leftAddr = 8;
        selInput = 0;
        func = 0;
        writeEn = 1;
        destAddr = 1;
        
        #10 writeEn = 0;
        
        #5
        leftAddr = 1;
        selInput = 0;
        func = 6;
        writeEn = 1;
        destAddr = 6;
        
        #10 writeEn = 0;
        
        #5
        leftAddr = 4;
        rightAddr = 4;
        func = 1;
        writeEn = 1;
        destAddr = 4;
        
        #10 writeEn = 0;
            
        #100 $stop();
    end
endmodule
