module Not_IO(A, Y);
	input A;
	output Y;
	wire A_w, Y_w;

	Not Compuerta(A_w,Y_w);

	//Entradas: 
	PDDW0204SCDG U10(.I(1'b0), .DS(1'b0), .OEN(1'b1), .PAD(A), .C(A_w), .PE(1'b0), .IE(1'b1));

	//Salidas:
	PDDW0204SCDG U11(.I(Y_w), .DS(1'b0), .OEN(1'b0), .PAD(Y), .C(1'bx), .PE(1'b0), .IE(1'b0));

	//Pines de VDD y VSS
	PVDD1CDG PVDD();
	PVSS1CDG PVSS();

endmodule





