`include "src/top.sv"
`default_nettype none

module top_tb;
logic [3:0] bcd;
logic [6:0] seg7;

top dut
(
    .bcd(bcd),
    .seg7(seg7)
    /** add additional signals */
);

localparam CLK_PERIOD = 2/** clk period */;


initial begin
    $dumpfile("build/top.vcd");
    $dumpvars(0, top_tb);
end

initial begin
    bcd = 0;
    repeat(16) begin
        #(CLK_PERIOD*3);
        bcd = bcd + 1;
    end
    // testbench logic goes below
    $finish;
end

endmodule
`default_nettype wire