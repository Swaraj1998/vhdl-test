#!/bin/bash

name=$1

/media/hdd1/Xilinx/Vivado/2020.2/bin/xelab -s sim_$name $name -debug all
/media/hdd1/Xilinx/Vivado/2020.2/bin/xsim sim_$name -t sim.tcl
