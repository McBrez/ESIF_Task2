onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib top_oled_0_opt

do {wave.do}

view wave
view structure
view signals

do {top_oled_0.udo}

run -all

quit -force
