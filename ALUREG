module alureg(input wire clk, reset, wr, opmux2, cin, input wire[3:0]op, input wire[2:0] rd_addr_a, rd_addr_b, wr_addr,op1, input wire[1:0]op2,  input wire[15:0] d, output wire[15:0] o, ouput wire coutf);

wire[15:0] d_out_a;
wire[15:0] d_out_b;

reg_file f1(clk, reset, wr, opmux2, rd_addr_a, rd_addr_b, wr_addr, d, d_out_a, d_out_b);

alu_16 f2(op,op1, op, d_out_a, d_out_b, cin, opmux2, o, coutf);


endmodule
