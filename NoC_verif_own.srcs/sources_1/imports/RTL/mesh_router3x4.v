 `timescale 1ns / 1ps

module top_3x4_router(
input clk, clr,
input[31:0] data_in_core_r1,data_in_core_r2,data_in_core_r3,data_in_core_r4,data_in_core_r5,data_in_core_r6,data_in_core_r7,data_in_core_r8,data_in_core_r9,data_in_core_r10,data_in_core_r11,data_in_core_r12,

output[31:0] data_out_core_r1, data_out_core_r2, data_out_core_r3, data_out_core_r4, data_out_core_r5, data_out_core_r6, data_out_core_r7, data_out_core_r8, data_out_core_r9, data_out_core_r10, data_out_core_r11, data_out_core_r12 
);
wire gnd;
wire vdd;
assign gnd=0;
assign vdd=1;
wire [31:0] data_out_link1_r2, data_out_link3_r2, data_out_link4_r2,
data_out_link1_r3, data_out_link3_r3, data_out_link4_r3,
data_out_link2_r10, data_out_link3_r10, data_out_link4_r10,
data_out_link2_r11, data_out_link3_r11, data_out_link4_r11,
data_out_link1_r5, data_out_link2_r5, data_out_link3_r5,
data_out_link1_r8, data_out_link2_r8, data_out_link4_r8;
wire [31:0] data_out_link1_r1, data_out_link3_r1,
data_out_link1_r4, data_out_link4_r4,
data_out_link2_r9, data_out_link3_r9,
data_out_link2_r12, data_out_link4_r12;
wire[31:0] data_out_link1_r6, data_out_link2_r6, data_out_link3_r6, data_out_link4_r6;

wire[31:0] data_out_link1_r7, data_out_link2_r7, data_out_link3_r7, data_out_link4_r7;

wire [31:0]data_out_link1, data_out_link2, data_out_link3, data_out_link4;

wire full_in_core_vc1_r1, full_in_core_vc2_r1, full_in_core_vc3_r1, full_in_core_vc4_r1, 
 full_in_core_vc1_r2, full_in_core_vc2_r2, full_in_core_vc3_r2, full_in_core_vc4_r2, 
 full_in_core_vc1_r3, full_in_core_vc2_r3, full_in_core_vc3_r3, full_in_core_vc4_r3, 
 full_in_core_vc1_r4, full_in_core_vc2_r4, full_in_core_vc3_r4, full_in_core_vc4_r4, 
 full_in_core_vc1_r5, full_in_core_vc2_r5, full_in_core_vc3_r5, full_in_core_vc4_r5, 
 full_in_core_vc1_r6, full_in_core_vc2_r6, full_in_core_vc3_r6, full_in_core_vc4_r6, 
 full_in_core_vc1_r7, full_in_core_vc2_r7, full_in_core_vc3_r7, full_in_core_vc4_r7, 
 full_in_core_vc1_r8, full_in_core_vc2_r8, full_in_core_vc3_r8, full_in_core_vc4_r8, 
 full_in_core_vc1_r9, full_in_core_vc2_r9, full_in_core_vc3_r9, full_in_core_vc4_r9, 
 full_in_core_vc1_r10, full_in_core_vc2_r10, full_in_core_vc3_r10, full_in_core_vc4_r10, 
 full_in_core_vc1_r11, full_in_core_vc2_r11, full_in_core_vc3_r11, full_in_core_vc4_r11, 
 full_in_core_vc1_r12, full_in_core_vc2_r12, full_in_core_vc3_r12, full_in_core_vc4_r12;

wire full_out_core_vc1_r1, full_out_core_vc2_r1, full_out_core_vc3_r1, full_out_core_vc4_r1, 
 full_out_core_vc1_r2, full_out_core_vc2_r2, full_out_core_vc3_r2, full_out_core_vc4_r2, 
 full_out_core_vc1_r3, full_out_core_vc2_r3, full_out_core_vc3_r3, full_out_core_vc4_r3, 
 full_out_core_vc1_r4, full_out_core_vc2_r4, full_out_core_vc3_r4, full_out_core_vc4_r4, 
 full_out_core_vc1_r5, full_out_core_vc2_r5, full_out_core_vc3_r5, full_out_core_vc4_r5, 
 full_out_core_vc1_r6, full_out_core_vc2_r6, full_out_core_vc3_r6, full_out_core_vc4_r6, 
 full_out_core_vc1_r7, full_out_core_vc2_r7, full_out_core_vc3_r7, full_out_core_vc4_r7, 
 full_out_core_vc1_r8, full_out_core_vc2_r8, full_out_core_vc3_r8, full_out_core_vc4_r8, 
 full_out_core_vc1_r9, full_out_core_vc2_r9, full_out_core_vc3_r9, full_out_core_vc4_r9, 
 full_out_core_vc1_r10, full_out_core_vc2_r10, full_out_core_vc3_r10, full_out_core_vc4_r10, 
 full_out_core_vc1_r11, full_out_core_vc2_r11, full_out_core_vc3_r11, full_out_core_vc4_r11, 
 full_out_core_vc1_r12, full_out_core_vc2_r12, full_out_core_vc3_r12, full_out_core_vc4_r12;

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
full_out_link4_vc1_r6,full_out_link4_vc2_r6,full_out_link4_vc3_r6,full_out_link4_vc4_r6,

full_out_link1_vc1_r7,full_out_link1_vc2_r7,full_out_link1_vc3_r7,full_out_link1_vc4_r7,
full_out_link2_vc1_r7,full_out_link2_vc2_r7,full_out_link2_vc3_r7,full_out_link2_vc4_r7,
full_out_link3_vc1_r7,full_out_link3_vc2_r7,full_out_link3_vc3_r7,full_out_link3_vc4_r7,
full_out_link4_vc1_r7,full_out_link4_vc2_r7,full_out_link4_vc3_r7,full_out_link4_vc4_r7,

full_out_link1_vc1_r8,full_out_link1_vc2_r8,full_out_link1_vc3_r8,full_out_link1_vc4_r8,
full_out_link2_vc1_r8,full_out_link2_vc2_r8,full_out_link2_vc3_r8,full_out_link2_vc4_r8,
full_out_link3_vc1_r8,full_out_link3_vc2_r8,full_out_link3_vc3_r8,full_out_link3_vc4_r8,
full_out_link4_vc1_r8,full_out_link4_vc2_r8,full_out_link4_vc3_r8,full_out_link4_vc4_r8,

full_out_link1_vc1_r9,full_out_link1_vc2_r9,full_out_link1_vc3_r9,full_out_link1_vc4_r9,
full_out_link2_vc1_r9,full_out_link2_vc2_r9,full_out_link2_vc3_r9,full_out_link2_vc4_r9,
full_out_link3_vc1_r9,full_out_link3_vc2_r9,full_out_link3_vc3_r9,full_out_link3_vc4_r9,
full_out_link4_vc1_r9,full_out_link4_vc2_r9,full_out_link4_vc3_r9,full_out_link4_vc4_r9,

full_out_link1_vc1_r10,full_out_link1_vc2_r10,full_out_link1_vc3_r10,full_out_link1_vc4_r10,
full_out_link2_vc1_r10,full_out_link2_vc2_r10,full_out_link2_vc3_r10,full_out_link2_vc4_r10,
full_out_link3_vc1_r10,full_out_link3_vc2_r10,full_out_link3_vc3_r10,full_out_link3_vc4_r10,
full_out_link4_vc1_r10,full_out_link4_vc2_r10,full_out_link4_vc3_r10,full_out_link4_vc4_r10,

full_out_link1_vc1_r11,full_out_link1_vc2_r11,full_out_link1_vc3_r11,full_out_link1_vc4_r11,
full_out_link2_vc1_r11,full_out_link2_vc2_r11,full_out_link2_vc3_r11,full_out_link2_vc4_r11,
full_out_link3_vc1_r11,full_out_link3_vc2_r11,full_out_link3_vc3_r11,full_out_link3_vc4_r11,
full_out_link4_vc1_r11,full_out_link4_vc2_r11,full_out_link4_vc3_r11,full_out_link4_vc4_r11,

full_out_link1_vc1_r12,full_out_link1_vc2_r12,full_out_link1_vc3_r12,full_out_link1_vc4_r12,
full_out_link2_vc1_r12,full_out_link2_vc2_r12,full_out_link2_vc3_r12,full_out_link2_vc4_r12,
full_out_link3_vc1_r12,full_out_link3_vc2_r12,full_out_link3_vc3_r12,full_out_link3_vc4_r12,
full_out_link4_vc1_r12,full_out_link4_vc2_r12,full_out_link4_vc3_r12,full_out_link4_vc4_r12;

wire temp_outval2_r2,
temp_outval2_r3,
temp_outval1_r10,
temp_outval1_r11,
temp_outval4_r5,
temp_outval3_r8,
temp_outval2_r1, temp_outval4_r1,
temp_outval2_r4, temp_outval3_r4,
temp_outval4_r9, temp_outval1_r9,
temp_outval1_r12, temp_outval3_r12;
wire false_val2_1_r2,
false_val2_1_r3,
false_val1_1_r10,
false_val1_1_r11,
false_val4_1_r5,
false_val3_1_r8,
false_val2_2_r2,
false_val2_2_r3,
false_val1_2_r10,
false_val1_2_r11,
false_val4_2_r5,
false_val3_2_r8,
false_val2_3_r2,
false_val2_3_r3,
false_val1_3_r10,
false_val1_3_r11,
false_val4_3_r5,
false_val3_3_r8,
false_val2_4_r2,
false_val2_4_r3,
false_val1_4_r10,
false_val1_4_r11,
false_val4_4_r5,
false_val3_4_r8;
wire false_val2_1_r1, false_val4_1_r1,
false_val2_1_r4, false_val3_1_r4,
false_val1_1_r9, false_val4_1_r9,
false_val1_1_r12, false_val3_1_r12;
wire false_val2_2_r1, false_val4_2_r1,
false_val2_2_r4, false_val3_2_r4,
false_val1_2_r9, false_val4_2_r9,
false_val1_2_r12, false_val3_2_r12;
wire false_val2_3_r1, false_val4_3_r1,
false_val2_3_r4, false_val3_3_r4,
false_val1_3_r9, false_val4_3_r9,
false_val1_3_r12, false_val3_3_r12;
wire false_val2_4_r1, false_val4_4_r1,
false_val2_4_r4, false_val3_4_r4,
false_val1_4_r9, false_val4_4_r9,
false_val1_4_r12, false_val3_4_r12;



assign full_in_core_vc1_r1 =0; 
assign full_in_core_vc2_r1 =0; 
assign full_in_core_vc3_r1 =0; 
assign full_in_core_vc4_r1 =0; 
assign full_in_core_vc1_r2 =0; 
assign full_in_core_vc2_r2 =0; 
assign full_in_core_vc3_r2 =0; 
assign full_in_core_vc4_r2 =0; 
assign full_in_core_vc1_r3 =0; 
assign full_in_core_vc2_r3 =0; 
assign full_in_core_vc3_r3 =0; 
assign full_in_core_vc4_r3 =0; 
assign full_in_core_vc1_r4 =0; 
assign full_in_core_vc2_r4 =0; 
assign full_in_core_vc3_r4 =0; 
assign full_in_core_vc4_r4 =0; 
assign full_in_core_vc1_r5 =0; 
assign full_in_core_vc2_r5 =0; 
assign full_in_core_vc3_r5 =0; 
assign full_in_core_vc4_r5 =0; 
assign full_in_core_vc1_r6 =0; 
assign full_in_core_vc2_r6 =0; 
assign full_in_core_vc3_r6 =0; 
assign full_in_core_vc4_r6 =0;
assign full_in_core_vc1_r7 =0; 
assign full_in_core_vc2_r7 =0; 
assign full_in_core_vc3_r7 =0; 
assign full_in_core_vc4_r7 =0; 
assign full_in_core_vc1_r8 =0; 
assign full_in_core_vc2_r8 =0; 
assign full_in_core_vc3_r8 =0; 
assign full_in_core_vc4_r8 =0; 
assign full_in_core_vc1_r9 =0; 
assign full_in_core_vc2_r9 =0; 
assign full_in_core_vc3_r9 =0; 
assign full_in_core_vc4_r9 =0; 
assign full_in_core_vc1_r10 =0; 
assign full_in_core_vc2_r10 =0; 
assign full_in_core_vc3_r10 =0; 
assign full_in_core_vc4_r10 =0; 
assign full_in_core_vc1_r11 =0; 
assign full_in_core_vc2_r11 =0; 
assign full_in_core_vc3_r11 =0; 
assign full_in_core_vc4_r11 =0; 
assign full_in_core_vc1_r12 =0; 
assign full_in_core_vc2_r12 =0; 
assign full_in_core_vc3_r12 =0; 
assign full_in_core_vc4_r12 =0; 



top_module r6(
.data_in_link1(data_out_link2_r10),
.data_in_link2(data_out_link1_r2),
.data_in_link3(data_out_link4_r7),
.data_in_link4(data_out_link3_r5),
.data_in_core(data_in_core_r6),
.clk(clk),
.clr(clr),
.current_address(8'h11),
.full_in_link1_vc1(full_out_link2_vc1_r10),
.full_in_link1_vc2(full_out_link2_vc2_r10),
.full_in_link1_vc3(full_out_link2_vc3_r10),
.full_in_link1_vc4(full_out_link2_vc4_r10),

.full_in_link2_vc1(full_out_link1_vc1_r2),
.full_in_link2_vc2(full_out_link1_vc2_r2),
.full_in_link2_vc3(full_out_link1_vc3_r2),
.full_in_link2_vc4(full_out_link1_vc4_r2),

.full_in_link3_vc1(full_out_link4_vc1_r7),
.full_in_link3_vc2(full_out_link4_vc2_r7),
.full_in_link3_vc3(full_out_link4_vc3_r7),
.full_in_link3_vc4(full_out_link4_vc4_r7),

.full_in_link4_vc1(full_out_link3_vc1_r5),
.full_in_link4_vc2(full_out_link3_vc2_r5),
.full_in_link4_vc3(full_out_link3_vc3_r5),
.full_in_link4_vc4(full_out_link3_vc4_r5),

.full_in_core_vc1(full_in_core_vc1_r6),
.full_in_core_vc2(full_in_core_vc2_r6),
.full_in_core_vc3(full_in_core_vc3_r6),
.full_in_core_vc4(full_in_core_vc4_r6),
.data_out_link1(data_out_link1_r6),
.data_out_link2(data_out_link2_r6),
.data_out_link3(data_out_link3_r6),
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

top_module r7(
.data_in_link1(data_out_link2_r11),
.data_in_link2(data_out_link1_r3),
.data_in_link3(data_out_link4_r8),
.data_in_link4(data_out_link3_r6),
.data_in_core(data_in_core_r7),
.clk(clk),
.clr(clr),
.current_address(8'h12),
.full_in_link1_vc1(full_out_link2_vc1_r11),
.full_in_link1_vc2(full_out_link2_vc2_r11),
.full_in_link1_vc3(full_out_link2_vc3_r11),
.full_in_link1_vc4(full_out_link2_vc4_r11),

.full_in_link2_vc1(full_out_link1_vc1_r3),
.full_in_link2_vc2(full_out_link1_vc2_r3),
.full_in_link2_vc3(full_out_link1_vc3_r3),
.full_in_link2_vc4(full_out_link1_vc4_r3),

.full_in_link3_vc1(full_out_link4_vc1_r8),
.full_in_link3_vc2(full_out_link4_vc2_r8),
.full_in_link3_vc3(full_out_link4_vc3_r8),
.full_in_link3_vc4(full_out_link4_vc4_r8),

.full_in_link4_vc1(full_out_link3_vc1_r6),
.full_in_link4_vc2(full_out_link3_vc2_r6),
.full_in_link4_vc3(full_out_link3_vc3_r6),
.full_in_link4_vc4(full_out_link3_vc4_r6),

.full_in_core_vc1(full_in_core_vc1_r7),
.full_in_core_vc2(full_in_core_vc2_r7),
.full_in_core_vc3(full_in_core_vc3_r7),
.full_in_core_vc4(full_in_core_vc4_r7),
.data_out_link1(data_out_link1_r7),
.data_out_link2(data_out_link2_r7),
.data_out_link3(data_out_link3_r7),
.data_out_link4(data_out_link4_r7),

.data_out_core(data_out_core_r7),

.full_out_link1_vc1(full_out_link1_vc1_r7),
.full_out_link1_vc2(full_out_link1_vc2_r7),
.full_out_link1_vc3(full_out_link1_vc3_r7),
.full_out_link1_vc4(full_out_link1_vc4_r7),

.full_out_link2_vc1(full_out_link2_vc1_r7),
.full_out_link2_vc2(full_out_link2_vc2_r7),
.full_out_link2_vc3(full_out_link2_vc3_r7),
.full_out_link2_vc4(full_out_link2_vc4_r7),

.full_out_link3_vc1(full_out_link3_vc1_r7),
.full_out_link3_vc2(full_out_link3_vc2_r7),
.full_out_link3_vc3(full_out_link3_vc3_r7),
.full_out_link3_vc4(full_out_link3_vc4_r7),

.full_out_link4_vc1(full_out_link4_vc1_r7),
.full_out_link4_vc2(full_out_link4_vc2_r7),
.full_out_link4_vc3(full_out_link4_vc3_r7),
.full_out_link4_vc4(full_out_link4_vc4_r7),

.full_out_core_vc1(full_out_core_vc1_r7),
.full_out_core_vc2(full_out_core_vc2_r7),
.full_out_core_vc3(full_out_core_vc3_r7),
.full_out_core_vc4(full_out_core_vc4_r7)
);

top_module r2(
.data_in_link1(data_out_link2_r6),
.data_in_link2(32'b01100000000000000000000000000000),
.data_in_link3(data_out_link4_r3),
.data_in_link4(data_out_link3_r1),
.data_in_core(data_in_core_r2),
.clk(clk),
.clr(clr),
.current_address(8'h01),
.full_in_link1_vc1(full_out_link2_vc1_r6),
.full_in_link1_vc2(full_out_link2_vc2_r6),
.full_in_link1_vc3(full_out_link2_vc3_r6),
.full_in_link1_vc4(full_out_link2_vc4_r6),

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

top_module r3(
.data_in_link1(data_out_link2_r7),
.data_in_link2(32'b01100000000000000000000000000000),
.data_in_link3(data_out_link4_r4),
.data_in_link4(data_out_link3_r2),
.data_in_core(data_in_core_r3),
.clk(clk),
.clr(clr),
.current_address(8'h02),
.full_in_link1_vc1(full_out_link2_vc1_r7),
.full_in_link1_vc2(full_out_link2_vc2_r7),
.full_in_link1_vc3(full_out_link2_vc3_r7),
.full_in_link1_vc4(full_out_link2_vc4_r7),

.full_in_link2_vc1(gnd),
.full_in_link2_vc2(gnd),
.full_in_link2_vc3(gnd),
.full_in_link2_vc4(gnd),

.full_in_link3_vc1(full_out_link4_vc1_r4),
.full_in_link3_vc2(full_out_link4_vc2_r4),
.full_in_link3_vc3(full_out_link4_vc3_r4),
.full_in_link3_vc4(full_out_link4_vc4_r4),

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
.data_out_link3(data_out_link3_r3),
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

top_module r10(
.data_in_link1(32'b01100000000000000000000000000000),
.data_in_link2(data_out_link1_r6),
.data_in_link3(data_out_link4_r11),
.data_in_link4(data_out_link3_r9),
.data_in_core(data_in_core_r10),
.clk(clk),
.clr(clr),
.current_address(8'h21),
.full_in_link1_vc1(gnd),
.full_in_link1_vc2(gnd),
.full_in_link1_vc3(gnd),
.full_in_link1_vc4(gnd),

.full_in_link2_vc1(full_out_link1_vc1_r6),
.full_in_link2_vc2(full_out_link1_vc2_r6),
.full_in_link2_vc3(full_out_link1_vc3_r6),
.full_in_link2_vc4(full_out_link1_vc4_r6),

.full_in_link3_vc1(full_out_link4_vc1_r11),
.full_in_link3_vc2(full_out_link4_vc2_r11),
.full_in_link3_vc3(full_out_link4_vc3_r11),
.full_in_link3_vc4(full_out_link4_vc4_r11),

.full_in_link4_vc1(full_out_link3_vc1_r9),
.full_in_link4_vc2(full_out_link3_vc2_r9),
.full_in_link4_vc3(full_out_link3_vc3_r9),
.full_in_link4_vc4(full_out_link3_vc4_r9),

.full_in_core_vc1(full_in_core_vc1_r10),
.full_in_core_vc2(full_in_core_vc2_r10),
.full_in_core_vc3(full_in_core_vc3_r10),
.full_in_core_vc4(full_in_core_vc4_r10),
.data_out_link1(data_out_link1),
.data_out_link2(data_out_link2_r10),
.data_out_link3(data_out_link3_r10),
.data_out_link4(data_out_link4_r10),

.data_out_core(data_out_core_r10),

.full_out_link1_vc1(full_out_link1_vc1_r10),
.full_out_link1_vc2(full_out_link1_vc2_r10),
.full_out_link1_vc3(full_out_link1_vc3_r10),
.full_out_link1_vc4(full_out_link1_vc4_r10),

.full_out_link2_vc1(full_out_link2_vc1_r10),
.full_out_link2_vc2(full_out_link2_vc2_r10),
.full_out_link2_vc3(full_out_link2_vc3_r10),
.full_out_link2_vc4(full_out_link2_vc4_r10),

.full_out_link3_vc1(full_out_link3_vc1_r10),
.full_out_link3_vc2(full_out_link3_vc2_r10),
.full_out_link3_vc3(full_out_link3_vc3_r10),
.full_out_link3_vc4(full_out_link3_vc4_r10),

.full_out_link4_vc1(full_out_link4_vc1_r10),
.full_out_link4_vc2(full_out_link4_vc2_r10),
.full_out_link4_vc3(full_out_link4_vc3_r10),
.full_out_link4_vc4(full_out_link4_vc4_r10),

.full_out_core_vc1(full_out_core_vc1_r10),
.full_out_core_vc2(full_out_core_vc2_r10),
.full_out_core_vc3(full_out_core_vc3_r10),
.full_out_core_vc4(full_out_core_vc4_r10)
);

top_module r11(
.data_in_link1(32'b01100000000000000000000000000000),
.data_in_link2(data_out_link1_r7),
.data_in_link3(data_out_link4_r12),
.data_in_link4(data_out_link3_r10),
.data_in_core(data_in_core_r11),
.clk(clk),
.clr(clr),
.current_address(8'h22),
.full_in_link1_vc1(gnd),
.full_in_link1_vc2(gnd),
.full_in_link1_vc3(gnd),
.full_in_link1_vc4(gnd),

.full_in_link2_vc1(full_out_link1_vc1_r7),
.full_in_link2_vc2(full_out_link1_vc2_r7),
.full_in_link2_vc3(full_out_link1_vc3_r7),
.full_in_link2_vc4(full_out_link1_vc4_r7),

.full_in_link3_vc1(full_out_link4_vc1_r12),
.full_in_link3_vc2(full_out_link4_vc2_r12),
.full_in_link3_vc3(full_out_link4_vc3_r12),
.full_in_link3_vc4(full_out_link4_vc4_r12),

.full_in_link4_vc1(full_out_link3_vc1_r10),
.full_in_link4_vc2(full_out_link3_vc2_r10),
.full_in_link4_vc3(full_out_link3_vc3_r10),
.full_in_link4_vc4(full_out_link3_vc4_r10),

.full_in_core_vc1(full_in_core_vc1_r11),
.full_in_core_vc2(full_in_core_vc2_r11),
.full_in_core_vc3(full_in_core_vc3_r11),
.full_in_core_vc4(full_in_core_vc4_r11),
.data_out_link1(data_out_link1),
.data_out_link2(data_out_link2_r11),
.data_out_link3(data_out_link3_r11),
.data_out_link4(data_out_link4_r11),

.data_out_core(data_out_core_r11),

.full_out_link1_vc1(full_out_link1_vc1_r11),
.full_out_link1_vc2(full_out_link1_vc2_r11),
.full_out_link1_vc3(full_out_link1_vc3_r11),
.full_out_link1_vc4(full_out_link1_vc4_r11),

.full_out_link2_vc1(full_out_link2_vc1_r11),
.full_out_link2_vc2(full_out_link2_vc2_r11),
.full_out_link2_vc3(full_out_link2_vc3_r11),
.full_out_link2_vc4(full_out_link2_vc4_r11),

.full_out_link3_vc1(full_out_link3_vc1_r11),
.full_out_link3_vc2(full_out_link3_vc2_r11),
.full_out_link3_vc3(full_out_link3_vc3_r11),
.full_out_link3_vc4(full_out_link3_vc4_r11),

.full_out_link4_vc1(full_out_link4_vc1_r11),
.full_out_link4_vc2(full_out_link4_vc2_r11),
.full_out_link4_vc3(full_out_link4_vc3_r11),
.full_out_link4_vc4(full_out_link4_vc4_r11),

.full_out_core_vc1(full_out_core_vc1_r11),
.full_out_core_vc2(full_out_core_vc2_r11),
.full_out_core_vc3(full_out_core_vc3_r11),
.full_out_core_vc4(full_out_core_vc4_r11)
);

top_module r5(
.data_in_link1(data_out_link2_r9),
.data_in_link2(data_out_link1_r1),
.data_in_link3(data_out_link4_r6),
.data_in_link4(32'b01100000000000000000000000000000),
.data_in_core(data_in_core_r5),
.clk(clk),
.clr(clr),
.current_address(8'h10),
.full_in_link1_vc1(full_out_link2_vc1_r9),
.full_in_link1_vc2(full_out_link2_vc2_r9),
.full_in_link1_vc3(full_out_link2_vc3_r9),
.full_in_link1_vc4(full_out_link2_vc4_r9),

.full_in_link2_vc1(full_out_link1_vc1_r1),
.full_in_link2_vc2(full_out_link1_vc2_r1),
.full_in_link2_vc3(full_out_link1_vc3_r1),
.full_in_link2_vc4(full_out_link1_vc4_r1),

.full_in_link3_vc1(full_out_link4_vc1_r6),
.full_in_link3_vc2(full_out_link4_vc2_r6),
.full_in_link3_vc3(full_out_link4_vc3_r6),
.full_in_link3_vc4(full_out_link4_vc4_r6),

.full_in_link4_vc1(gnd),
.full_in_link4_vc2(gnd),
.full_in_link4_vc3(gnd),
.full_in_link4_vc4(gnd),

.full_in_core_vc1(full_in_core_vc1_r5),
.full_in_core_vc2(full_in_core_vc2_r5),
.full_in_core_vc3(full_in_core_vc3_r5),
.full_in_core_vc4(full_in_core_vc4_r5),
.data_out_link1(data_out_link1_r5),
.data_out_link2(data_out_link2_r5),
.data_out_link3(data_out_link3_r5),
.data_out_link4(data_out_link4),

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

top_module r8(
.data_in_link1(data_out_link2_r12),
.data_in_link2(data_out_link1_r4),
.data_in_link3(32'b01100000000000000000000000000000),
.data_in_link4(data_out_link3_r7),
.data_in_core(data_in_core_r8),
.clk(clk),
.clr(clr),
.current_address(8'h13),
.full_in_link1_vc1(full_out_link2_vc1_r12),
.full_in_link1_vc2(full_out_link2_vc2_r12),
.full_in_link1_vc3(full_out_link2_vc3_r12),
.full_in_link1_vc4(full_out_link2_vc4_r12),

.full_in_link2_vc1(full_out_link1_vc1_r4),
.full_in_link2_vc2(full_out_link1_vc2_r4),
.full_in_link2_vc3(full_out_link1_vc3_r4),
.full_in_link2_vc4(full_out_link1_vc4_r4),

.full_in_link3_vc1(gnd),
.full_in_link3_vc2(gnd),
.full_in_link3_vc3(gnd),
.full_in_link3_vc4(gnd),

.full_in_link4_vc1(full_out_link3_vc1_r7),
.full_in_link4_vc2(full_out_link3_vc2_r7),
.full_in_link4_vc3(full_out_link3_vc3_r7),
.full_in_link4_vc4(full_out_link3_vc4_r7),

.full_in_core_vc1(full_in_core_vc1_r8),
.full_in_core_vc2(full_in_core_vc2_r8),
.full_in_core_vc3(full_in_core_vc3_r8),
.full_in_core_vc4(full_in_core_vc4_r8),
.data_out_link1(data_out_link1_r8),
.data_out_link2(data_out_link2_r8),
.data_out_link3(data_out_link3),
.data_out_link4(data_out_link4_r8),

.data_out_core(data_out_core_r8),

.full_out_link1_vc1(full_out_link1_vc1_r8),
.full_out_link1_vc2(full_out_link1_vc2_r8),
.full_out_link1_vc3(full_out_link1_vc3_r8),
.full_out_link1_vc4(full_out_link1_vc4_r8),

.full_out_link2_vc1(full_out_link2_vc1_r8),
.full_out_link2_vc2(full_out_link2_vc2_r8),
.full_out_link2_vc3(full_out_link2_vc3_r8),
.full_out_link2_vc4(full_out_link2_vc4_r8),

.full_out_link3_vc1(full_out_link3_vc1_r8),
.full_out_link3_vc2(full_out_link3_vc2_r8),
.full_out_link3_vc3(full_out_link3_vc3_r8),
.full_out_link3_vc4(full_out_link3_vc4_r8),

.full_out_link4_vc1(full_out_link4_vc1_r8),
.full_out_link4_vc2(full_out_link4_vc2_r8),
.full_out_link4_vc3(full_out_link4_vc3_r8),
.full_out_link4_vc4(full_out_link4_vc4_r8),

.full_out_core_vc1(full_out_core_vc1_r8),
.full_out_core_vc2(full_out_core_vc2_r8),
.full_out_core_vc3(full_out_core_vc3_r8),
.full_out_core_vc4(full_out_core_vc4_r8)
);

top_module r1(
.data_in_link1(data_out_link2_r5),
.data_in_link2(32'b01100000000000000000000000000000),
.data_in_link3(data_out_link4_r2),
.data_in_link4(32'b01100000000000000000000000000000),
.data_in_core(data_in_core_r1),
.clk(clk),
.clr(clr),
.current_address(8'h00),
.full_in_link1_vc1(full_out_link2_vc1_r5),
.full_in_link1_vc2(full_out_link2_vc2_r5),
.full_in_link1_vc3(full_out_link2_vc3_r5),
.full_in_link1_vc4(full_out_link2_vc4_r5),
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
.full_out_link4_vc1(full_out_link4_vc1),
.full_out_link4_vc2(full_out_link4_vc2),
.full_out_link4_vc3(full_out_link4_vc3),
.full_out_link4_vc4(full_out_link4_vc4),
.full_out_core_vc1(full_out_core_vc1_r1),
.full_out_core_vc2(full_out_core_vc2_r1),
.full_out_core_vc3(full_out_core_vc3_r1),
.full_out_core_vc4(full_out_core_vc4_r1)
);

top_module r4(
.data_in_link1(data_out_link2_r8),
.data_in_link2(32'b01100000000000000000000000000000),
.data_in_link3(32'b01100000000000000000000000000000),
.data_in_link4(data_out_link3_r3),
.data_in_core(data_in_core_r4),
.clk(clk),
.clr(clr),
.current_address(8'h03),
.full_in_link1_vc1(full_out_link2_vc1_r8),
.full_in_link1_vc2(full_out_link2_vc2_r8),
.full_in_link1_vc3(full_out_link2_vc3_r8),
.full_in_link1_vc4(full_out_link2_vc4_r8),
.full_in_link2_vc1(gnd),
.full_in_link2_vc2(gnd),
.full_in_link2_vc3(gnd),
.full_in_link2_vc4(gnd),
.full_in_link3_vc1(gnd),
.full_in_link3_vc2(gnd),
.full_in_link3_vc3(gnd),
.full_in_link3_vc4(gnd),
.full_in_link4_vc1(full_out_link3_vc1_r3),
.full_in_link4_vc2(full_out_link3_vc2_r3),
.full_in_link4_vc3(full_out_link3_vc3_r3),
.full_in_link4_vc4(full_out_link3_vc4_r3),
.full_in_core_vc1(full_in_core_vc1_r4),
.full_in_core_vc2(full_in_core_vc2_r4),
.full_in_core_vc3(full_in_core_vc3_r4),
.full_in_core_vc4(full_in_core_vc4_r4),
.data_out_link1(data_out_link1_r4),
.data_out_link2(data_out_link2),
.data_out_link3(data_out_link3),
.data_out_link4(data_out_link4_r4),


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

top_module r9(
.data_in_link1(32'b01100000000000000000000000000000),
.data_in_link2(data_out_link1_r5),
.data_in_link3(data_out_link4_r10),
.data_in_link4(32'b01100000000000000000000000000000),
.data_in_core(data_in_core_r9),
.clk(clk),
.clr(clr),
.current_address(8'h20),
.full_in_link1_vc1(gnd),
.full_in_link1_vc2(gnd),
.full_in_link1_vc3(gnd),
.full_in_link1_vc4(gnd),
.full_in_link2_vc1(full_out_link1_vc1_r5),
.full_in_link2_vc2(full_out_link1_vc2_r5),
.full_in_link2_vc3(full_out_link1_vc3_r5),
.full_in_link2_vc4(full_out_link1_vc4_r5),
.full_in_link3_vc1(full_out_link4_vc1_r10),
.full_in_link3_vc2(full_out_link4_vc2_r10),
.full_in_link3_vc3(full_out_link4_vc3_r10),
.full_in_link3_vc4(full_out_link4_vc4_r10),
.full_in_link4_vc1(gnd),
.full_in_link4_vc2(gnd),
.full_in_link4_vc3(gnd),
.full_in_link4_vc4(gnd),
.full_in_core_vc1(full_in_core_vc1_r9),
.full_in_core_vc2(full_in_core_vc2_r9),
.full_in_core_vc3(full_in_core_vc3_r9),
.full_in_core_vc4(full_in_core_vc4_r9),
.data_out_link1(data_out_link1),
.data_out_link2(data_out_link2_r9),
.data_out_link3(data_out_link3_r9),
.data_out_link4(data_out_link4),


.data_out_core(data_out_core_r9),

.full_out_link1_vc1(full_out_link1_vc1_r9),
.full_out_link1_vc2(full_out_link1_vc2_r9),
.full_out_link1_vc3(full_out_link1_vc3_r9),
.full_out_link1_vc4(full_out_link1_vc4_r9),
.full_out_link2_vc1(full_out_link2_vc1_r9),
.full_out_link2_vc2(full_out_link2_vc2_r9),
.full_out_link2_vc3(full_out_link2_vc3_r9),
.full_out_link2_vc4(full_out_link2_vc4_r9),
.full_out_link3_vc1(full_out_link3_vc1_r9),
.full_out_link3_vc2(full_out_link3_vc2_r9),
.full_out_link3_vc3(full_out_link3_vc3_r9),
.full_out_link3_vc4(full_out_link3_vc4_r9),
.full_out_link4_vc1(full_out_link4_vc1_r9),
.full_out_link4_vc2(full_out_link4_vc2_r9),
.full_out_link4_vc3(full_out_link4_vc3_r9),
.full_out_link4_vc4(full_out_link4_vc4_r9),
.full_out_core_vc1(full_out_core_vc1_r9),
.full_out_core_vc2(full_out_core_vc2_r9),
.full_out_core_vc3(full_out_core_vc3_r9),
.full_out_core_vc4(full_out_core_vc4_r9)
);

top_module r12(
.data_in_link1(32'b01100000000000000000000000000000),
.data_in_link2(data_out_link1_r8),
.data_in_link3(32'b01100000000000000000000000000000),
.data_in_link4(data_out_link3_r11),
.data_in_core(data_in_core_r12),
.clk(clk),
.clr(clr),
.current_address(8'h23),
.full_in_link1_vc1(gnd),
.full_in_link1_vc2(gnd),
.full_in_link1_vc3(gnd),
.full_in_link1_vc4(gnd),
.full_in_link2_vc1(full_out_link1_vc1_r8),
.full_in_link2_vc2(full_out_link1_vc2_r8),
.full_in_link2_vc3(full_out_link1_vc3_r8),
.full_in_link2_vc4(full_out_link1_vc4_r8),
.full_in_link3_vc1(gnd),
.full_in_link3_vc2(gnd),
.full_in_link3_vc3(gnd),
.full_in_link3_vc4(gnd),
.full_in_link4_vc1(full_out_link3_vc1_r11),
.full_in_link4_vc2(full_out_link3_vc2_r11),
.full_in_link4_vc3(full_out_link3_vc3_r11),
.full_in_link4_vc4(full_out_link3_vc4_r11),
.full_in_core_vc1(full_in_core_vc1_r12),
.full_in_core_vc2(full_in_core_vc2_r12),
.full_in_core_vc3(full_in_core_vc3_r12),
.full_in_core_vc4(full_in_core_vc4_r12),
.data_out_link1(data_out_link1),
.data_out_link2(data_out_link2_r12),
.data_out_link3(data_out_link3),
.data_out_link4(data_out_link4_r12),


.data_out_core(data_out_core_r12),

.full_out_link1_vc1(full_out_link1_vc1_r12),
.full_out_link1_vc2(full_out_link1_vc2_r12),
.full_out_link1_vc3(full_out_link1_vc3_r12),
.full_out_link1_vc4(full_out_link1_vc4_r12),
.full_out_link2_vc1(full_out_link2_vc1_r12),
.full_out_link2_vc2(full_out_link2_vc2_r12),
.full_out_link2_vc3(full_out_link2_vc3_r12),
.full_out_link2_vc4(full_out_link2_vc4_r12),
.full_out_link3_vc1(full_out_link3_vc1_r12),
.full_out_link3_vc2(full_out_link3_vc2_r12),
.full_out_link3_vc3(full_out_link3_vc3_r12),
.full_out_link3_vc4(full_out_link3_vc4_r12),
.full_out_link4_vc1(full_out_link4_vc1_r12),
.full_out_link4_vc2(full_out_link4_vc2_r12),
.full_out_link4_vc3(full_out_link4_vc3_r12),
.full_out_link4_vc4(full_out_link4_vc4_r12),
.full_out_core_vc1(full_out_core_vc1_r12),
.full_out_core_vc2(full_out_core_vc2_r12),
.full_out_core_vc3(full_out_core_vc3_r12),
.full_out_core_vc4(full_out_core_vc4_r12)
);


endmodule
