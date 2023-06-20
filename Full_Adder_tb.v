`timescale 1ns/1ns


module Full_Adder_tb();

reg A ,B ,Cin;
wire S , Cout;

Full_Adder UUT(A , B , Cin ,S,Cout);
//dumping
initial begin
	$dumpfile("FullAdd.vcd");
	$dumpvars(0,Full_Adder_tb);

	#5;
	A=1;
	B=1;
    Cin = 0;
	#5;
	A=1;
	B=0;
    Cin = 1;
    A = 0;
    B = 1;
    Cin = 0 ;
	#5 
    $display("End of test");
    $finish;
end

endmodule
