class noc_pkt extends uvm_sequence_item;

/*-------------------------------------------------------------------------------
-- Interface, port, fields
-------------------------------------------------------------------------------*/
logic[31:0] header_flit,payload_flit[],tailer_flit,invalid_flit;
rand bit[1:0] vc_id;
rand bit[7:0] src_addr,dst_addr;
rand logic[26:0] payload[];
rand bit[7:0] payload_len;
rand bit [7:0] core_num;
bit[3:0] rl=NO_OF_ROWS-1;
bit[3:0] cl=NO_OF_COLUMNS-1;

constraint addr_con {src_addr!=dst_addr;}
constraint len_con {payload.size == payload_len+1;}
constraint src_row_con {src_addr[7:4] inside {[4'h0:rl]};}
constraint dst_row_con {dst_addr[7:4] inside {[4'h0:rl]};}
constraint src_col_con {src_addr[3:0] inside {[4'h0:cl]};}
constraint dst_col_con {dst_addr[3:0] inside {[4'h0:cl]};}

/*-------------------------------------------------------------------------------
-- UVM Factory register
-------------------------------------------------------------------------------*/
	// Provide implementations of virtual methods such as get_type_name and create
	`uvm_object_utils(noc_pkt)

/*-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------*/
	// Constructor
	function new(string name = "noc_pkt");
		super.new(name);
	endfunction : new

	function void post_randomize();
		header_flit = {1'b0,1'b0,1'b1,vc_id,11'b0,src_addr,dst_addr};
		payload_flit = new[payload.size];
		foreach(payload[i])
			begin	
				payload_flit[i][31:27] = {1'b0,1'b0,1'b0,vc_id};
				payload_flit[i][26:0] = payload[i];
			end
		tailer_flit = {1'b0,1'b1,1'b0,vc_id,27'h0};
		invalid_flit = 32'h7fffffff;
		foreach(payload[i]) begin
			payload[i] = noc_pkg::pld[i];
		end
	endfunction : post_randomize



endclass : noc_pkt