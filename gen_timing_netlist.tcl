#set_part xc7z020clg400-1
#set_property BOARD_PART em.avnet.com:microzed_7020:part0:1.1 [current_project]

read_vhdl toggle.vhd
read_vhdl wrapper.vhd

synth_design -top wrapper
place_design
route_design

#write_verilog -force -cell toggle1 -rename_top wrapper -mode timesim -sdf_anno true net_wrapper.v
write_verilog -force -mode timesim -sdf_anno true net_wrapper.v
write_sdf -force net_wrapper.sdf
