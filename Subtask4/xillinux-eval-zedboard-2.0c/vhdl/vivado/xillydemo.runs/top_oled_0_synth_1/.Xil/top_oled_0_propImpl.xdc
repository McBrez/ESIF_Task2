set_property SRC_FILE_INFO {cfile:d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/src/init_sequence_rom_ooc.xdc rfile:../../../xillydemo.srcs/sources_1/ip/top_oled_0/src/init_sequence_rom_ooc.xdc id:1 order:EARLY scoped_inst:U0} [current_design]
set_property SRC_FILE_INFO {cfile:d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/src/pixel_buffer_ooc.xdc rfile:../../../xillydemo.srcs/sources_1/ip/top_oled_0/src/pixel_buffer_ooc.xdc id:2 order:EARLY scoped_inst:U0} [current_design]
set_property SRC_FILE_INFO {cfile:d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/src/charLib_ooc.xdc rfile:../../../xillydemo.srcs/sources_1/ip/top_oled_0/src/charLib_ooc.xdc id:3 order:EARLY scoped_inst:U0} [current_design]
set_property SRC_FILE_INFO {cfile:d:/DEV/ESIF/Task2/ESIF_Task2/Subtask4/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/src/zedboard_master.xdc rfile:../../../xillydemo.srcs/sources_1/ip/top_oled_0/src/zedboard_master.xdc id:4 order:EARLY scoped_inst:U0} [current_design]
current_instance U0
set_property src_info {type:SCOPED_XDC file:1 line:53 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
create_clock -name "TS_CLKA" -period 20.0 [ get_ports clka ]
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [ get_ports clka ]
set_property src_info {type:SCOPED_XDC file:2 line:53 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
create_clock -name "TS_CLKA" -period 20.0 [ get_ports clka ]
set_property src_info {type:SCOPED_XDC file:2 line:54 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [ get_ports clka ]
set_property src_info {type:SCOPED_XDC file:2 line:56 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
create_clock -name "TS_CLKB" -period 20.0 [ get_ports clkb ]
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
set_property HD.CLK_SRC BUFGCTRL_X0Y1 [ get_ports clkb ]
set_property src_info {type:SCOPED_XDC file:3 line:53 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
create_clock -name "TS_CLKA" -period 20.0 [ get_ports clka ]
set_property src_info {type:SCOPED_XDC file:3 line:54 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [ get_ports clka ]
set_property src_info {type:SCOPED_XDC file:4 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"
set_property src_info {type:SCOPED_XDC file:4 line:144 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U10  [get_ports {DC}];  # "OLED-DC"
set_property src_info {type:SCOPED_XDC file:4 line:145 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U9   [get_ports {RES}];  # "OLED-RES"
set_property src_info {type:SCOPED_XDC file:4 line:146 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB12 [get_ports {SCLK}];  # "OLED-SCLK"  # ----------------------------------------------------------------------------
set_property src_info {type:SCOPED_XDC file:4 line:147 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA12 [get_ports {SDIN}];  # "OLED-SDIN"  # HDMI Output - Bank 33
set_property src_info {type:SCOPED_XDC file:4 line:148 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U11  [get_ports {VBAT}];  # "OLED-VBAT"  # ----------------------------------------------------------------------------
set_property src_info {type:SCOPED_XDC file:4 line:149 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U12  [get_ports {VDD}];  # "OLED-VDD"    #set_property PACKAGE_PIN W18  [get_ports {HD_CLK}];  # "HD-CLK"
set_property src_info {type:SCOPED_XDC file:4 line:216 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R16 [get_ports {dBTnD}];  # "BTND"
set_property src_info {type:SCOPED_XDC file:4 line:219 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R18 [get_ports {reset_i}];  # "BTNR"
set_property src_info {type:SCOPED_XDC file:4 line:221 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T18 [get_ports {dBtnU}];  # "BTNU"
set_property src_info {type:SCOPED_XDC file:4 line:374 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];
set_property src_info {type:SCOPED_XDC file:4 line:379 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
set_property src_info {type:SCOPED_XDC file:4 line:384 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];
set_property src_info {type:SCOPED_XDC file:4 line:387 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
