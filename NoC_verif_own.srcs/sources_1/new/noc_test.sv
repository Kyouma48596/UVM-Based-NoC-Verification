class noc_test extends uvm_test;

/*-------------------------------------------------------------------------------
-- Interface, port, fields
-------------------------------------------------------------------------------*/
	noc_env env;
	noc_sequence seq[TOTAL_CORES];
	my_noc_config noc_config0;
	bit core_selection_vector[TOTAL_CORES-1:0];
	int dummy = $random(RANDOM_SEED);
/*-------------------------------------------------------------------------------
-- UVM Factory register
-------------------------------------------------------------------------------*/
	// Provide implementations of virtual methods such as get_type_name and create
	`uvm_component_utils(noc_test)

/*-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------*/
	// Constructor
	function new(string name = "noc_test", uvm_component parent=null);
		super.new(name, parent);
	endfunction : new

	function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		env = noc_env::type_id::create("env", this);
		noc_config0 = my_noc_config::type_id::create("noc_config0", this);
		uvm_config_db#(virtual noc_if)::get(this, "*", "vif", noc_config0.vif);
		uvm_config_db#(my_noc_config)::set(this, "*", "noc_config0", noc_config0);
		foreach(seq[i]) begin
			seq[i] = noc_sequence::type_id::create($sformatf("seq[%d]",i), this);
			seq[i].core_seq_num = i;
			seq[i].core_seq_addr = noc_pkg::arr[$sformatf("CORE%0d_ADDR",i)];
		end

		foreach(core_selection_vector[i]) begin
			core_selection_vector[i] = ($random()%2);
		end
		//core_selection_vector = {0,0,0,1,0,0,0,1,1}; //override for directed testing
		`uvm_info("ENV", $sformatf("core_selection_vector is: %b", core_selection_vector), UVM_INFO)
		noc_pkg::core_selection_vector = core_selection_vector;
		
	endfunction : build_phase

	function void connect_phase(uvm_phase phase);
		super.connect_phase(phase);
	endfunction : connect_phase

	task run_phase(uvm_phase phase);
		super.run_phase(phase);
		`uvm_info("TEST", "Test runphase", UVM_INFO)
		phase.raise_objection(this);
			foreach(seq[i]) begin
				automatic int var_i = i;
				fork
					seq[var_i].start(env.agent[var_i].sequencer);
				join_none
			end
			wait fork;
			#1000;
		phase.drop_objection(this);
	endtask : run_phase

endclass : noc_test