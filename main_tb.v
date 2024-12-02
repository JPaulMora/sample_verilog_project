//Test_Bench 

module nanochip_tb; 
reg clk;
reg reset;
reg EN;
reg [1:0] select;
wire [7:0] q_out;
wire clk_s;

chip_SP chipl(q_out, reset, clk, EN, clk_s,select);
initial
clk = 1'b0;
always
#1 clk=~clk;
initial begin
//$fsdbDumpfile("nanochip.fsdb"); 
//$fsdbDumpvars(0, nanochip_tb);
$dumpfile("nanochip.vcd");
$dumpvars(0, nanochip_tb);
EN = 1'b0;
reset = 1'b1;
select = 2'b10;
#15 reset =1'b0;
#15 reset =1'b1; 
#15 reset =1'b0;
#8000 $finish;
end
endmodule
