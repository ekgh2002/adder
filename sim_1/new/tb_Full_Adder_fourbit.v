`timescale 1ns / 1ps

module tb_Full_Adder_fourbit();
    reg [3:0] i_a, i_b;
    reg i_cin;
    wire [3:0] o_sum;
    wire o_carry;


    Full_Adder_fourbit dut(
    .i_a(i_a),
    .i_b(i_b),
    .i_cin(1'b0),
    .o_sum(o_sum),
    .o_carry(o_carry)  
    );

    initial begin 
    #00 i_a = 4'b0000; i_b = 4'b0000;
    #10 i_a = 4'd3; i_b = 4'd4;
    #10 i_a = 4'ha; i_b = 4'hb;
    #10 i_a = 4'd6; i_b = 4'd8;
    #10 i_a = 4'd2; i_b = 4'd3;
    #10 i_a = 4'd1; i_b = 4'd2;
    #10 i_a = 4'd6; i_b = 4'd3;
    #10 i_a = 4'd2; i_b = 4'd1;
    #10 $finish;
end 

endmodule
