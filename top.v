module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);

    dff part1(
    .D(sw[0]),
    .Clock(btnC),
    .Q(led[0]),
    .NotQ(led[1])
    );
    
    jkff part2(
    .J(sw[1]),
    .K(sw[2]),
    .Clock(btnC),
    .Q(led[2]),
    .NotQ(led[3])
    );
    
    tff part3(
    .T(sw[3]),
    .Clock(btnC),
    .Q(led[4]),
    .NotQ(led[5])
    );

endmodule