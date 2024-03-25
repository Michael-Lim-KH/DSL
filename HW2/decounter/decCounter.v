module decade_counter(
    //port declaration
    input clk,
    input rst,
    output [3:0] count,
    output ten
);
//register declaration
    reg [3:0] count;
    reg ten;

//logic
always @(posedge clk) 
begin
    if(rst == 1) 
    begin
        ten<=0;
        count<=4'b0000;
    end
    else 
    begin
        if(count <= 4'b1000)
        begin
            ten<=0;
            count<=count+4'b0001;
        end
        else
        begin
            ten<=1;
            count<=4'b0000;
        end
    end
end

endmodule