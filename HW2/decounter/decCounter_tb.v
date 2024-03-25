module decade_counter_tb();

reg clk;
reg rst;
wire [3:0]count;
wire ten;

decade_counter decade_counter_u0(
    .clk(clk),
    .rst(rst),
    .count(count),
    .ten(ten)
);

always 
begin
    #10 clk=!clk;
end

initial 
begin

    $dumpfile("decCounter.vcd");
    $dumpvars(0, decade_counter_tb);

    clk=0;rst=1;
    #40 rst=0;
    #290 rst=1;
    #40 rst=0;
    #290 $finish;

    
end

endmodule