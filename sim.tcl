add_force CLK {0} {1 500ps} -repeat_every 1ns
add_force EN {0} {1 1000ns} {0 1500ns}

open_vcd sim.vcd
log_vcd -level 1 [get_objects CLK EN Q1 Q2]
#add_wave [get_objects CLK EN Q]

run 2ms
current_time

flush_vcd 
close_vcd

quit
