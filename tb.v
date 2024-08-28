`timescale 1ns/1ps
`define PERIOD 10
module tb;
    reg clk, reset, start;
    reg [7:0] fdata_in;
    wire done;
    wire [15:0] fdata_out;

    factorial dut (
		.clk(clk),
		.reset(reset),
		.start(start),
		.fdata_in(fdata_in),
		.done(done),
		.fdata_out(fdata_out)
    );

    task waitforclk (input integer n);
    begin
        repeat (n)
         @ (posedge clk);
    end
    endtask

    initial
    begin
        clk = 0;
        forever begin
            #(`PERIOD/2) clk = ~clk;
        end
    end

    initial
    begin
        $dumpfile("tb.vcd");
        $dumpvars(0,dut);
    end

    task fact (input [7:0] data);
        begin
        fdata_in = data;
        start = 1;
        waitforclk(1);
        start = 0;
        while (!done)
            waitforclk(1);
        waitforclk(1);
        end
    endtask

    initial begin
        start = 0;
        reset = 1;
        waitforclk(3);
        reset = 0;
        waitforclk(2);
        fact(5);
        fact(10);
        waitforclk(2);
        $finish();
    end
endmodule
