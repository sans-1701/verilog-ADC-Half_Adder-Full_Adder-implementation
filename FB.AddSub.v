`include "4B_Operator.v"
module FB_AddSub(A , B , Sub1 ,S,Cout);
input [3:0] A;
input [3:0] B ; 
input Sub1;
output [3:0] S;
output Cout ;
wire p[3:0];
xor X1 (p[0] , Sub1 ,A[0]);
xor X2 (p[1] , Sub1 ,A[1]);
xor X3 (p[2] , Sub1 ,A[2]);
xor X4 (p[3] , Sub1 ,A[3]);
FB_Operator FBO1(.S[3:0](S[3:0]), .Cout(Cout) , .Cin(Sub1) , .A[3:0](p[3:0] , .B[3:0](B[3:0]));
endmodule 