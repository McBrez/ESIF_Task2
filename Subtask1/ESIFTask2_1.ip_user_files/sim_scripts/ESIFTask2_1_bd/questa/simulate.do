onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ESIFTask2_1_bd_opt

do {wave.do}

view wave
view structure
view signals

do {ESIFTask2_1_bd.udo}

run -all

quit -force
