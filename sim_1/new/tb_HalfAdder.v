`timescale 1ns / 1ps

module tb_HalfAdder();
    reg i_switch_0, i_switch_1;
    wire o_sum, o_carry;

    HalfAdder dut(
    .i_switch_0(i_switch_0),
    .i_switch_1(i_switch_1),

    .o_sum(o_sum),
    .o_carry(o_carry)    
    
    );

initial begin  //  중괄호 같은 역할
    #00 i_switch_0 = 1'b0; i_switch_1 = 1'b0;
    #10 i_switch_0 = 1'b0; i_switch_1 = 1'b1;
    #10 i_switch_0 = 1'b1; i_switch_1 = 1'b0;
    #10 i_switch_0 = 1'b1; i_switch_1 = 1'b1;
    #10 $finish;
end
    
endmodule
