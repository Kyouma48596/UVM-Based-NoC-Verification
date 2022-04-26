`timescale 1ns/1ps
module tb_top;

	import uvm_pkg::*;
	`include "uvm_macros.svh"
	import noc_pkg::*;
	bit[7:0] arr[string];
	logic clr;
	noc_if vif();

	`ifdef 2x2
	top_2x2_router u_top_2x2_router(
		.clk(vif.clk),
		.clr(vif.clr),
		.data_in_core_r1(vif.data_in[0]),
		.data_in_core_r2(vif.data_in[1]),
		.data_in_core_r3(vif.data_in[2]),
		.data_in_core_r4(vif.data_in[3]),
		.data_out_core_r1(vif.data_out[0]),
		.data_out_core_r2(vif.data_out[1]),
		.data_out_core_r3(vif.data_out[2]),
		.data_out_core_r4(vif.data_out[3])
	);
	`endif
	`ifdef 2x3
	top_2x3_router u_top_2x3_router(
        .clk(vif.clk),
		.clr(vif.clr),
		.data_in_core_r1(vif.data_in[0]),
		.data_in_core_r2(vif.data_in[1]),
		.data_in_core_r3(vif.data_in[2]),
		.data_in_core_r4(vif.data_in[3]),
		.data_in_core_r5(vif.data_in[4]),
		.data_in_core_r6(vif.data_in[5]),
		.data_out_core_r1(vif.data_out[0]),
		.data_out_core_r2(vif.data_out[1]),
		.data_out_core_r3(vif.data_out[2]),
		.data_out_core_r4(vif.data_out[3]),
		.data_out_core_r5(vif.data_out[4]),
		.data_out_core_r6(vif.data_out[5])
    );
    `endif
    `ifdef 3x3
    top_3x3_router u_top_3x3_router(
        .clk(vif.clk),
		.clr(vif.clr),
		.data_in_core_r1(vif.data_in[0]),
		.data_in_core_r2(vif.data_in[1]),
		.data_in_core_r3(vif.data_in[2]),
		.data_in_core_r4(vif.data_in[3]),
		.data_in_core_r5(vif.data_in[4]),
		.data_in_core_r6(vif.data_in[5]),
		.data_in_core_r7(vif.data_in[6]),
		.data_in_core_r8(vif.data_in[7]),
		.data_in_core_r9(vif.data_in[8]),
		.data_out_core_r1(vif.data_out[0]),
		.data_out_core_r2(vif.data_out[1]),
		.data_out_core_r3(vif.data_out[2]),
		.data_out_core_r4(vif.data_out[3]),
		.data_out_core_r5(vif.data_out[4]),
		.data_out_core_r6(vif.data_out[5]),
		.data_out_core_r7(vif.data_out[6]),
		.data_out_core_r8(vif.data_out[7]),
		.data_out_core_r9(vif.data_out[8])
    );
    `endif
    `ifdef 3x4
 	top_3x4_router u_top_3x4_router(
		.clk(vif.clk),
		.clr(vif.clr),
		.data_in_core_r1(vif.data_in[0]),
		.data_in_core_r2(vif.data_in[1]),
		.data_in_core_r3(vif.data_in[2]),
		.data_in_core_r4(vif.data_in[3]),
		.data_in_core_r5(vif.data_in[4]),
		.data_in_core_r6(vif.data_in[5]),
		.data_in_core_r7(vif.data_in[6]),
		.data_in_core_r8(vif.data_in[7]),
		.data_in_core_r9(vif.data_in[8]),
		.data_in_core_r10(vif.data_in[9]),
		.data_in_core_r11(vif.data_in[10]),
		.data_in_core_r12(vif.data_in[11]),
		.data_out_core_r1(vif.data_out[0]),
		.data_out_core_r2(vif.data_out[1]),
		.data_out_core_r3(vif.data_out[2]),
		.data_out_core_r4(vif.data_out[3]),
		.data_out_core_r5(vif.data_out[4]),
		.data_out_core_r6(vif.data_out[5]),
		.data_out_core_r7(vif.data_out[6]),
		.data_out_core_r8(vif.data_out[7]),
		.data_out_core_r9(vif.data_out[8]),
		.data_out_core_r10(vif.data_out[9]),
		.data_out_core_r11(vif.data_out[10]),
		.data_out_core_r12(vif.data_out[11])
    );
 	`endif
 	`ifdef 4x4
	top_4x4_router u_top_4x4_router(
        .clk(vif.clk),
		.clr(vif.clr),
		.data_in_core_r1(vif.data_in[0]),
		.data_in_core_r2(vif.data_in[1]),
		.data_in_core_r3(vif.data_in[2]),
		.data_in_core_r4(vif.data_in[3]),
		.data_in_core_r5(vif.data_in[4]),
		.data_in_core_r6(vif.data_in[5]),
		.data_in_core_r7(vif.data_in[6]),
		.data_in_core_r8(vif.data_in[7]),
		.data_in_core_r9(vif.data_in[8]),
		.data_in_core_r10(vif.data_in[9]),
		.data_in_core_r11(vif.data_in[10]),
		.data_in_core_r12(vif.data_in[11]),
		.data_in_core_r13(vif.data_in[12]),
		.data_in_core_r14(vif.data_in[13]),
		.data_in_core_r15(vif.data_in[14]),
		.data_in_core_r16(vif.data_in[15]),
		.data_out_core_r1(vif.data_out[0]),
		.data_out_core_r2(vif.data_out[1]),
		.data_out_core_r3(vif.data_out[2]),
		.data_out_core_r4(vif.data_out[3]),
		.data_out_core_r5(vif.data_out[4]),
		.data_out_core_r6(vif.data_out[5]),
		.data_out_core_r7(vif.data_out[6]),
		.data_out_core_r8(vif.data_out[7]),
		.data_out_core_r9(vif.data_out[8]),
		.data_out_core_r10(vif.data_out[9]),
		.data_out_core_r11(vif.data_out[10]),
		.data_out_core_r12(vif.data_out[11]),
		.data_out_core_r13(vif.data_out[12]),
		.data_out_core_r14(vif.data_out[13]),
		.data_out_core_r15(vif.data_out[14]),
		.data_out_core_r16(vif.data_out[15])
    );
	`endif
	// `ifdef 8x8
	// top_8x8_router(
	// 	.clk(vif.clk),
	// 	.clr(vif.clr),
	// 	.data_in_core_r1(vif.data_in[0]),
	// 	.data_in_core_r2(vif.data_in[1]),
	// 	.data_in_core_r3(vif.data_in[2]),
	// 	.data_in_core_r4(vif.data_in[3]),
	// 	.data_in_core_r5(vif.data_in[4]),
	// 	.data_in_core_r6(vif.data_in[5]),
	// 	.data_in_core_r7(vif.data_in[6]),
	// 	.data_in_core_r8(vif.data_in[7]),
	// 	.data_in_core_r9(vif.data_in[8]),
	// 	.data_in_core_r10(vif.data_in[9]),
	// 	.data_in_core_r11(vif.data_in[10]),
	// 	.data_in_core_r12(vif.data_in[11]),
	// 	.data_in_core_r13(vif.data_in[12]),
	// 	.data_in_core_r14(vif.data_in[13]),
	// 	.data_in_core_r15(vif.data_in[14]),
	// 	.data_in_core_r16(vif.data_in[15]),
	// 	.data_in_core_r17(vif.data_in[16]),
	// 	.data_in_core_r2(vif.data_in[1]),
	// 	.data_in_core_r3(vif.data_in[2]),
	// 	.data_in_core_r4(vif.data_in[3]),
	// 	.data_in_core_r5(vif.data_in[4]),
	// 	.data_in_core_r6(vif.data_in[5]),
	// 	.data_in_core_r7(vif.data_in[6]),
	// 	.data_in_core_r8(vif.data_in[7]),
	// 	.data_in_core_r9(vif.data_in[8]),
	// 	.data_in_core_r10(vif.data_in[9]),
	// 	.data_in_core_r11(vif.data_in[10]),
	// 	.data_in_core_r12(vif.data_in[11]),
	// 	.data_in_core_r13(vif.data_in[12]),
	// 	.data_in_core_r14(vif.data_in[13]),
	// 	.data_in_core_r15(vif.data_in[14]),
	// 	.data_in_core_r16(vif.data_in[15]),
	// 	.data_in_core_r1(vif.data_in[0]),
	// 	.data_in_core_r2(vif.data_in[1]),
	// 	.data_in_core_r3(vif.data_in[2]),
	// 	.data_in_core_r4(vif.data_in[3]),
	// 	.data_in_core_r5(vif.data_in[4]),
	// 	.data_in_core_r6(vif.data_in[5]),
	// 	.data_in_core_r7(vif.data_in[6]),
	// 	.data_in_core_r8(vif.data_in[7]),
	// 	.data_in_core_r9(vif.data_in[8]),
	// 	.data_in_core_r10(vif.data_in[9]),
	// 	.data_in_core_r11(vif.data_in[10]),
	// 	.data_in_core_r12(vif.data_in[11]),
	// 	.data_in_core_r13(vif.data_in[12]),
	// 	.data_in_core_r14(vif.data_in[13]),
	// 	.data_in_core_r15(vif.data_in[14]),
	// 	.data_in_core_r16(vif.data_in[15]),
	// 	.data_in_core_r1(vif.data_in[0]),
	// 	.data_in_core_r2(vif.data_in[1]),
	// 	.data_in_core_r3(vif.data_in[2]),
	// 	.data_in_core_r4(vif.data_in[3]),
	// 	.data_in_core_r5(vif.data_in[4]),
	// 	.data_in_core_r6(vif.data_in[5]),
	// 	.data_in_core_r7(vif.data_in[6]),
	// 	.data_in_core_r8(vif.data_in[7]),
	// 	.data_in_core_r9(vif.data_in[8]),
	// 	.data_in_core_r10(vif.data_in[9]),
	// 	.data_in_core_r11(vif.data_in[10]),
	// 	.data_in_core_r12(vif.data_in[11]),
	// 	.data_in_core_r13(vif.data_in[12]),
	// 	.data_in_core_r14(vif.data_in[13]),
	// 	.data_in_core_r15(vif.data_in[14]),
	// 	.data_in_core_r16(vif.data_in[15]),
	// 	.data_out_core_r1(vif.data_out[0]),
	// 	.data_out_core_r2(vif.data_out[1]),
	// 	.data_out_core_r3(vif.data_out[2]),
	// 	.data_out_core_r4(vif.data_out[3]),
	// 	.data_out_core_r5(vif.data_out[4]),
	// 	.data_out_core_r6(vif.data_out[5]),
	// 	.data_out_core_r7(vif.data_out[6]),
	// 	.data_out_core_r8(vif.data_out[7]),
	// 	.data_out_core_r9(vif.data_out[8]),
	// 	.data_out_core_r10(vif.data_out[9]),
	// 	.data_out_core_r11(vif.data_out[10]),
	// 	.data_out_core_r12(vif.data_out[11]),
	// 	.data_out_core_r13(vif.data_out[12]),
	// 	.data_out_core_r14(vif.data_out[13]),
	// 	.data_out_core_r15(vif.data_out[14]),
	// 	.data_out_core_r16(vif.data_out[15])
	// );
	
initial
	begin
		vif.clr=0;
	end

initial
	begin
		bit[7:0] a;
		for(bit[3:0] i=0; i<NO_OF_ROWS;i++) begin
			for(bit[3:0] j=0; j<NO_OF_COLUMNS;j++) begin
				arr[$sformatf("CORE%0d_ADDR",a)] = {i,j};
				a++;
			end
		end

		foreach(arr[i]) begin
			$display("arr[%s]=%h",i,arr[i]);
			noc_pkg::arr[i] = arr[i];
		end


	end
	
initial begin 
	uvm_config_db#(virtual noc_if)::set(uvm_root::get(), "*", "vif", vif);
	run_test("noc_test");
end

endmodule : tb_top