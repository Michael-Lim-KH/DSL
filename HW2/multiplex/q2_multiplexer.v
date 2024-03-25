//!DO NOT EDIT MODULE NAME AND PORT NAME!
module multiplexer(
    input [1:0]A,
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output reg [1:0]X
);

always @ (A,B,C,D,SEL) begin
    case(SEL)
        2'b00   : X <= A;
        2'b01   : X <= B;
        2'b10   : X <= C;
        2'b11   : X <= D;
        default : X <= 0;
    endcase
end

endmodule