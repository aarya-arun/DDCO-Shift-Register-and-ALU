module logical_leftshift(input wire[15:0] i,j0,j1, j2,j3, output wire [15:0]o);

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



module logical_rightshift(input wire[15:0] i,j0,j1, j2,j3, output wire [15:0]o);

supply0 gnd;

mux16 m0(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],i[15],j0, j1, j2, j3,o[0]);
mux16 m1(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],i[14],gnd,j0, j1, j2, j3,o[1]);
mux16 m2(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],i[13],gnd,gnd,j0, j1, j2, j3,o[2]);
mux16 m3(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],i[12],gnd,gnd,gnd,j0, j1, j2, j3,o[3]);
mux16 m4(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],i[11],gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[4]);
mux16 m5(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],i[10],gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[5]);
mux16 m6(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9],gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[6]);
mux16 m7(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[7]);
mux16 m8(i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[8]);
mux16 m9(i[0],i[1],i[2],i[3],i[4],i[5],i[6],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[9]);
mux16 m10(i[0],i[1],i[2],i[3],i[4],i[5],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[10]);
mux16 m11(i[0],i[1],i[2],i[3],i[4],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[11]);
mux16 m12(i[0],i[1],i[2],i[3],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[12]);
mux16 m13(i[0],i[1],i[2],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[13]);
mux16 m14(i[0],i[1],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[14]);
mux16 m15(i[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,j0, j1, j2, j3,o[15]);

endmodule

//////////////////////////////////////////////////////////////////////

module arithmetic_rightshift(input wire[15:0] i,j0,j1, j2,j3, output wire [15:0]o);



mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[15]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[14]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[13]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[12]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[11]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[10]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[9]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[8]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[7]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[6]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[5]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[4]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[3]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[2]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[1]);
mux16 m15(i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],i[15],j0, j1, j2, j3,o[0]);

endmodule
