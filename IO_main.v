module circuit(reset,clk,select,EN, q_out,clk_s);

output [7:0] q_out;
output clk_s;
input reset;
input clk;
input [1:0]select;
input EN;
wire reset_w;
wire clk_w;
wire [1:0]select_w;
wire EN_w;
wire [7:0] q_out_w;
wire clk_s_w;

chip_SP circuit_new (. q_out( q_out_w), .clk_s(clk_s_w), .reset(reset_w), .clk(clk_w), .select(select_w), .EN(EN_w));

//Entradas (C):
PDDW0204SCDG IN0 (1'b0,1'b0,1'b1,reset,reset_w,1'b0,1'b1);
PDDW0204SCDG IN1 (1'b0,1'b0,1'b1,clk,clk_w,1'b0,1'b1);
PDDW0204SCDG IN2 (1'b0,1'b0,1'b1,EN,EN_w,1'b0,1'b1);
PDDW0204SCDG IN3 (1'b0,1'b0,1'b1,select[0],select_w[0],1'b0,1'b1);
PDDW0204SCDG IN4 (1'b0,1'b0,1'b1,select[1],select_w[1],1'b0,1'b1);
//Salidas (I):
PDDW0204SCDG OUT0 (clk_s_w,1'b0,1'b0,clk_s,1'bx,1'b0,1'b0);
PDDW0204SCDG OUT1 ( q_out_w[0],1'b0,1'b0, q_out[0],1'bx,1'b0,1'b0);
PDDW0204SCDG OUT2 ( q_out_w[1],1'b0,1'b0, q_out[1],1'bx,1'b0,1'b0);
PDDW0204SCDG OUT3 ( q_out_w[2],1'b0,1'b0, q_out[2],1'bx,1'b0,1'b0);
PDDW0204SCDG OUT4 ( q_out_w[3],1'b0,1'b0, q_out[3],1'bx,1'b0,1'b0);
PDDW0204SCDG OUT5 ( q_out_w[4],1'b0,1'b0, q_out[4],1'bx,1'b0,1'b0);
PDDW0204SCDG OUT6 ( q_out_w[5],1'b0,1'b0, q_out[5],1'bx,1'b0,1'b0);
PDDW0204SCDG OUT7 ( q_out_w[6],1'b0,1'b0, q_out[6],1'bx,1'b0,1'b0);
PDDW0204SCDG OUT8 ( q_out_w[7],1'b0,1'b0, q_out[7],1'bx,1'b0,1'b0);
//Pines de VDD y VSS
PVDD1CDG PVDD();
PVSS1CDG PVSS();
endmodule
