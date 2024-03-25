//!DO NOT EDIT MODULE NAME AND PORT NAME!
module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output reg [1:0]W,
    output reg [1:0]X,
    output reg [1:0]Y,
    output reg [1:0]Z
    );

always @ (A,SEL) begin
    
    case(SEL)
        2'b00   : begin W <= A; X<=0;Y<=0;Z <= 0;end
        2'b01   : begin X <= A; W<=0;Y<=0;Z <= 0;end
        2'b10   : begin Y <= A; W<=0;X<=0;Z <= 0;end
        2'b11   : begin Z <= A; W<=0;X<=0;Y <= 0;end
        default : begin W <= 0; X<=0;Y<=0;Z <= 0;end
    endcase

end

endmodule