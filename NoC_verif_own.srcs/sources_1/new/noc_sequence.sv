class noc_sequence extends uvm_sequence #(noc_pkt);

/*-------------------------------------------------------------------------------
-- Interface, port, fields
-------------------------------------------------------------------------------*/
int core_seq_num;
bit[7:0] core_seq_addr;
noc_pkt req = new();

/*-------------------------------------------------------------------------------
-- UVM Factory register
-------------------------------------------------------------------------------*/
	// Provide implementations of virtual methods such as get_type_name and create
	`uvm_object_utils(noc_sequence)
	`uvm_declare_p_sequencer(uvm_sequencer #(noc_pkt))
/*-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------*/
	// Constructor
	function new(string name = "noc_sequence");
		super.new(name);
	endfunction : new

	virtual task body();
		if(noc_pkg::core_selection_vector[core_seq_num]) core_seq(core_seq_num); //run the sequence only if the specific core is selected in the core selection vector
	endtask:body

	task core_seq(int n);
		bit [31:0] fl;
		bit[1:0] vid;
		bit[26:0] pld[TOTAL_PAYLOADS_PER_PACKET];
		bit[7:0] sa,da;
		int file_red,line_cnt,pkt_cnt,r;
		`uvm_info("SEQ", "IN TASK BODY", UVM_INFO)	
		file_red = $fopen($sformatf("core%0d.txt",core_seq_num),"r"); //read the file corresponding to the core this sequence is attached to

		// if (!file_red) 
		// 	begin //{
		// 	`uvm_error("ERROR :","FILE OPENED FAILED :: NO SUCH FILE OR BAD FILE NAME");
		// 	end //}
		// else
		// 	begin//{
			 
			while(!$feof(file_red)) begin//{ this loop is only to read the number of packets in the file, one line corresponds to one flit. Currently 1 packet = 1 header + 2 payloads + 1 tailer + 1 invalid flit, so 5 flits (or lines)
				line_cnt++;
				r=$fscanf(file_red, "%b\n",fl); 
				//`uvm_info("SEQ", $sformatf("Scanned f1 = %b",fl), UVM_INFO)
			end //}
			pkt_cnt=(line_cnt/TOTAL_PACKET_SIZE);
			`uvm_info("SEQ", $sformatf("Value of line count is = %d",line_cnt), UVM_INFO)
			`uvm_info("SEQ", $sformatf("Value of pkt count is = %d",pkt_cnt), UVM_INFO)
			noc_pkg::PKT_CNT = pkt_cnt;
		// 	end //}
			 
		$fclose(file_red);

		file_red = $fopen($sformatf("core%0d.txt",core_seq_num),"r");

		// if (!file_red)
		// 	begin //{
		// 	`uvm_error("ERROR :","FILE OPENED FAILED :: NO SUCH FILE OR BAD FILE NAME");
		// 	end //}
		// else
		// 	begin //{
				for(int j=0;j<pkt_cnt;j++) begin //{
		// 	    // $display("In loop %d",j);

			     r=$fscanf(file_red, "%b\n",fl); //this block extracts virtual channel ID, src address and dst address for the packet. 
			     //Currently the latter 2 are being randomized. In order to use the src and dst from your txt files, uncomment lines 72,73
			     //and 87, and comment line 88.
			     vid=fl[28:27]; 
			     //sa=fl[15:8];
			     //da=fl[7:0];

			    for (int k=0;k<TOTAL_PAYLOADS_PER_PACKET;k++) begin  //{ this loop reads payloads from the txt file, since your algo only makes headers
			    	//you can add some python code to generate dummy payloads (32'b0) so that this part works
				    r=$fscanf(file_red, "%b\n",fl);
				    pld[k] = fl[26:0];
				    noc_pkg::pld[k] = pld[k];
				    end //}
			      
		// 	    r=$fscanf(file_red, "%b\n",fl);
		// 	    r=$fscanf(file_red, "%b\n",fl);

			    
			     // `uvm_do_with(req,{req.vc_id==vid;req.src_addr==sa;req.dst_addr==da;req.payload_len==TOTAL_PAYLOADS_PER_PACKET-1;foreach(req.payload[i])req.payload[i]==pld[i];req.core_num==core_seq_num; })
			    start_item(req);
			    //assert(req.randomize() with {vc_id == vid; payload_len == TOTAL_PAYLOADS_PER_PACKET-1; core_num == core_seq_num; src_addr == sa; dst_addr == da});
			    assert(req.randomize() with {vc_id == vid; payload_len == TOTAL_PAYLOADS_PER_PACKET-1; core_num == core_seq_num; src_addr == core_seq_addr;});
			    `uvm_info("SEQ", $sformatf(" IN Seq Value of core_seq_num is %d vc_id  is = %b , src_addr is %b dst_addr is %b ",core_seq_num,vid, req.src_addr,req.dst_addr), UVM_INFO);
			    finish_item(req);
			    end  //}
		    // end  //}


		//$fclose(file_red);
	endtask : core_seq

endclass : noc_sequence