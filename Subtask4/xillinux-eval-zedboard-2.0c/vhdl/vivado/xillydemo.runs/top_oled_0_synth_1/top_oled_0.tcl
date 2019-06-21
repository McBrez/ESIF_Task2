# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param synth.incrementalSynthesisCache C:/Users/David/AppData/Roaming/Xilinx/Vivado/.Xil/Vivado-1004-FREISMUTHDESK/incrSyn
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
set_msg_config  -id {BD 41-968}  -string {{xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -id {Netlist 29-160}  -string {{vivado_system_processing_system7}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-968}  -string {{xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-678}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-1356}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-759}  -string {{xlconcat_0/In}}  -new_severity {INFO} 
set_msg_config  -id {filemgmt 20-1440}  -string {{xillybus_lite.ngc}}  -new_severity {INFO} 
set_param project.vivado.isBlockSynthRun true
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.cache/wt [current_project]
set_property parent.project_path D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths {
  d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vivado-essentials/vivado-ip
  d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/OLED_IP_2019
} [current_project]
update_ip_catalog
set_property ip_output_repo d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0.xci
set_property used_in_implementation false [get_files -all d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/src/zedboard_master.xdc]
set_property used_in_implementation false [get_files -all d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/src/init_sequence_rom_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/src/pixel_buffer_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/src/charLib_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.runs/top_oled_0_synth_1 -new_name top_oled_0 -ip [get_ips top_oled_0]]

if { $cached_ip eq {} } {
close [open __synthesis_is_running__ w]

synth_design -top top_oled_0 -part xc7z020clg484-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix top_oled_0_ top_oled_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_oled_0_stub.v
 lappend ipCachedFiles top_oled_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_oled_0_stub.vhdl
 lappend ipCachedFiles top_oled_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_oled_0_sim_netlist.v
 lappend ipCachedFiles top_oled_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_oled_0_sim_netlist.vhdl
 lappend ipCachedFiles top_oled_0_sim_netlist.vhdl
set TIME_taken [expr [clock seconds] - $TIME_start]

 config_ip_cache -add -dcp top_oled_0.dcp -move_files $ipCachedFiles -use_project_ipc  -synth_runtime $TIME_taken  -ip [get_ips top_oled_0]
}

rename_ref -prefix_all top_oled_0_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_oled_0.dcp
create_report "top_oled_0_synth_1_synth_report_utilization_0" "report_utilization -file top_oled_0_utilization_synth.rpt -pb top_oled_0_utilization_synth.pb"

if { [catch {
  file copy -force D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.runs/top_oled_0_synth_1/top_oled_0.dcp d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.runs/top_oled_0_synth_1/top_oled_0.dcp d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.runs/top_oled_0_synth_1/top_oled_0_stub.v d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.runs/top_oled_0_synth_1/top_oled_0_stub.vhdl d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.runs/top_oled_0_synth_1/top_oled_0_sim_netlist.v d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.runs/top_oled_0_synth_1/top_oled_0_sim_netlist.vhdl d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.ip_user_files/ip/top_oled_0]} {
  catch { 
    file copy -force d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_stub.v D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.ip_user_files/ip/top_oled_0
  }
}

if {[file isdir D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.ip_user_files/ip/top_oled_0]} {
  catch { 
    file copy -force d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_stub.vhdl D:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.ip_user_files/ip/top_oled_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]