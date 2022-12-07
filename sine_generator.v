module sine_generator(
    input clk,
    output reg[23:0] dds_sin
    );
reg[15:0] sine_mem[1023:0];
integer i = 0;
initial begin
    $readmemh("sinelut.mem", sine_mem);
end
always @(posedge clk) begin
    dds_sin = sine_mem[i];
end
endmodule
