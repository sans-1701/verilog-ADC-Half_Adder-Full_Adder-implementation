`timescale 1ns/1ns
module FB_AddSub_tb();

reg [3:0] A;
reg [3:0] B ;
reg Sub1;
wire [3:0] S;
wire Cout ;
FB_AddSub UUT(A,B,Sub1,S,Cout);

initial begin
    $dumpfile("FB_AddSub.vcd");
    $dumpvars(0 ,FB_AddSub_tb);

    A = 4'b0011;
    B = 4'b0100;
    Sub1 = 0;
    #4;
    A = 4'b0011;
    B = 4'b0100;
    Sub1 = 1;
    #4;
    A = 4'b1110;
    B = 4'b0100;
    Sub1 = 1;
    #4;
    A = 4'b1110;
    B = 4'b1100;
    Sub1 = 1;
    #4;
    $display("end of test");
end
endmodule



