#!/bin/bash

xvhdl *.vhd
xelab -s sim_wrapper wrapper -debug all
xsim sim_wrapper -t sim.tcl
#xsim sim_wrapper -t sim.tcl -gui
