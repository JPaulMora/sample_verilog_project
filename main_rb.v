module Not_tb;
wire Y;
reg A;

Not compuerta(.A(A), .Y(Y));

initial 
begin
	//$fsdbDumpfile("not.fsdb"); 
	//$fsdbDumpvars(0, Not_tb);
	$dumpfile("not.vcd");
	$dumpvars(0, Not_tb);
	A = 1'b0;
	#1;
	A = 1'b1;
	#1;
	A = 1'b0;
	#1;
	A = 1'b1;

end
endmodule
