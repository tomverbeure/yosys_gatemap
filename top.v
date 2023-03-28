
module top(
    input wire          clk,
    input wire [7:0]   a,
    input wire [7:0]   b,
    input wire          ena,
    output wire [7:0]  sum
    );

    reg [7:0] a_r;
    reg [7:0] b_r;

    always @(posedge clk) begin
        if (ena) begin
            sum <= a_r + b_r;
        end

        a_r <= a;
        b_r <= b;
    end

endmodule
