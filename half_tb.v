module half_adder_tb();
//signals
reg a, b;
wire S, C_out;
//instantiation
half_adder 	DUT(
	.x(a),
	.S(S),
	.y(b),
	.C_out(C_out)
	);
//dumping
initial 
begin
	$dumpfile("halfer.vcd");
	$dumpvars(0,half_adder_tb);
end

//stimuli
initial begin
	#5;
	a=1;
	b=1;
	#5;
	a=0;
	b=1;
	#5 $finish;
end

endmodule