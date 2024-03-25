//!DO NOT EDIT MODULE NAME AND PORT NAME!
module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output reg [4:0]q
);

always @ (A,B,ctrl) begin
    
    if(ctrl==1)
    begin
        q <= A[7:4]+B[7:4];
    end
    else
        q <= A[3:0]+B[3:0];
end

endmodule