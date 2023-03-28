
module top(
    input wire          clk,
    input wire [15:0]   a,
    input wire [15:0]   b,
    input wire          ena,
    output wire [15:0]  sum
    );

    always @(posedge clk) begin
        if (ena) begin
            sum <= a + b;
        end
    end

endmodule
