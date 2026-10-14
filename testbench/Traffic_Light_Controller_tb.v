
`timescale 1ns / 1ps

module Traffic_Light_Controller_TB;

    reg clk, rst;

    wire [2:0] light_M1;
    wire [2:0] light_M2;
    wire [2:0] light_MT;
    wire [2:0] light_S;
    wire [3:0] count;
    wire [2:0] ps;

    Traffic_Light_Controller dut (
        .clk(clk),
        .rst(rst),
        .light_M1(light_M1),
        .light_M2(light_M2),
        .light_MT(light_MT),
        .light_S(light_S),
        .count(count),
        .ps(ps)
    );

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        rst = 1;
        #5;
        rst = 0;

        #200;
        $finish;
    end

    initial begin
        $monitor(
            "Time=%0t rst=%b ps=%d count=%d M1=%b M2=%b MT=%b S=%b",
            $time, rst, ps, count,
            light_M1, light_M2, light_MT, light_S
        );
    end

endmodule
