module and16(input wire[15:0] i1,i2,output wire[15:0]out10);

and2 a0(i1[0],i2[0],out10[0]);
and2 a1(i1[1],i2[1],out10[1]);
and2 a2(i1[2],i2[2],out10[2]);
and2 a3(i1[3],i2[3],out10[3]);
and2 a4(i1[4],i2[4],out10[4]);
and2 a5(i1[5],i2[5],out10[5]);
and2 a6(i1[6],i2[6],out10[6]);
and2 a7(i1[7],i2[7],out10[7]);
and2 a8(i1[8],i2[8],out10[8]);
and2 a9(i1[9],i2[9],out10[9]);
and2 a10(i1[10],i2[10],out10[10]);
and2 a11(i1[11],i2[11],out10[11]);
and2 a12(i1[12],i2[12],out10[12]);
and2 a13(i1[13],i2[13],out10[13]);
and2 a14(i1[14],i2[14],out10[14]);
and2 a15(i1[15],i2[15],out10[15]);

endmodule


module or16(input wire[15:0] i1,i2,output wire [15:0]out10);

or2 o0(i1[0],i2[0],out10[0]);
or2 o1(i1[1],i2[1],out10[1]);
or2 o2(i1[2],i2[2],out10[2]);
or2 o3(i1[3],i2[3],out10[3]);
or2 o4(i1[4],i2[4],out10[4]);
or2 o5(i1[5],i2[5],out10[5]);
or2 o6(i1[6],i2[6],out10[6]);
or2 o7(i1[7],i2[7],out10[7]);
or2 o8(i1[8],i2[8],out10[8]);
or2 o9(i1[9],i2[9],out10[9]);
or2 o10(i1[10],i2[10],out10[10]);
or2 o11(i1[11],i2[11],out10[11]);
or2 o12(i1[12],i2[12],out10[12]);
or2 o13(i1[13],i2[13],out10[13]);
or2 o14(i1[14],i2[14],out10[14]);
or2 o15(i1[15],i2[15],out10[15]);

endmodule


module addsub(op,i1,i2,o,cout,cin);
	input op,i1,i2,cin;
	output o,cout;
	wire xorout,sum,carry;
	xor2 out(.i0(i2), .i1(op),.o(xorout));
	fulladder add(.FAA(xorout),.FAB(i1),.Cin(cin),.FAsum(o),.FAcarry(cout));
endmodule

module addsub16(input wire op, input wire[15:0] i1,i2, output wire[15:0]out9, output wire coutf,input wire cin);

wire [15:0]cout
addsub a1(op,i1[0],i2[0],out9[0],cout[0],cin);
addsub a1(op,i1[1],i2[1],out9[1],cout[1],cout[0]);
addsub a1(op,i1[2],i2[2],out9[2],cout[2],cout[1]);
addsub a1(op,i1[3],i2[3],out9[3],cout[3],cout[2]);
addsub a1(op,i1[4],i2[4],out9[4],cout[4],cout[3]);
addsub a1(op,i1[5],i2[5],out9[5],cout[5],cout[4]);
addsub a1(op,i1[6],i2[6],out9[6],cout[6],cout[5]);
addsub a1(op,i1[7],i2[7],out9[7],cout[7],cout[6]);
addsub a1(op,i1[8],i2[8],out9[8],cout[8],cout[7]);
addsub a1(op,i1[9],i2[9],out9[9],cout[9],cout[8]);
addsub a1(op,i1[10],i2[10],out9[10],cout[10],cout[9]);
addsub a1(op,i1[11],i2[11],out9[11],cout[11],cout[10]);
addsub a1(op,i1[12],i2[12],out9[12],cout[12],cout[11]);
addsub a1(op,i1[13],i2[13],out9[13],cout[13],cout[12]);
addsub a1(op,i1[14],i2[14],out9[14],cout[14],cout[13]);
addsub a1(op,i1[15],i2[14],out9[15],cout[15],cout[14]);

assign coutf=cout[14];
endmodule



module mux16(input wire i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,j0, j1, j2, j3, output wire o);
	wire t0, t1;
	mux8proj m1(i0,i1,i2,i3,i4,i5,i6,i7,j3,j2,j1, t0);
	mux8proj m2(i8,i9,i10,i11,i12,i13,i14,i15,j3, j2, j1, t1);
	mux2 m3(t0,t1,j0,o);
endmodule



module mux8_16(input wire[0:15] r0,r1,r2,r3,r4,r5,r6,r7,input wire [2:0]rd_addr, output wire [0:15]d_out);
mux8proj m_0(r0[0],r1[0],r2[0],r3[0],r4[0],r5[0],r6[0],r7[0],rd_addr[0],rd_addr[1],rd_addr[2],d_out[0]);
mux8proj m_1(r0[1],r1[1],r2[1],r3[1],r4[1],r5[1],r6[1],r7[1],rd_addr[0],rd_addr[1],rd_addr[2],d_out[1]);
mux8proj m_2(r0[2],r1[2],r2[2],r3[2],r4[2],r5[2],r6[2],r7[2],rd_addr[0],rd_addr[1],rd_addr[2],d_out[2]);
mux8proj m_3(r0[3],r1[3],r2[3],r3[3],r4[3],r5[3],r6[3],r7[3],rd_addr[0],rd_addr[1],rd_addr[2],d_out[3]);
mux8proj m_4(r0[4],r1[4],r2[4],r3[4],r4[4],r5[4],r6[4],r7[4],rd_addr[0],rd_addr[1],rd_addr[2],d_out[4]);
mux8proj m_5(r0[5],r1[5],r2[5],r3[5],r4[5],r5[5],r6[5],r7[5],rd_addr[0],rd_addr[1],rd_addr[2],d_out[5]);
mux8proj m_6(r0[6],r1[6],r2[6],r3[6],r4[6],r5[6],r6[6],r7[6],rd_addr[0],rd_addr[1],rd_addr[2],d_out[6]);
mux8proj m_7(r0[7],r1[7],r2[7],r3[7],r4[7],r5[7],r6[7],r7[7],rd_addr[0],rd_addr[1],rd_addr[2],d_out[7]);
mux8proj m_8(r0[8],r1[8],r2[8],r3[8],r4[8],r5[8],r6[8],r7[8],rd_addr[0],rd_addr[1],rd_addr[2],d_out[8]);
mux8proj m_9(r0[9],r1[9],r2[9],r3[9],r4[9],r5[9],r6[9],r7[9],rd_addr[0],rd_addr[1],rd_addr[2],d_out[9]);
mux8proj m_10(r0[10],r1[10],r2[10],r3[10],r4[10],r5[10],r6[10],r7[10],rd_addr[0],rd_addr[1],rd_addr[2],d_out[10]);
mux8proj m_11(r0[11],r1[11],r2[11],r3[11],r4[11],r5[11],r6[11],r7[11],rd_addr[0],rd_addr[1],rd_addr[2],d_out[11]);
mux8proj m_12(r0[12],r1[12],r2[12],r3[12],r4[12],r5[12],r6[12],r7[12],rd_addr[0],rd_addr[1],rd_addr[2],d_out[12]);
mux8proj m_13(r0[13],r1[13],r2[13],r3[13],r4[13],r5[13],r6[13],r7[13],rd_addr[0],rd_addr[1],rd_addr[2],d_out[13]);
mux8proj m_14(r0[14],r1[14],r2[14],r3[14],r4[14],r5[14],r6[14],r7[14],rd_addr[0],rd_addr[1],rd_addr[2],d_out[14]);
mux8proj m_15(r0[15],r1[15],r2[15],r3[15],r4[15],r5[15],r6[15],r7[15],rd_addr[0],rd_addr[1],rd_addr[2],d_out[15]);
endmodule

module mux4_16(input wire[0:15] r0,r1,r2,r3,input wire [1:0]rd_addr,output wire [0:15]d_out);
mux4proj m_0(r0[0],r1[0],r2[0],r3[0],rd_addr[0],rd_addr[1],d_out[0]);
mux4proj m_1(r0[1],r1[1],r2[1],r3[1],rd_addr[0],rd_addr[1],d_out[1]);
mux4proj m_2(r0[2],r1[2],r2[2],r3[2],rd_addr[0],rd_addr[1],d_out[2]);
mux4proj m_3(r0[3],r1[3],r2[3],r3[3],rd_addr[0],rd_addr[1],d_out[3]);
mux4proj m_4(r0[4],r1[4],r2[4],r3[4],rd_addr[0],rd_addr[1],d_out[4]);
mux4proj m_5(r0[5],r1[5],r2[5],r3[5],rd_addr[0],rd_addr[1],d_out[5]);
mux4proj m_6(r0[6],r1[6],r2[6],r3[6],rd_addr[0],rd_addr[1],d_out[6]);
mux4proj m_7(r0[7],r1[7],r2[7],r3[7],rd_addr[0],rd_addr[1],d_out[7]);
mux4proj m_8(r0[8],r1[8],r2[8],r3[8],rd_addr[0],rd_addr[1],d_out[8]);
mux4proj m_9(r0[9],r1[9],r2[9],r3[9],rd_addr[0],rd_addr[1],d_out[9]);
mux4proj m_10(r0[10],r1[10],r2[10],r3[10],rd_addr[0],rd_addr[1],d_out[10]);
mux4proj m_11(r0[11],r1[11],r2[11],r3[11],rd_addr[0],rd_addr[1],d_out[11]);
mux4proj m_12(r0[12],r1[12],r2[12],r3[12],rd_addr[0],rd_addr[1],d_out[12]);
mux4proj m_13(r0[13],r1[13],r2[13],r3[13],rd_addr[0],rd_addr[1],d_out[13]);
mux4proj m_14(r0[14],r1[14],r2[14],r3[14],rd_addr[0],rd_addr[1],d_out[14]);
mux4proj m_15(r0[15],r1[15],r2[15],r3[15],rd_addr[0],rd_addr[1],rd_out[15]);

endmodule

module mux2_16(input wire[0:15] r0,r1,input wire op, output wire [0:15]d_out);
mux2 m_0(r0[0],r1[0],op,d_out[0]);
mux2 m_1(r0[1],r1[1],op,d_out[1]);
mux2 m_2(r0[2],r1[2],op,d_out[2]);
mux2 m_3(r0[3],r1[3],op,d_out[3]);
mux2 m_4(r0[4],r1[4],op,d_out[4]);
mux2 m_5(r0[5],r1[5],op,d_out[5]);
mux2 m_6(r0[6],r1[6],op,d_out[6]);
mux2 m_7(r0[7],r1[7],op,d_out[7]);
mux2 m_8(r0[8],r1[8],op,d_out[8]);
mux2 m_9(r0[9],r1[9],op,d_out[9]);
mux2 m_10(r0[10],r1[10],op,d_out[10]);
mux2 m_11(r0[11],r1[11],op,d_out[11]);
mux2 m_12(r0[12],r1[12],op,d_out[12]);
mux2 m_13(r0[13],r1[13],op,d_out[13]);
mux2 m_14(r0[14],r1[14],op,d_out[14]);
mux2 m_15(r0[15],r1[15],op,d_out[15]);

endmodule


module logical_leftshift(input wire [15:0]i,j0,j1, j2,j3, output wire [15:0]o);


supply0 gnd;

mux16 m15(i[15],i[14],i[13],i[12],i[11],i[10],i[9],i[8],i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0],j0, j1, j2, j3,o[15]);
mux16 m14(i[14],i[13],i[12],i[11],i[10],i[9],i[8],i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0],gnd,j0, j1, j2, j3,o[14]);
mux16 m13(i[13],i[12],i[11],i[10],i[9],i[8],i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0],gnd,gnd,j0, j1, j2, j3,o[13]);
mux16 m12(i[12],i[11],i[10],i[9],i[8],i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0],gnd,gnd,gnd,j0, j1, j2, j3,o[12]);
mux16 m11(i[11],i[10],i[9],i[8],i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0],gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[11]);
mux16 m10(i[10],i[9],i[8],i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0],gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[10]);
mux16 m9(i[9],i[8],i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0],gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[9]);
mux16 m8(i[8],i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[8]);
mux16 m7(i[7],i[6],i[5],i[4],i[3],i[2],i[1],i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[7]);
mux16 m6(i[6],i[5],i[4],i[3],i[2],i[1],i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[6]);
mux16 m5(i[5],i[4],i[3],i[2],i[1],i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[5]);
mux16 m4(i[4],i[3],i[2],i[1],i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[4]);
mux16 m3(i[3],i[2],i[1],i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[3]);
mux16 m2(i[2],i[1],i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[2]);
mux16 m1(i[1],i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[1]);
mux16 m0(i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[0]);



endmodule







module logical_rightshift(input wire [15:0]i,j0,j1, j2,j3, output wire [15:0]o);



supply0 gnd;


mux16 m0(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],j0, j1, j2, j3,o[0]);
mux16 m1(i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],gnd,j0, j1, j2, j3,o[1]);
mux16 m2(i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],gnd,gnd,j0, j1, j2, j3,o[2]);
mux16 m3(i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],gnd,gnd,gnd,j0, j1, j2, j3,o[3]);
mux16 m4(i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[4]);
mux16 m5(i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[5]);
mux16 m6(i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[6]);
mux16 m7(i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[7]);
mux16 m8(i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[8]);
mux16 m9(i[9],i[10],i[11],i[12],i[13],i[14],i[15],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[9]);
mux16 m10(i[10],i[11],i[12],i[13],i[14],i[15],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[10]);
mux16 m11(i[11],i[12],i[13],i[14],i[15],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[11]);
mux16 m12(i[12],i[13],i[14],i[15],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[12]);
mux16 m13(i[13],i[14],i[15],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[13]);
mux16 m14(i[14],i[15],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[14]);
mux16 m15(i[15],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[15]);



endmodule























module arithmetic_rightshift(input wire [15:0]i,j0,j1, j2,j3, output wire [15:0]o);



supply0 gnd;



mux16 m0(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[15]);
mux16 m1(i[14],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[14]);
mux16 m2(i[13],i[14],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[13]);
mux16 m3(i[12],i[13],i[14],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[12]);
mux16 m4(i[11],i[12],i[13],i[14],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[11]);
mux16 m5(i[10],i[11],i[12],i[13],i[14],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[10]);
mux16 m6(i[9],i[10],i[11],i[12],i[13],i[14],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[9]);
mux16 m7(i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[8]); 
mux16 m8(i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[7]);
mux16 m9(i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[6]);
mux16 m10(i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[5]);
mux16 m11(i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[4]);
mux16 m12(i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[3]);
mux16 m13(i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],i[15],i[15],j0, j1, j2, j3,o[2]);
mux16 m14(i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],i[15],j0, j1, j2, j3,o[1]);
mux16 m15(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],j0, j1, j2, j3,o[0]);







endmodule




module arithmetic_leftshift(input wire[15:0] i,j0,j1, j2,j3, output wire [15:0]o);

supply0 gnd;

mux16 m15(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],j0, j1, j2, j3,o[15]);
mux16 m14(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],gnd,j0, j1, j2, j3,o[14]);
mux16 m13(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],gnd,gnd,j0, j1, j2, j3,o[13]);
mux16 m12(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],gnd,gnd,gnd,j0, j1, j2, j3,o[12]);
mux16 m11(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[11]);
mux16 m10(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[10]);
mux16 m9(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[9]);
mux16 m8(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[8]);
mux16 m7(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[7]);
mux16 m6(i[0],i[1],i[2],i[3],i[4],i[5],i[6],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[6]);
mux16 m5(i[0],i[1],i[2],i[3],i[4],i[5],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[5]);
mux16 m4(i[0],i[1],i[2],i[3],i[4],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[4]);
mux16 m3(i[0],i[1],i[2],i[3],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[3]);
mux16 m2(i[0],i[1],i[2],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[2]);
mux16 m1(i[0],i[1],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[1]);
mux16 m0(i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[0]);

endmodule
