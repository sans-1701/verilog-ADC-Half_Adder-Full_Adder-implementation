module half_adder
 (
    input wire x,
    input wire y,
    output wire S,
    output wire C_out
);
and A1(S, x, y);
xor X1(C_out ,x ,y);
    
endmodule