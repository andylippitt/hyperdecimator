set projDir "C:/code/HyperDecimator/SerialTest/work/vivado"
set projName "SerialTest"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/code/HyperDecimator/SerialTest/work/verilog/au_top_0.v" "C:/code/HyperDecimator/SerialTest/work/verilog/reset_conditioner_1.v" "C:/code/HyperDecimator/SerialTest/work/verilog/pdm_mics_2.v" "C:/code/HyperDecimator/SerialTest/work/verilog/uart_rx_3.v" "C:/code/HyperDecimator/SerialTest/work/verilog/uart_tx_4.v" "C:/code/HyperDecimator/SerialTest/work/verilog/counter_5.v" "C:/code/HyperDecimator/SerialTest/work/verilog/edge_detector_6.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/code/HyperDecimator/SerialTest/work/constraint/hyperdecimator.xdc" "C:/code/HyperDecimator/SerialTest/work/constraint/alchitry.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
