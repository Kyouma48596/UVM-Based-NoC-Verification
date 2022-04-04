class noc_agent extends uvm_agent;

/*-------------------------------------------------------------------------------
-- Interface, port, fields
-------------------------------------------------------------------------------*/
	noc_driver driver;
	noc_monitor monitor;
	uvm_sequencer #(noc_pkt) sequencer;
	my_noc_config noc_config0;
	bit[7:0] core_addr;
	int core_num;
/*-------------------------------------------------------------------------------
-- UVM Factory register
-------------------------------------------------------------------------------*/
	// Provide implementations of virtual methods such as get_type_name and create
	`uvm_component_utils(noc_agent)

/*-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------*/
	// Constructor
	function new(string name = "noc_agent", uvm_component parent=null);
		super.new(name, parent);
	endfunction : new

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		driver = noc_driver::type_id::create("driver", this);
		sequencer = uvm_sequencer#(noc_pkt)::type_id::create("sequencer", this);
		noc_config0 = my_noc_config::type_id::create("noc_config0", this);
		uvm_config_db#(my_noc_config)::get(this, "*", "noc_config0", noc_config0);
		driver.vif = noc_config0.vif;
		monitor = noc_monitor::type_id::create("monitor", this);
		monitor.vif = noc_config0.vif;
	endfunction : build_phase

	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
		driver.seq_item_port.connect(sequencer.seq_item_export);
		driver.core_num = core_num;
		monitor.core_num = core_num;
	endfunction : connect_phase

endclass : noc_agent