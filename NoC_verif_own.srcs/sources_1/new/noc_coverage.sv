class noc_coverage extends uvm_agent;

/*-------------------------------------------------------------------------------
-- Interface, port, fields
-------------------------------------------------------------------------------*/

uvm_tlm_analysis_fifo#(noc_pkt) in_fifo[TOTAL_CORES];
uvm_tlm_analysis_fifo#(noc_pkt) out_fifo[TOTAL_CORES];

bit[7:0] src_addr_in[TOTAL_CORES], dst_addr_in[TOTAL_CORES], src_addr_out[TOTAL_CORES], dst_addr_out[TOTAL_CORES];
bit [1:0] vc_id_in[TOTAL_CORES], vc_id_out[TOTAL_CORES];

noc_pkt txns_in[TOTAL_CORES];
noc_pkt txns_out[TOTAL_CORES];

/*-------------------------------------------------------------------------------
-- UVM Factory register
-------------------------------------------------------------------------------*/
	// Provide implementations of virtual methods such as get_type_name and create
	`uvm_component_utils(noc_coverage)

/*-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------*/

	covergroup mesh_cg_in with function sample(int index);
		//option.per_instance = 1;
		SRC_ADDR: coverpoint (src_addr_in[index]) {
		`ifdef 2x2
	        bins valid[] = {
	        					8'h00,8'h01,
	        					8'h10,8'h11
	        			   };
	      	illegal_bins ib = {[8'h02:8'h0F],[8'h12:$]};
	    `endif
	    `ifdef 2x3
	        bins valid[] = {	
	                            8'h00,8'h01,8'h02,
	                            8'h10,8'h11,8'h12
	                       };
	      	illegal_bins ib = {[8'h03:8'h0F],[8'h13:$]};
	    `endif
	    `ifdef 3x3
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,
	                            8'h10,8'h11,8'h12,
	                            8'h20,8'h21,8'h22,
	                            8'h30,8'h31,8'h32
	                       };
	     	illegal_bins ib = {[8'h03:8'h0F],[8'h13:8'h1F],[8'h23:8'h2F],[8'h33:$]};
	    `endif
	    `ifdef 3x4
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,8'h03,
	                            8'h10,8'h11,8'h12,8'h13,
	                            8'h20,8'h21,8'h22,8'h23
	                       };
	     	illegal_bins ib = {[8'h04:8'h0F],[8'h14:8'h1F],[8'h24:$]};
	    `endif
	    `ifdef 4x4
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,8'h03,
	                            8'h10,8'h11,8'h12,8'h13,
	                            8'h20,8'h21,8'h22,8'h23,
	                            8'h30,8'h31,8'h32,8'h33
	                       };
	      	illegal_bins ib = {[8'h04:8'h0F],[8'h14:8'h1F],[8'h24:8'h2F],[8'h34:$]};			
	    `endif

		 //option.weight=0;
		}
		DST_ADDR: coverpoint (dst_addr_in[index]) {
		`ifdef 2x2
	        bins valid[] = {
	        					8'h00,8'h01,
	        					8'h10,8'h11
	        			   };
	      	illegal_bins ib = {[8'h02:8'h0F],[8'h12:$]};
	    `endif
	    `ifdef 2x3
	        bins valid[] = {	
	                            8'h00,8'h01,8'h02,
	                            8'h10,8'h11,8'h12
	                       };
	      	illegal_bins ib = {[8'h03:8'h0F],[8'h13:$]};
	    `endif
	    `ifdef 3x3
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,
	                            8'h10,8'h11,8'h12,
	                            8'h20,8'h21,8'h22,
	                            8'h30,8'h31,8'h32
	                       };
	     	illegal_bins ib = {[8'h03:8'h0F],[8'h13:8'h1F],[8'h23:8'h2F],[8'h33:$]};
	    `endif
	    `ifdef 3x4
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,8'h03,
	                            8'h10,8'h11,8'h12,8'h13,
	                            8'h20,8'h21,8'h22,8'h23
	                       };
	     	illegal_bins ib = {[8'h04:8'h0F],[8'h14:8'h1F],[8'h24:$]};
	    `endif
	    `ifdef 4x4
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,8'h03,
	                            8'h10,8'h11,8'h12,8'h13,
	                            8'h20,8'h21,8'h22,8'h23,
	                            8'h30,8'h31,8'h32,8'h33
	                       };
	      	illegal_bins ib = {[8'h04:8'h0F],[8'h14:8'h1F],[8'h24:8'h2F],[8'h34:$]};			
	    `endif
	    
		 //option.weight=0;
		}
		VC_ID: coverpoint (vc_id_in[index]) {
			bins valid[] = {2'b00,2'b01,2'b10,2'b11};
			//option.weight=0;
		}
		CROSS_COV: cross DST_ADDR, SRC_ADDR {
			//illegal_bins ib = CROSS_COV with (SRC_ADDR == DST_ADDR);
		}
	endgroup

	covergroup mesh_cg_out with function sample(int index);
		//option.per_instance = 1;
		SRC_ADDR: coverpoint (src_addr_out[index]) {
		`ifdef 2x2
	        bins valid[] = {
	        					8'h00,8'h01,
	        					8'h10,8'h11
	        			   };
	      	illegal_bins ib = {[8'h02:8'h0F],[8'h12:$]};
	    `endif
	    `ifdef 2x3
	        bins valid[] = {	
	                            8'h00,8'h01,8'h02,
	                            8'h10,8'h11,8'h12
	                       };
	      	illegal_bins ib = {[8'h03:8'h0F],[8'h13:$]};
	    `endif
	    `ifdef 3x3
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,
	                            8'h10,8'h11,8'h12,
	                            8'h20,8'h21,8'h22,
	                            8'h30,8'h31,8'h32
	                       };
	     	illegal_bins ib = {[8'h03:8'h0F],[8'h13:8'h1F],[8'h23:8'h2F],[8'h33:$]};
	    `endif
	    `ifdef 3x4
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,8'h03,
	                            8'h10,8'h11,8'h12,8'h13,
	                            8'h20,8'h21,8'h22,8'h23
	                       };
	     	illegal_bins ib = {[8'h04:8'h0F],[8'h14:8'h1F],[8'h24:$]};
	    `endif
	    `ifdef 4x4
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,8'h03,
	                            8'h10,8'h11,8'h12,8'h13,
	                            8'h20,8'h21,8'h22,8'h23,
	                            8'h30,8'h31,8'h32,8'h33
	                       };
	      	illegal_bins ib = {[8'h04:8'h0F],[8'h14:8'h1F],[8'h24:8'h2F],[8'h34:$]};			
	    `endif
	    
		 //option.weight=0;
		}
		DST_ADDR: coverpoint (dst_addr_out[index]) {
		`ifdef 2x2
	        bins valid[] = {
	        					8'h00,8'h01,
	        					8'h10,8'h11
	        			   };
	      	illegal_bins ib = {[8'h02:8'h0F],[8'h12:$]};
	    `endif
	    `ifdef 2x3
	        bins valid[] = {	
	                            8'h00,8'h01,8'h02,
	                            8'h10,8'h11,8'h12
	                       };
	      	illegal_bins ib = {[8'h03:8'h0F],[8'h13:$]};
	    `endif
	    `ifdef 3x3
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,
	                            8'h10,8'h11,8'h12,
	                            8'h20,8'h21,8'h22,
	                            8'h30,8'h31,8'h32
	                       };
	     	illegal_bins ib = {[8'h03:8'h0F],[8'h13:8'h1F],[8'h23:8'h2F],[8'h33:$]};
	    `endif
	    `ifdef 3x4
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,8'h03,
	                            8'h10,8'h11,8'h12,8'h13,
	                            8'h20,8'h21,8'h22,8'h23
	                       };
	     	illegal_bins ib = {[8'h04:8'h0F],[8'h14:8'h1F],[8'h24:$]};
	    `endif
	    `ifdef 4x4
	        bins valid[] = {
	                            8'h00,8'h01,8'h02,8'h03,
	                            8'h10,8'h11,8'h12,8'h13,
	                            8'h20,8'h21,8'h22,8'h23,
	                            8'h30,8'h31,8'h32,8'h33
	                       };
	      	illegal_bins ib = {[8'h04:8'h0F],[8'h14:8'h1F],[8'h24:8'h2F],[8'h34:$]};			
	    `endif
	    
		 //option.weight=0;
		}
		VC_ID: coverpoint (vc_id_out[index]) {
			bins valid[] = {2'b00,2'b01,2'b10,2'b11};
			//option.weight=0;
		}
		CROSS_COV: cross SRC_ADDR, DST_ADDR {
			//illegal_bins ib = CROSS_COV with (SRC_ADDR == DST_ADDR);
		}
	endgroup

	function new(string name = "noc_coverage", uvm_component parent=null);
		super.new(name, parent);
		mesh_cg_in = new();
		mesh_cg_out = new();
	endfunction : new

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		for(int i = 0; i<TOTAL_CORES; i++) begin 
			in_fifo[i] = new($sformatf("in_fifo[%d]",i), this);
			out_fifo[i] = new($sformatf("out_fifo[%d]",i), this);
			txns_in[i] = new();
			txns_out[i] = new();
		end
	endfunction : build_phase

	task run_phase(uvm_phase phase);
		super.run_phase(phase);
		foreach(in_fifo[i]) begin
			automatic int var_i = i;
			fork
				test_coverage_in(var_i);
				test_coverage_out(var_i);
			join_none
		end
	endtask : run_phase

	task test_coverage_in(int n);
		forever begin 
			in_fifo[n].get(txns_in[n]);
			`uvm_info("COVERAGE", $sformatf("Got a txn to sample for core %d", n), UVM_INFO)
			vc_id_in[n] = txns_in[n].header_flit[28:27];
			src_addr_in[n] = txns_in[n].header_flit[15:8];
			dst_addr_in[n] = txns_in[n].header_flit[7:0];
			//`uvm_info("COVERAGE", $sformatf("vc_id:%b, src_addr:%b, dst_addr:%b",vc_id[n], src_addr[n], dst_addr[n]), UVM_INFO)
			mesh_cg_in.sample(n);
		end
	endtask : test_coverage_in

	task test_coverage_out(int n);
		forever begin 
			out_fifo[n].get(txns_out[n]);
			vc_id_out[n] = txns_out[n].header_flit[28:27];
			src_addr_out[n] = txns_out[n].header_flit[15:8];
			dst_addr_out[n] = txns_out[n].header_flit[7:0];
			mesh_cg_out.sample(n);
		end
	endtask : test_coverage_out

endclass : noc_coverage

