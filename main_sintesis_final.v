/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Thu Nov 14 02:43:39 2024
/////////////////////////////////////////////////////////////


module Not ( A, Y );
  input A;
  output Y;


  CKND0BWP7T U1 ( .I(A), .ZN(Y) );
endmodule


module Not_IO ( A, Y );
  input A;
  output Y;
  wire   A_w, Y_w, n1, n2;
  tri   A;
  tri   Y;

  Not Compuerta ( .A(A_w), .Y(Y_w) );
  PDDW0204SCDG U10 ( .I(n1), .OEN(n2), .IE(n2), .PAD(A), .DS(n1), .PE(n1), .C(
        A_w) );
  PDDW0204SCDG U11 ( .I(Y_w), .OEN(n1), .IE(n1), .PAD(Y), .DS(n1), .PE(n1) );
  TIELBWP7T U6 ( .ZN(n1) );
  TIEHBWP7T U7 ( .Z(n2) );
endmodule

