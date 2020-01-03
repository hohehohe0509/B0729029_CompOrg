module register
#(parameter WIDTH=8)
(
    input                clk,
    input                load,
    input  [WIDTH-1: 0]  load_data,
    output [WIDTH-1: 0]  data
);

reg [WIDTH-1: 0]  d;

always @(posedge clk) begin
        if(load == 1'b1) begin
            d <= load_data;
        end
        else begin
            d <= d;
        end
    end

assign data = d;

endmodule