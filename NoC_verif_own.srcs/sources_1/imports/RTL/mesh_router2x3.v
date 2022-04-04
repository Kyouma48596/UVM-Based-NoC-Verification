 `timescale 1ns / 1ps

module top_2x3_router(
input clk, clr,
input[31:0] data_in_core_r1,data_in_core_r2,data_in_core_r3,data_in_core_r4,data_in_core_r5,data_in_core_r6,

output[31:0] data_out_core_r1, data_out_core_r2, data_out_core_r3, data_out_core_r4, data_out_core_r5, data_out_core_r6 
);
wire gnd;
wire vdd;
assign gnd=0;
assign vdd=1;
wire [31:0] data_out_link1_r2, data_out_link3_r2, data_out_link4_r2,
data_out_link2_r5, data_out_link3_r5, data_out_link4_r5;
wire [31:0] data_out_link1_r1, data_out_link3_r1,
data_out_link1_r3, data_out_link4_r3,
data_out_link2_r4, data_out_link3_r4,
data_out_link2_r6, data_out_link4_r6;

wire [31:0]data_out_link1, data_out_link2, data_out_link3, data_out_link4;

wire full_in_core_vc1_r1, full_in_core_vc2_r1, full_in_core_vc3_r1, full_in_core_vc4_r1, 
full_in_core_vc1_r2, full_in_core_vc2_r2, full_in_core_vc3_r2, full_in_core_vc4_r2, 
full_in_core_vc1_r3, full_in_core_vc2_r3, full_in_core_vc3_r3, full_in_core_vc4_r3, 
full_in_core_vc1_r4, full_in_core_vc2_r4, full_in_core_vc3_r4, full_in_core_vc4_r4, 
full_in_core_vc1_r5, full_in_core_vc2_r5, full_in_core_vc3_r5, full_in_core_vc4_r5, 
full_in_core_vc1_r6, full_in_core_vc2_r6, full_in_core_vc3_r6, full_in_core_vc4_r6, 
full_out_core_vc1_r1, full_out_core_vc2_r1, full_out_core_vc3_r1, full_out_core_vc4_r1, 
full_out_core_vc1_r2, full_out_core_vc2_r2, full_out_core_vc3_r2, full_out_core_vc4_r2, 
full_out_core_vc1_r3, full_out_core_vc2_r3, full_out_core_vc3_r3, full_out_core_vc4_r3, 
full_out_core_vc1_r4, full_out_core_vc2_r4, full_out_core_vc3_r4, full_out_core_vc4_r4, 
full_out_core_vc1_r5, full_out_core_vc2_r5, full_out_core_vc3_r5, full_out_core_vc4_r5, 
full_out_core_vc1_r6, full_out_core_vc2_r6, full_out_core_vc3_r6, full_out_core_vc4_r6;

wire full_out_link1_vc1_r1,full_out_link1_vc2_r1,full_out_link1_vc3_r1,full_out_link1_vc4_r1,
full_out_link2_vc1_r1,full_out_link2_vc2_r1,full_out_link2_vc3_r1,full_out_link2_vc4_r1,
full_out_link3_vc1_r1,full_out_link3_vc2_r1,full_out_link3_vc3_r1,full_out_link3_vc4_r1,
full_out_link4_vc1_r1,full_out_link4_vc2_r1,full_out_link4_vc3_r1,full_out_link4_vc4_r1,

full_out_link1_vc1_r2,full_out_link1_vc2_r2,full_out_link1_vc3_r2,full_out_link1_vc4_r2,
full_out_link2_vc1_r2,full_out_link2_vc2_r2,full_out_link2_vc3_r2,full_out_link2_vc4_r2,
full_out_link3_vc1_r2,full_out_link3_vc2_r2,full_out_link3_vc3_r2,full_out_link3_vc4_r2,
full_out_link4_vc1_r2,full_out_link4_vc2_r2,full_out_link4_vc3_r2,full_out_link4_vc4_r2,

full_out_link1_vc1_r3,full_out_link1_vc2_r3,full_out_link1_vc3_r3,full_out_link1_vc4_r3,
full_out_link2_vc1_r3,full_out_link2_vc2_r3,full_out_link2_vc3_r3,full_out_link2_vc4_r3,
full_out_link3_vc1_r3,full_out_link3_vc2_r3,full_out_link3_vc3_r3,full_out_link3_vc4_r3,
full_out_link4_vc1_r3,full_out_link4_vc2_r3,full_out_link4_vc3_r3,full_out_link4_vc4_r3,

full_out_link1_vc1_r4,full_out_link1_vc2_r4,full_out_link1_vc3_r4,full_out_link1_vc4_r4,
full_out_link2_vc1_r4,full_out_link2_vc2_r4,full_out_link2_vc3_r4,full_out_link2_vc4_r4,
full_out_link3_vc1_r4,full_out_link3_vc2_r4,full_out_link3_vc3_r4,full_out_link3_vc4_r4,
full_out_link4_vc1_r4,full_out_link4_vc2_r4,full_out_link4_vc3_r4,full_out_link4_vc4_r4,

full_out_link1_vc1_r5,full_out_link1_vc2_r5,full_out_link1_vc3_r5,full_out_link1_vc4_r5,
full_out_link2_vc1_r5,full_out_link2_vc2_r5,full_out_link2_vc3_r5,full_out_link2_vc4_r5,
full_out_link3_vc1_r5,full_out_link3_vc2_r5,full_out_link3_vc3_r5,full_out_link3_vc4_r5,
full_out_link4_vc1_r5,full_out_link4_vc2_r5,full_out_link4_vc3_r5,full_out_link4_vc4_r5,

full_out_link1_vc1_r6,full_out_link1_vc2_r6,full_out_link1_vc3_r6,full_out_link1_vc4_r6,
full_out_link2_vc1_r6,full_out_link2_vc2_r6,full_out_link2_vc3_r6,full_out_link2_vc4_r6,
full_out_link3_vc1_r6,full_out_link3_vc2_r6,full_out_link3_vc3_r6,full_out_link3_vc4_r6,
full_out_link4_vc1_r6,full_out_link4_vc2_r6,full_out_link4_vc3_r6,full_out_link4_vc4_r6;

wire temp_outval2_r2,
temp_outval1_r5,
temp_outval2_r1, temp_outval4_r1,
temp_outval2_r3, temp_outval3_r3,
temp_outval4_r4, temp_outval1_r4,
temp_outval1_r6, temp_outval3_r6;
wire false_val2_1_r2,
false_val1_1_r5,
false_val2_2_r2,
false_val1_2_r5,
false_val2_3_r2,
false_val1_3_r5,
false_val2_4_r2,
false_val1_4_r5;
wire false_val2_1_r1, false_val4_1_r1,
false_val2_1_r3, false_val3_1_r3,
false_val1_1_r4, false_val4_1_r4,
false_val1_1_r6, false_val3_1_r6;
wire false_val2_2_r1, false_val4_2_r1,
false_val2_2_r3, false_val3_2_r3,
false_val1_2_r4, false_val4_2_r4,
false_val1_2_r6, false_val3_2_r6;
wire false_val2_3_r1, false_val4_3_r1,
false_val2_3_r3, false_val3_3_r3,
false_val1_3_r4, false_val4_3_r4,
false_val1_3_r6, false_val3_3_r6;
wire false_val2_4_r1, false_val4_4_r1,
false_val2_4_r3, false_val3_4_r3,
false_val1_4_r4, false_val4_4_r4,
false_val1_4_r6, false_val3_4_r6;



assign full_in_core_vc1_r1=0;
assign full_in_core_vc2_r1=0;
assign full_in_core_vc3_r1=0;
assign full_in_core_vc4_r1=0; 
assign full_in_core_vc1_r2=0;
assign full_in_core_vc2_r2=0;
assign full_in_core_vc3_r2=0;
assign full_in_core_vc4_r2=0;
assign full_in_core_vc1_r3=0;
assign full_in_core_vc2_r3=0;
assign full_in_core_vc3_r3=0;
assign full_in_core_vc4_r3=0;
assign full_in_core_vc1_r4=0;
assign full_in_core_vc2_r4=0;
assign full_in_core_vc3_r4=0;
assign full_in_core_vc4_r4=0;
assign full_in_core_vc1_r5=0;
assign full_in_core_vc2_r5=0;
assign full_in_core_vc3_r5=0;
assign full_in_core_vc4_r5=0; 
assign full_in_core_vc1_r6=0;
assign full_in_core_vc2_r6=0;
assign full_in_core_vc3_r6=0;
assign full_in_core_vc4_r6=0;


top_module r2(
.data_in_link1(data_out_link2_r5),
.data_in_link2(32'b01100000000000000000000000000000),
.data_in_link3(data_out_link4_r3),
.data_in_link4(data_out_link3_r1),
.data_in_core(data_in_core_r2),
.clk(clk),
.clr(clr),
.current_address(8'h01),
.full_in_link1_vc1(full_out_link2_vc1_r5),
.full_in_link1_vc2(full_out_link2_vc2_r5),
.full_in_link1_vc3(full_out_link2_vc3_r5),
.full_in_link1_vc4(full_out_link2_vc4_r5),

.full_in_link2_vc1(gnd),
.full_in_link2_vc2(gnd),
.full_in_link2_vc3(gnd),
.full_in_link2_vc4(gnd),

.full_in_link3_vc1(full_out_link4_vc1_r3),
.full_in_link3_vc2(full_out_link4_vc2_r3),
.full_in_link3_vc3(full_out_link4_vc3_r3),
.full_in_link3_vc4(full_out_link4_vc4_r3),

.full_in_link4_vc1(full_out_link3_vc1_r1),
.full_in_link4_vc2(full_out_link3_vc2_r1),
.full_in_link4_vc3(full_out_link3_vc3_r1),
.full_in_link4_vc4(full_out_link3_vc4_r1),

.full_in_core_vc1(full_in_core_vc1_r2),
.full_in_core_vc2(full_in_core_vc2_r2),
.full_in_core_vc3(full_in_core_vc3_r2),
.full_in_core_vc4(full_in_core_vc4_r2),
.data_out_link1(data_out_link1_r2),
.data_out_link2(data_out_link2),
.data_out_link3(data_out_link3_r2),
.data_out_link4(data_out_link4_r2),

.data_out_core(data_out_core_r2),

.full_out_link1_vc1(full_out_link1_vc1_r2),
.full_out_link1_vc2(full_out_link1_vc2_r2),
.full_out_link1_vc3(full_out_link1_vc3_r2),
.full_out_link1_vc4(full_out_link1_vc4_r2),

.full_out_link2_vc1(full_out_link2_vc1_r2),
.full_out_link2_vc2(full_out_link2_vc2_r2),
.full_out_link2_vc3(full_out_link2_vc3_r2),
.full_out_link2_vc4(full_out_link2_vc4_r2),

.full_out_link3_vc1(full_out_link3_vc1_r2),
.full_out_link3_vc2(full_out_link3_vc2_r2),
.full_out_link3_vc3(full_out_link3_vc3_r2),
.full_out_link3_vc4(full_out_link3_vc4_r2),

.full_out_link4_vc1(full_out_link4_vc1_r2),
.full_out_link4_vc2(full_out_link4_vc2_r2),
.full_out_link4_vc3(full_out_link4_vc3_r2),
.full_out_link4_vc4(full_out_link4_vc4_r2),

.full_out_core_vc1(full_out_core_vc1_r2),
.full_out_core_vc2(full_out_core_vc2_r2),
.full_out_core_vc3(full_out_core_vc3_r2),
.full_out_core_vc4(full_out_core_vc4_r2)
);

top_module r5(
.data_in_link1(32'b01100000000000000000000000000000),
.data_in_link2(data_out_link1_r2),
.data_in_link3(data_out_link4_r6),
.data_in_link4(data_out_link3_r4),
.data_in_core(data_in_core_r5),
.clk(clk),
.clr(clr),
.current_address(8'h11),
.full_in_link1_vc1(gnd),
.full_in_link1_vc2(gnd),
.full_in_link1_vc3(gnd),
.full_in_link1_vc4(gnd),

.full_in_link2_vc1(full_out_link1_vc1_r2),
.full_in_link2_vc2(full_out_link1_vc2_r2),
.full_in_link2_vc3(full_out_link1_vc3_r2),
.full_in_link2_vc4(full_out_link1_vc4_r2),

.full_in_link3_vc1(full_out_link4_vc1_r6),
.full_in_link3_vc2(full_out_link4_vc2_r6),
.full_in_link3_vc3(full_out_link4_vc3_r6),
.full_in_link3_vc4(full_out_link4_vc4_r6),

.full_in_link4_vc1(full_out_link3_vc1_r4),
.full_in_link4_vc2(full_out_link3_vc2_r4),
.full_in_link4_vc3(full_out_link3_vc3_r4),
.full_in_link4_vc4(full_out_link3_vc4_r4),

.full_in_core_vc1(full_in_core_vc1_r5),
.full_in_core_vc2(full_in_core_vc2_r5),
.full_in_core_vc3(full_in_core_vc3_r5),
.full_in_core_vc4(full_in_core_vc4_r5),
.data_out_link1(data_out_link1),
.data_out_link2(data_out_link2_r5),
.data_out_link3(data_out_link3_r5),
.data_out_link4(data_out_link4_r5),

.data_out_core(data_out_core_r5),

.full_out_link1_vc1(full_out_link1_vc1_r5),
.full_out_link1_vc2(full_out_link1_vc2_r5),
.full_out_link1_vc3(full_out_link1_vc3_r5),
.full_out_link1_vc4(full_out_link1_vc4_r5),

.full_out_link2_vc1(full_out_link2_vc1_r5),
.full_out_link2_vc2(full_out_link2_vc2_r5),
.full_out_link2_vc3(full_out_link2_vc3_r5),
.full_out_link2_vc4(full_out_link2_vc4_r5),

.full_out_link3_vc1(full_out_link3_vc1_r5),
.full_out_link3_vc2(full_out_link3_vc2_r5),
.full_out_link3_vc3(full_out_link3_vc3_r5),
.full_out_link3_vc4(full_out_link3_vc4_r5),

.full_out_link4_vc1(full_out_link4_vc1_r5),
.full_out_link4_vc2(full_out_link4_vc2_r5),
.full_out_link4_vc3(full_out_link4_vc3_r5),
.full_out_link4_vc4(full_out_link4_vc4_r5),

.full_out_core_vc1(full_out_core_vc1_r5),
.full_out_core_vc2(full_out_core_vc2_r5),
.full_out_core_vc3(full_out_core_vc3_r5),
.full_out_core_vc4(full_out_core_vc4_r5)
);

top_module r1(
.data_in_link1(data_out_link2_r4),
.data_in_link2(32'b01100000000000000000000000000000),
.data_in_link3(data_out_link4_r2),
.data_in_link4(32'b01100000000000000000000000000000),
.data_in_core(data_in_core_r1),
.clk(clk),
.clr(clr),
.current_address(8'h00),
.full_in_link1_vc1(full_out_link2_vc1_r4),
.full_in_link1_vc2(full_out_link2_vc2_r4),
.full_in_link1_vc3(full_out_link2_vc3_r4),
.full_in_link1_vc4(full_out_link2_vc4_r4),
.full_in_link2_vc1(gnd),
.full_in_link2_vc2(gnd),
.full_in_link2_vc3(gnd),
.full_in_link2_vc4(gnd),
.full_in_link3_vc1(full_out_link4_vc1_r2),
.full_in_link3_vc2(full_out_link4_vc2_r2),
.full_in_link3_vc3(full_out_link4_vc3_r2),
.full_in_link3_vc4(full_out_link4_vc4_r2),
.full_in_link4_vc1(gnd),
.full_in_link4_vc2(gnd),
.full_in_link4_vc3(gnd),
.full_in_link4_vc4(gnd),
.full_in_core_vc1(full_in_core_vc1_r1),
.full_in_core_vc2(full_in_core_vc2_r1),
.full_in_core_vc3(full_in_core_vc3_r1),
.full_in_core_vc4(full_in_core_vc4_r1),
.data_out_link1(data_out_link1_r1),
.data_out_link2(data_out_link2),
.data_out_link3(data_out_link3_r1),
.data_out_link4(data_out_link4),


.data_out_core(data_out_core_r1),

.full_out_link1_vc1(full_out_link1_vc1_r1),
.full_out_link1_vc2(full_out_link1_vc2_r1),
.full_out_link1_vc3(full_out_link1_vc3_r1),
.full_out_link1_vc4(full_out_link1_vc4_r1),
.full_out_link2_vc1(full_out_link2_vc1_r1),
.full_out_link2_vc2(full_out_link2_vc2_r1),
.full_out_link2_vc3(full_out_link2_vc3_r1),
.full_out_link2_vc4(full_out_link2_vc4_r1),
.full_out_link3_vc1(full_out_link3_vc1_r1),
.full_out_link3_vc2(full_out_link3_vc2_r1),
.full_out_link3_vc3(full_out_link3_vc3_r1),
.full_out_link3_vc4(full_out_link3_vc4_r1),
.full_out_link4_vc1(full_out_link4_vc1_r1),
.full_out_link4_vc2(full_out_link4_vc2_r1),
.full_out_link4_vc3(full_out_link4_vc3_r1),
.full_out_link4_vc4(full_out_link4_vc4_r1),
.full_out_core_vc1(full_out_core_vc1_r1),
.full_out_core_vc2(full_out_core_vc2_r1),
.full_out_core_vc3(full_out_core_vc3_r1),
.full_out_core_vc4(full_out_core_vc4_r1)
);

top_module r3(
.data_in_link1(data_out_link2_r6),
.data_in_link2(32'b01100000000000000000000000000000),
.data_in_link3(32'b01100000000000000000000000000000),
.data_in_link4(data_out_link3_r2),
.data_in_core(data_in_core_r3),
.clk(clk),
.clr(clr),
.current_address(8'h02),
.full_in_link1_vc1(full_out_link2_vc1_r6),
.full_in_link1_vc2(full_out_link2_vc2_r6),
.full_in_link1_vc3(full_out_link2_vc3_r6),
.full_in_link1_vc4(full_out_link2_vc4_r6),
.full_in_link2_vc1(gnd),
.full_in_link2_vc2(gnd),
.full_in_link2_vc3(gnd),
.full_in_link2_vc4(gnd),
.full_in_link3_vc1(gnd),
.full_in_link3_vc2(gnd),
.full_in_link3_vc3(gnd),
.full_in_link3_vc4(gnd),
.full_in_link4_vc1(full_out_link3_vc1_r2),
.full_in_link4_vc2(full_out_link3_vc2_r2),
.full_in_link4_vc3(full_out_link3_vc3_r2),
.full_in_link4_vc4(full_out_link3_vc4_r2),
.full_in_core_vc1(full_in_core_vc1_r3),
.full_in_core_vc2(full_in_core_vc2_r3),
.full_in_core_vc3(full_in_core_vc3_r3),
.full_in_core_vc4(full_in_core_vc4_r3),
.data_out_link1(data_out_link1_r3),
.data_out_link2(data_out_link2),
.data_out_link3(data_out_link3),
.data_out_link4(data_out_link4_r3),


.data_out_core(data_out_core_r3),

.full_out_link1_vc1(full_out_link1_vc1_r3),
.full_out_link1_vc2(full_out_link1_vc2_r3),
.full_out_link1_vc3(full_out_link1_vc3_r3),
.full_out_link1_vc4(full_out_link1_vc4_r3),
.full_out_link2_vc1(full_out_link2_vc1_r3),
.full_out_link2_vc2(full_out_link2_vc2_r3),
.full_out_link2_vc3(full_out_link2_vc3_r3),
.full_out_link2_vc4(full_out_link2_vc4_r3),
.full_out_link3_vc1(full_out_link3_vc1_r3),
.full_out_link3_vc2(full_out_link3_vc2_r3),
.full_out_link3_vc3(full_out_link3_vc3_r3),
.full_out_link3_vc4(full_out_link3_vc4_r3),
.full_out_link4_vc1(full_out_link4_vc1_r3),
.full_out_link4_vc2(full_out_link4_vc2_r3),
.full_out_link4_vc3(full_out_link4_vc3_r3),
.full_out_link4_vc4(full_out_link4_vc4_r3),
.full_out_core_vc1(full_out_core_vc1_r3),
.full_out_core_vc2(full_out_core_vc2_r3),
.full_out_core_vc3(full_out_core_vc3_r3),
.full_out_core_vc4(full_out_core_vc4_r3)
);

top_module r4(
.data_in_link1(32'b01100000000000000000000000000000),
.data_in_link2(data_out_link1_r1),
.data_in_link3(data_out_link4_r5),
.data_in_link4(32'b01100000000000000000000000000000),
.data_in_core(data_in_core_r4),
.clk(clk),
.clr(clr),
.current_address(8'h10),
.full_in_link1_vc1(gnd),
.full_in_link1_vc2(gnd),
.full_in_link1_vc3(gnd),
.full_in_link1_vc4(gnd),
.full_in_link2_vc1(full_out_link1_vc1_r1),
.full_in_link2_vc2(full_out_link1_vc2_r1),
.full_in_link2_vc3(full_out_link1_vc3_r1),
.full_in_link2_vc4(full_out_link1_vc4_r1),
.full_in_link3_vc1(full_out_link4_vc1_r5),
.full_in_link3_vc2(full_out_link4_vc2_r5),
.full_in_link3_vc3(full_out_link4_vc3_r5),
.full_in_link3_vc4(full_out_link4_vc4_r5),
.full_in_link4_vc1(gnd),
.full_in_link4_vc2(gnd),
.full_in_link4_vc3(gnd),
.full_in_link4_vc4(gnd),
.full_in_core_vc1(full_in_core_vc1_r4),
.full_in_core_vc2(full_in_core_vc2_r4),
.full_in_core_vc3(full_in_core_vc3_r4),
.full_in_core_vc4(full_in_core_vc4_r4),
.data_out_link1(data_out_link1),
.data_out_link2(data_out_link2_r4),
.data_out_link3(data_out_link3_r4),
.data_out_link4(data_out_link4),


.data_out_core(data_out_core_r4),

.full_out_link1_vc1(full_out_link1_vc1_r4),
.full_out_link1_vc2(full_out_link1_vc2_r4),
.full_out_link1_vc3(full_out_link1_vc3_r4),
.full_out_link1_vc4(full_out_link1_vc4_r4),
.full_out_link2_vc1(full_out_link2_vc1_r4),
.full_out_link2_vc2(full_out_link2_vc2_r4),
.full_out_link2_vc3(full_out_link2_vc3_r4),
.full_out_link2_vc4(full_out_link2_vc4_r4),
.full_out_link3_vc1(full_out_link3_vc1_r4),
.full_out_link3_vc2(full_out_link3_vc2_r4),
.full_out_link3_vc3(full_out_link3_vc3_r4),
.full_out_link3_vc4(full_out_link3_vc4_r4),
.full_out_link4_vc1(full_out_link4_vc1_r4),
.full_out_link4_vc2(full_out_link4_vc2_r4),
.full_out_link4_vc3(full_out_link4_vc3_r4),
.full_out_link4_vc4(full_out_link4_vc4_r4),
.full_out_core_vc1(full_out_core_vc1_r4),
.full_out_core_vc2(full_out_core_vc2_r4),
.full_out_core_vc3(full_out_core_vc3_r4),
.full_out_core_vc4(full_out_core_vc4_r4)
);

top_module r6(
.data_in_link1(32'b01100000000000000000000000000000),
.data_in_link2(data_out_link1_r3),
.data_in_link3(32'b01100000000000000000000000000000),
.data_in_link4(data_out_link3_r5),
.data_in_core(data_in_core_r6),
.clk(clk),
.clr(clr),
.current_address(8'h12),
.full_in_link1_vc1(gnd),
.full_in_link1_vc2(gnd),
.full_in_link1_vc3(gnd),
.full_in_link1_vc4(gnd),
.full_in_link2_vc1(full_out_link1_vc1_r3),
.full_in_link2_vc2(full_out_link1_vc2_r3),
.full_in_link2_vc3(full_out_link1_vc3_r3),
.full_in_link2_vc4(full_out_link1_vc4_r3),
.full_in_link3_vc1(gnd),
.full_in_link3_vc2(gnd),
.full_in_link3_vc3(gnd),
.full_in_link3_vc4(gnd),
.full_in_link4_vc1(full_out_link3_vc1_r5),
.full_in_link4_vc2(full_out_link3_vc2_r5),
.full_in_link4_vc3(full_out_link3_vc3_r5),
.full_in_link4_vc4(full_out_link3_vc4_r5),
.full_in_core_vc1(full_in_core_vc1_r6),
.full_in_core_vc2(full_in_core_vc2_r6),
.full_in_core_vc3(full_in_core_vc3_r6),
.full_in_core_vc4(full_in_core_vc4_r6),
.data_out_link1(data_out_link1),
.data_out_link2(data_out_link2_r6),
.data_out_link3(data_out_link3),
.data_out_link4(data_out_link4_r6),


.data_out_core(data_out_core_r6),

.full_out_link1_vc1(full_out_link1_vc1_r6),
.full_out_link1_vc2(full_out_link1_vc2_r6),
.full_out_link1_vc3(full_out_link1_vc3_r6),
.full_out_link1_vc4(full_out_link1_vc4_r6),
.full_out_link2_vc1(full_out_link2_vc1_r6),
.full_out_link2_vc2(full_out_link2_vc2_r6),
.full_out_link2_vc3(full_out_link2_vc3_r6),
.full_out_link2_vc4(full_out_link2_vc4_r6),
.full_out_link3_vc1(full_out_link3_vc1_r6),
.full_out_link3_vc2(full_out_link3_vc2_r6),
.full_out_link3_vc3(full_out_link3_vc3_r6),
.full_out_link3_vc4(full_out_link3_vc4_r6),
.full_out_link4_vc1(full_out_link4_vc1_r6),
.full_out_link4_vc2(full_out_link4_vc2_r6),
.full_out_link4_vc3(full_out_link4_vc3_r6),
.full_out_link4_vc4(full_out_link4_vc4_r6),
.full_out_core_vc1(full_out_core_vc1_r6),
.full_out_core_vc2(full_out_core_vc2_r6),
.full_out_core_vc3(full_out_core_vc3_r6),
.full_out_core_vc4(full_out_core_vc4_r6)
);


endmodule
