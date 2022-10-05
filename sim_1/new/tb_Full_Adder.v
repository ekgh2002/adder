`timescale 1ns / 1ps

module tb_Full_Adder();
    reg i_a, i_b, i_c;
    wire o_sum, o_carry;

    Full_Adder dut(
    .i_a(i_a),
    .i_b(i_b),
    .i_c(i_c),

    .o_sum(o_sum),
    .o_carry(o_carry)    
    );

    initial begin 
    #00 i_a = 0; i_b = 0; i_c = 0;
    #10 i_a = 0; i_b = 0; i_c = 1;
    #10 i_a = 0; i_b = 1; i_c = 0;
    #10 i_a = 0; i_b = 1; i_c = 1;
    #10 i_a = 1; i_b = 0; i_c = 0;
    #10 i_a = 1; i_b = 0; i_c = 1;
    #10 i_a = 1; i_b = 1; i_c = 0;
    #10 i_a = 1; i_b = 1; i_c = 1;
    #10 $finish;
end 

endmodule
