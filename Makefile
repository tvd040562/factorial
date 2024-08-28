a.out: *.v
	iverilog -g2005-sv factorial.v tb.v

tb.vcd: a.out
	./a.out

debug: tb.vcd
	gtkwave tb.vcd

clean: a.out tb.vcd
	rm a.out tb.vcd
