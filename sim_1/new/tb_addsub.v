`timescale 1ns / 1ps

module tb_addsub();
    reg [3:0] i_a, i_b;
    reg i_mode;
    wire [3:0] o_sum;
    wire o_carry;


    Full_adder_sub_fourbit dut(
        .i_a(i_a),
        .i_b(i_b), //[3:0] 상위비트가 왼쪽, i_a[3], i_a[2], i_a[1], i_a[0]
        .i_mode(i_mode),
        .o_sum(o_sum),
        .o_carry(o_carry)
    );

    initial begin 
    #00 i_a = 4'd3; i_b = 4'd2; i_mode = 1'b0;
    #10 i_a = 4'd7; i_b = 4'd4; i_mode = 1'b1;
    #10 $finish;
end 

endmodule
