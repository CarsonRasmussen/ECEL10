module jkff(
    input J,
    input K,
    input Clock,
    output Q, 
    output NotQ
);

wire output1;
wire output2;
wire D;

assign output1 = (J) & (NotQ);
assign output2 = (~K) & (Q);
assign D = (output1) | (output2);

    dff inst(
        .D(D),
        .Clock(Clock),
        .Q(Q),
        .NotQ(NotQ)
    );
    
endmodule