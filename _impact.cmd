setMode -bs
setMode -bs
setMode -bs
setMode -bs
setCable -port auto
Identify -inferir 
identifyMPM 
assignFile -p 1 -file "/home/mforever78/mcu1_uart_fpga.bit"
setCable -port auto
setCable -port auto
setCable -port auto
setCable -port auto
Identify -inferir 
identifyMPM 
assignFile -p 1 -file "/home/mforever78/mcu1_uart_fpga.bit"
Program -p 1 
assignFile -p 1 -file "/home/mforever78/mcu2_uart_fpga.bit"
Program -p 1 
Program -p 1 
setMode -bs
setMode -bs
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
