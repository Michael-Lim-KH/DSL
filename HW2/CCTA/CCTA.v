//!DO NOT EDIT MODULE NAME AND PORT NAME!
module CCTA(
        input [3:0]A,
        input [3:0]B,
        input [3:0]C,
        input rst,
        input ctrl,
        output reg [4:0]q
);

always @ (A,B,C,rst,ctrl) begin
    if(rst==1) q<=5'h0;
    else
        begin
            if(ctrl==0) q<=A+B;
            else q<=A-C;
        end

end

endmodule