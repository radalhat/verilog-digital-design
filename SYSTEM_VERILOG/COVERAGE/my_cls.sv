class my_cls;
    rand bit [7:0] a;
    rand bit [2:0] b;
endclass

module top;
    my_cls cls = new();

    covergroup cg;
        cp1: coverpoint cls.a {option.auto_bin_max = 256;}
        cp2: coverpoint cls.b {option.at_least = 2;}
        cp1xcp2: cross cp1, cp2;
    endgroup

    initial begin
        cg c = new();
        repeat(100) begin
            cls.randomize();
            c.sample();
            #1;
        end
    end

endmodule
