`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : SERIAL IN PARALLEL OUT[SIPO] SHIFT REGISTE
//Module       : TESTBENCH FOR SIPO REGISTER
//Module  Name : TB_SIPO
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module TB_SIPO();
reg clk,reset,d;
wire [3:0]q;
sipo register(reset,clk,d, q);
initial begin
    $monitor("reset=%b,d=%b,q=%b",reset,d,q);
    clk=1'b0;
    forever #5 clk=~clk;
end
initial begin
	reset = 1'b1;
    #15 reset = 1'b0 ;d=1;
    #10 d=0;
    #10 d=1;
    #10 d=1;
    #10 $finish;
end 
endmodule
