module multiplexer_tb();

reg [1:0]A;
reg [1:0]B;
reg [1:0]C;
reg [1:0]D;
reg [1:0]SEL;
wire [1:0]X;

multiplexer multiplexer_t0(
    A,B,C,D,SEL,X
);

initial 
begin

    $dumpfile("multiplexer.vcd");
    $dumpvars(0, multiplexer_tb);

    A=0;B=1;C=1;D=3;SEL=0;
    #10 SEL=1;
    #10 SEL=2;
    #10 SEL=3;
    #10 $finish;

end

endmodule