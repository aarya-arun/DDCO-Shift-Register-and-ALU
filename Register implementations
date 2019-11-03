module reg16(input wire clk, reset, load, input wire[15:0]d, output wire[15:0]q);

dfrl d0(clk, reset, load, d[0], q[0]);
dfrl d1(clk, reset, load, d[1], q[1]);
dfrl d2(clk, reset, load, d[2], q[2]);
dfrl d3(clk, reset, load, d[3], q[3]);
dfrl d4(clk, reset, load, d[4], q[4]);
dfrl d5(clk, reset, load, d[5], q[5]);
dfrl d6(clk, reset, load, d[6], q[6]);
dfrl d7(clk, reset, load, d[7], q[7]);
dfrl d8(clk, reset, load, d[8], q[8]);
dfrl d9(clk, reset, load, d[9], q[9]);
dfrl d10(clk, reset, load, d[10], q[10]);
dfrl d11(clk, reset, load, d[11], q[11]);
dfrl d12(clk, reset, load, d[12], q[12]);
dfrl d13(clk, reset, load, d[13], q[13]);
dfrl d14(clk, reset, load, d[14], q[14]);
dfrl d15(clk, reset, load, d[15], q[15);

endmodule


module reg8_16(input wire clk, reset, input wire[7:0]load, input wire[15:0]d, output wire[15:0]q0,q1,q2,q3,q4,q5,q6,q7);

reg16 rg0(clk, reset, load[0], d, q0);
reg16 rg1(clk, reset, load[1], d, q1);
reg16 rg2(clk, reset, load[2], d, q2);
reg16 rg3(clk, reset, load[3], d, q3);
reg16 rg4(clk, reset, load[4], d, q4);
reg16 rg5(clk, reset, load[5], d, q5);
reg16 rg6(clk, reset, load[6], d, q6);
reg16 rg7(clk, reset, load[7], d, q7);


endmodule

module reg_file(input wire clk, reset, wr, opmux2, input wire[2:0] rd_addr_a, rd_addr_b, wr_addr, input wire[15:0] d, output wire[15:0] d_out_a, d_out_b);

wire[15:0] q0;
wire[15:0] q1;
wire[15:0] q2;
wire[15:0] q3;
wire[15:0] q4;
wire[15:0] q5;
wire[15:0] q6;
wire[15:0] q7;
wire[15:0] load;


demux8 dmx(wr, wr_addr[2], wr_addr[1], wr_addr[0], load);

reg8_16 rega(clk, reset, load, d, q0,q1,q2,q3,q4,q5,q6,q7);

mux8_16 mx0(q0,q1,q2,q3,q4,q5,q6,q7, rd_addr_a, d_out_a);
mux8_16 mx1(q0,q1,q2,q3,q4,q5,q6,q7, rd_addr_b, d_out_b);
//mux2_16 mx2(d_out_a, d_out_b, opmux2, finalop);

endmodule
