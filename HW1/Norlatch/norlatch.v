//nor latch
module nor_rs(q,qb,r,s);
    //port declaration
    output q,qb;
    input r,s;

    //logic
    nor #1 nr1(q,r,qb);
    nor #1 nr2(qb,q,s);
endmodule