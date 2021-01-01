#!/bin/bash

vivado -mode batch -source gen_timing_netlist.tcl
xvlog net_wrapper.v
xelab -debug all -s sim_wrapper -L simprims_ver wrapper glbl
xsim sim_wrapper -t sim.tcl

#xsim sim_wrapper -t sim.tcl -gui
