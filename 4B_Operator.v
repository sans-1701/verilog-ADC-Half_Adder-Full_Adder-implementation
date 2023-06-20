
`include "Full_Adder.v"
module FB_Operator(A , B , Cin , S , Cout);
input [3:0] A;
input [3:0] B ; 
input Cin ;
output [3:0] S;
output Cout ;
wire p1 ;
wire p2;
wire p3;

Full_Adder E1(.S(S[0]),.Cout(p1), .x(A[0]) , .y(B[0]),.Cin(Cout));
Full_Adder E2(.S(S[1]),.Cout(p2), .x(A[1]) , .y(B[1]),.Cin(p1));
Full_Adder E3(.S(S[2]),.Cout(p3), .x(A[2]) , .y(B[2]),.Cin(p2));
Full_Adder E4(.S(S[3]),.Cout(Cout), .x(A[3]) , .y(B[3]),.Cin(p3));
endmodule

