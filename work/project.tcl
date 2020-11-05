set projDir "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/vivado"
set projName "16BitALU"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/au_top_0.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/reset_conditioner_1.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/multi_seven_seg_2.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/testerfsm_3.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/alu_4.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/adder_5.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/counter_6.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/seven_seg_7.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/decoder_8.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/boolean_9.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/shifter_10.v" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/verilog/compare_11.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/constraint/io.xdc" "D:/Joon\ Kang/Documents/SUTD/Computation\ Structures\ 50.002/1D\ Project/FPGA/16BitALU/work/constraint/alchitry.xdc" "D:/Joon\ Kang/Alchitry/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
