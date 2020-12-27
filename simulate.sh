#!/bin/bash

name=$1

xelab -s sim_$name $name -debug all
xsim sim_$name -t sim.tcl
