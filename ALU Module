module alu_16(input wire[3:0]op, input wire [2:0]op1, input wire [1:0]op2, input wire [15:0] i1,i2, input wire cin, opz, output wire[15:0]o, output wire coutf);
	
	wire [15:0]out0;
	wire [15:0]out1;
	wire[15:0]out2;
	wire [15:0]out3;
	wire [15:0]out4;
	wire[15:0]out5;
	wire [15:0]out6;
	wire [15:0]out7;
	wire[15:0]out8;
	wire [15:0]out9;
	wire [15:0]out10;
	wire[15:0]out11;



	addsub16 a1(opz, i1,i2,out1,coutf,cin);

	and16 a2(i1,i2,out2);

	or16 a3(i1,i2,out3);


	module logical_leftshift(i1,op[0],op[1], op[2],op[3], out4);
	module logical_leftshift(i1,op[0],op[1], op[2],op[3], out5);

	module logical_rightshift(i1,op[0],op[1], op[2],op[3], out6);
	module logical_rightshift(i2,op[0],op[1], op[2],op[3], out7);

	module arithmetic_leftshift(i1,op[0],op[1], op[2],op[3], out8);
	module arithmetic_leftshift(i2,op[0],op[1], op[2],op[3], out9);	

	module arithmetic_rightshift(i1,op[0],op[1], op[2],op[3], out10);
	module arithmetic_rightshift(i2,op[0],op[1], op[2],op[3], out11);

	mux8_16(out0,out1,out2,out3,out4,out5,out6,out7,op1,out0);
	mux4_16(out0,out1,out2,out3,op2,o);




endmodule
	
 	
