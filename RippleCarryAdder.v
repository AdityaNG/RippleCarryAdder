`include "BasicModules/half_adder.v"
`include "BasicModules/full_adder.v"

// RippleCarryAdder
module RippleCarryAdder(
input [7:0] a,
input [7:0] b,
output wire [7:0] sum,
output wire c_out
);
    wire [6:0] c;
    half_adder rca0(a[0], b[0], sum[0], c[0]);
    full_adder rca1(a[1], b[1], c[0], sum[1], c[1]);
    full_adder rca2(a[2], b[2], c[1], sum[2], c[2]);
    full_adder rca3(a[3], b[3], c[2], sum[3], c[3]);
    full_adder rca4(a[4], b[4], c[3], sum[4], c[4]);
    full_adder rca5(a[5], b[5], c[4], sum[5], c[5]);
    full_adder rca6(a[6], b[6], c[5], sum[6], c[6]);
    full_adder rca7(a[7], b[7], c[6], sum[7], c_out);
endmodule

