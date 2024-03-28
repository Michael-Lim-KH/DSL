`timescale 1ns / 1ps


module top_module(
        input sysclk,
        input btn,
        output pio1,
        input pio2,
        input pio3,
        input pio4,
        input pio5,
        output pio6,
        output led
);

wire rstn;
assign rstn = ~btn;
reg [15:0]Ccounter;
reg Cclk;
reg pezio;
reg bone;
reg ledd;
assign pio6 = pezio;
assign pio1 = bone;
assign led= ledd;

always@(posedge sysclk, negedge rstn) begin
    if(!rstn) begin
        Ccounter<=15'h0000;
        Cclk <= 1'b0;
        bone<=0;
    end
    else begin
        bone<=1;
        if(Ccounter == 15'd22934-1'b1) begin
            Cclk <= ~ Cclk;
            Ccounter <= 15'h0000;
        end
        else Ccounter <= Ccounter + 1'b1;
    end
end

always @(posedge Cclk)begin
if (pio2) begin
    pezio<=~pezio;
    ledd<=1;
    end
else if(pio3)begin
    pezio<=~pezio;
    ledd<=1;
    end
else if(pio4)begin
    pezio<=~pezio;
    ledd<=1;
    end
else if(pio5)begin
    pezio<=~pezio;
    ledd<=1;
    end
else begin
    pezio<=0;
    ledd<=0;
    end
end

endmodule