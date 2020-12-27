#!/bin/bash

name=$1

xvhdl *.vhd
xelab -s sim_$name $name -debug all
xsim sim_$name -t sim.tcl
#xsim sim_$name -t sim.tcl -gui
