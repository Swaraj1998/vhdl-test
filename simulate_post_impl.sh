#!/bin/bash

name=$1

vivado -mode batch -source gen_timing_netlist.tcl
xvlog net_wrapper.v
xelab -debug all $name -s sim_$name
xsim sim_$name -t sim.tcl

#xsim sim_$name -t sim.tcl -gui
