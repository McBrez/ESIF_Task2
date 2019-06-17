connect -url tcp:127.0.0.1:3121
source D:/DEV/ESIF/Task2/ESIF_Task2/Subtask1/ESIFTask2_1.sdk/ESIFTask2_1_bd_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A49C81"} -index 0
loadhw -hw D:/DEV/ESIF/Task2/ESIF_Task2/Subtask1/ESIFTask2_1.sdk/ESIFTask2_1_bd_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A49C81"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A49C81"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A49C81"} -index 0
dow D:/DEV/ESIF/Task2/ESIF_Task2/Subtask1/ESIFTask2_1.sdk/ESIF2_1_App/Debug/ESIF2_1_App.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A49C81"} -index 0
con
