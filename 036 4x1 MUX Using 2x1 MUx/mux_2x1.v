`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author : Venu Pabbuleti 
// ID     : N180116
//Branch  : ECE
//Project : RTL design using Verilog
//Design  : 4x1 MUX Using 2x1 MUX
//Module  : mux_2x1
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module mux_2x1(x1,x2,s,f);
input x1,x2,s;
output f;
assign f = s?(x2):(x1);
endmodule
