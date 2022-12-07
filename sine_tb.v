`timescale 1ns / 1ps

module sine_tb();
reg clk = 0;
wire[23:0] sine_wave;
always #5 clk = ~clk;  //100 MHz clock signal => fsine ~ 97 kHz

sine_generator inst0(clk, sine_wave);


endmodule
