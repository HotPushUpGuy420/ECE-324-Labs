//////////////////////////////////////////////////////////////////////////////////
// Company: WSU Vancouver
// Engineer: Pritchard
// 
// Create Date:    13:11:14 01/18/2012 
// Design Name: 
// Module Name:  FourToSixteenDecoder
// Project Name:
//
// Revision: Gus Crowley and Bryson Forte
// Revision 0.01 - File Created
// Additional Comments: lab completed
//
//////////////////////////////////////////////////////////////////////////////////
module FourToSixteenDecoder(
    input logic [3:0] w,
    input logic En,
    output logic [0:15] y
);

// Declarations
//does this need to be made into a wire? 
logic [0:3] EnTwoToFourDecoder;

//prime decoder
TwoToFourDecoder TTFDPrime (.w(w[3:2]), .En(En), .y(EnTwoToFourDecoder[0:3]));		

// Design Logic
TwoToFourDecoder TTFD0 (.w(w[1:0]), .En(EnTwoToFourDecoder[0]), .y(y[0:3]));

//added more decoders
TwoToFourDecoder TTFD1 (.w(w[1:0]), .En(EnTwoToFourDecoder[1]), .y(y[4:7]));
TwoToFourDecoder TTFD2 (.w(w[1:0]), .En(EnTwoToFourDecoder[2]), .y(y[8:11]));
TwoToFourDecoder TTFD3 (.w(w[1:0]), .En(EnTwoToFourDecoder[3]), .y(y[12:15]));
endmodule
