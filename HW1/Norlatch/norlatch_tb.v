//nor latch testbench
module nor_rs_tb;
    wire q,qb;
    reg s,r;

    nor_rs t1(q,qb,s,r);

initial
 begin
    //waveform
    $dumpfile("norlatch.vcd");
    $dumpvars(0, nor_rs_tb);

    //monitor
    $monitor("# %d  Input: s = $b , r = %b  Output: q = %b , qb = %b", $realtime,s,r,q,qb);

    //pattern
    s=1;r=0; 
    #10 s=0;r=0; 
    #10 s=0;r=1; 
    #10 s=0;r=0;
    #10 s=1;r=1;
    #10 $finish;
 end

endmodule