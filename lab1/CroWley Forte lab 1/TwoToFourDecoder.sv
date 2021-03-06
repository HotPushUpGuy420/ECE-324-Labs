/************************************************
* ECE 324 Lab 1: TwoToFourDecoder
* Gus Crowley and Bryson Forte, Jan-16-2020
* 2:4 decoder model
************************************************/ 
`timescale 1 ns/10 ps
module TwoToFourDecoder(
	input logic [1:0] w,  // code input
	input logic En,       // enable input
	output logic [0:3] y  // decoded outputs
);
	
// wire declarations
wire [1:0] nw;
	
// logic
assign nw[1] = ~w[1];
assign nw[0] = ~w[0];
assign y[0] = nw[1] & nw[0] & En;
//added connections to complete the outputs 1 - 3
assign y[1] = nw[1] & w[0] & En;
assign y[2] = nw[0] & w[1] & En;
assign y[3] = w[0] & w[1] & En;

endmodule