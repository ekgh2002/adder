`timescale 1ns / 1ps

module Full_adder_sub_fourbit(
    input [3:0] i_a, i_b,
    input i_mode,
    output [3:0] o_sum,
    output o_carry
    );

    wire [3:0] w_b;
    assign w_b = {4{i_mode}} ^ i_b;

    Full_Adder_fourbit addsub(
        .i_a(i_a),
        .i_b(w_b),
        .i_cin(i_mode),
        .o_sum(o_sum),
        .o_carry(o_carry)
    );

endmodule
