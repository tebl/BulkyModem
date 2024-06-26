EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title "BulkyModem Module (RS-232)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_UART:MAX232 U?
U 1 1 637E1879
P 5675 4825
AR Path="/637E1879" Ref="U?"  Part="1" 
AR Path="/6379233A/637E1879" Ref="U3"  Part="1" 
F 0 "U3" H 5675 5275 50  0000 C CNN
F 1 "MAX232" H 5675 5175 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 5725 3775 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 5675 4925 50  0001 C CNN
	1    5675 4825
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 637E187F
P 5675 6025
AR Path="/637E187F" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/637E187F" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 5675 5775 50  0001 C CNN
F 1 "GND" H 5680 5852 50  0000 C CNN
F 2 "" H 5675 6025 50  0001 C CNN
F 3 "" H 5675 6025 50  0001 C CNN
	1    5675 6025
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 637E1885
P 5675 3625
AR Path="/637E1885" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/637E1885" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 5675 3475 50  0001 C CNN
F 1 "+5V" H 5675 3765 50  0000 C CNN
F 2 "" H 5675 3625 50  0000 C CNN
F 3 "" H 5675 3625 50  0000 C CNN
	1    5675 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3925 4700 3975
Wire Wire Line
	4700 4175 4700 4225
Wire Wire Line
	4700 4225 4875 4225
Wire Wire Line
	4700 3925 4875 3925
Wire Wire Line
	4275 4175 4275 4425
Wire Wire Line
	4275 4425 4875 4425
$Comp
L power:+5V #PWR?
U 1 1 637E189D
P 4275 3975
AR Path="/637E189D" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/637E189D" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 4275 3825 50  0001 C CNN
F 1 "+5V" H 4275 4115 50  0000 C CNN
F 2 "" H 4275 3975 50  0000 C CNN
F 3 "" H 4275 3975 50  0000 C CNN
	1    4275 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3925 6650 3975
Wire Wire Line
	6650 4175 6650 4225
Wire Wire Line
	6650 4225 6475 4225
Wire Wire Line
	6650 3925 6475 3925
$Comp
L power:GND #PWR?
U 1 1 637E18B3
P 4700 6050
AR Path="/637E18B3" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/637E18B3" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 4700 5800 50  0001 C CNN
F 1 "GND" H 4705 5877 50  0000 C CNN
F 2 "" H 4700 6050 50  0001 C CNN
F 3 "" H 4700 6050 50  0001 C CNN
	1    4700 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4725 4700 5850
Wire Wire Line
	4700 4725 4875 4725
$Comp
L BulkyModem:Swap_Input JP?
U 1 1 637E18FB
P 3125 5525
AR Path="/637E18FB" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E18FB" Ref="JP5"  Part="1" 
F 0 "JP5" H 3125 5650 50  0000 C CNN
F 1 "SEL_CTS" H 3125 5729 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3125 5525 50  0001 C CNN
F 3 "~" H 3125 5525 50  0001 C CNN
	1    3125 5525
	-1   0    0    1   
$EndComp
$Comp
L BulkyModem:Swap_Output JP?
U 1 1 637E1901
P 3675 5125
AR Path="/637E1901" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E1901" Ref="JP6"  Part="1" 
F 0 "JP6" H 3675 5250 50  0000 C CNN
F 1 "SEL_RTS" H 3675 5375 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3675 5125 50  0001 C CNN
F 3 "~" H 3675 5125 50  0001 C CNN
	1    3675 5125
	-1   0    0    1   
$EndComp
$Comp
L BulkyModem:Swap_Output JP?
U 1 1 637E190D
P 2575 4925
AR Path="/637E190D" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E190D" Ref="JP4"  Part="1" 
F 0 "JP4" H 2575 5038 50  0000 C CNN
F 1 "SEL_TxD" H 2575 5129 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2575 4925 50  0001 C CNN
F 3 "~" H 2575 4925 50  0001 C CNN
	1    2575 4925
	-1   0    0    1   
$EndComp
Wire Wire Line
	2775 4925 2850 4925
Wire Wire Line
	2300 4925 2300 5325
Wire Wire Line
	2300 4925 2375 4925
Wire Wire Line
	2225 5325 2300 5325
Wire Wire Line
	2850 4925 2850 5400
Wire Wire Line
	1750 5400 1750 5325
Wire Wire Line
	1750 5325 1825 5325
Wire Wire Line
	1750 5400 2850 5400
Wire Wire Line
	3875 5125 3950 5125
Wire Wire Line
	3475 5125 3400 5125
Wire Wire Line
	3400 5125 3400 5525
Connection ~ 3400 5525
Wire Wire Line
	3325 5525 3400 5525
Wire Wire Line
	2850 5525 2850 5600
Wire Wire Line
	2850 5600 3950 5600
Wire Wire Line
	3950 5600 3950 5125
Connection ~ 3950 5125
Connection ~ 2300 5325
Connection ~ 2850 4925
Wire Wire Line
	2850 5525 2925 5525
Wire Wire Line
	2850 4925 4875 4925
Wire Wire Line
	3950 5125 4875 5125
Wire Wire Line
	2300 5325 4875 5325
Wire Wire Line
	3400 5525 4875 5525
$Comp
L rs232_port:RS232_DCE J?
U 1 1 637EF808
P 1300 2925
AR Path="/637EF808" Ref="J?"  Part="1" 
AR Path="/6379233A/637EF808" Ref="J2"  Part="1" 
F 0 "J2" H 1288 3617 50  0000 C CNN
F 1 "DCE" H 1288 3526 50  0000 C CNN
F 2 "RND_DSUB:DSUB-9_Female_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 1300 2925 50  0001 C CNN
F 3 " ~" H 1300 2925 50  0001 C CNN
	1    1300 2925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 3325 1675 3325
Wire Wire Line
	1675 3325 1675 3400
$Comp
L power:GND #PWR?
U 1 1 637EF811
P 1675 3400
AR Path="/637EF811" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/637EF811" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 1675 3150 50  0001 C CNN
F 1 "GND" H 1680 3227 50  0000 C CNN
F 2 "" H 1675 3400 50  0001 C CNN
F 3 "" H 1675 3400 50  0001 C CNN
	1    1675 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 3125 1675 3125
Wire Wire Line
	1675 3125 1675 2625
Wire Wire Line
	1675 2625 1600 2625
Text Notes 1850 6150 0    50   ~ 0
Jumpers allow the pins to be swapped, this should\naccount for differences in the cables used. Connecting\nthe device using a standard DB9 male to female cable,\nall of these should be set to pins 1-2.
Text Notes 9375 6300 0    50   ~ 0
Zimodem firmware compiled for ESP8266\ninverts signals, assuming the device\nconnected is a Commodore 64. To support\nboth we need to invert some of the signals\nback again.\n\nWhen in doubt, link all of these across\npins 1-2.
Wire Wire Line
	2575 4775 2575 2725
Wire Wire Line
	1600 2725 2575 2725
Wire Wire Line
	3125 2825 3125 5375
Wire Wire Line
	1600 2825 3125 2825
Wire Wire Line
	2025 2925 2025 5175
Wire Wire Line
	1600 2925 2025 2925
Wire Wire Line
	3675 3025 3675 4975
Wire Wire Line
	1600 3025 3675 3025
$Comp
L BulkyModem:Swap_Input JP?
U 1 1 637E1907
P 2025 5325
AR Path="/637E1907" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E1907" Ref="JP3"  Part="1" 
F 0 "JP3" H 2025 5450 50  0000 C CNN
F 1 "SEL_RxD" H 2025 5529 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2025 5325 50  0001 C CNN
F 3 "~" H 2025 5325 50  0001 C CNN
	1    2025 5325
	-1   0    0    1   
$EndComp
Text Label 4275 5325 0    50   ~ 0
SER_RxD
Text Label 4275 5125 0    50   ~ 0
SER_RTS
Text Label 4275 5525 0    50   ~ 0
SER_CTS
Text Label 4275 4925 0    50   ~ 0
SER_TxD
Text Label 2550 2725 2    50   ~ 0
DCE_TxD
Text Label 3100 2825 2    50   ~ 0
DCE_CTS
Text Label 2000 2925 2    50   ~ 0
DCE_RxD
Text Label 3650 3025 2    50   ~ 0
DCE_RTS
$Comp
L Device:CP_Small C5
U 1 1 63E8A978
P 6650 4075
F 0 "C5" H 6738 4121 50  0000 L CNN
F 1 "1uF" H 6738 4030 50  0000 L CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 6650 4075 50  0001 C CNN
F 3 "~" H 6650 4075 50  0001 C CNN
	1    6650 4075
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C3
U 1 1 63E8F2C2
P 4700 4075
F 0 "C3" H 4788 4121 50  0000 L CNN
F 1 "1uF" H 4788 4030 50  0000 L CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 4700 4075 50  0001 C CNN
F 3 "~" H 4700 4075 50  0001 C CNN
	1    4700 4075
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 63E9006F
P 4275 4075
F 0 "C2" H 4187 4029 50  0000 R CNN
F 1 "1uF" H 4187 4120 50  0000 R CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 4275 4075 50  0001 C CNN
F 3 "~" H 4275 4075 50  0001 C CNN
	1    4275 4075
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C4
U 1 1 63E92639
P 4700 5950
F 0 "C4" H 4612 5904 50  0000 R CNN
F 1 "1uF" H 4612 5995 50  0000 R CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 4700 5950 50  0001 C CNN
F 3 "~" H 4700 5950 50  0001 C CNN
	1    4700 5950
	-1   0    0    1   
$EndComp
Text Notes 4900 6700 0    50   ~ 0
C2-C5 must be electrolytic 1uF when using\nolder or cheaper MAX232 variants, these\ncan be replaced with standard 100nF\nwhen used with MAX232A.
$Comp
L 74xx:74HCT04 U?
U 6 1 62E77668
P 8200 1575
AR Path="/62E77668" Ref="U?"  Part="6" 
AR Path="/6379233A/62E77668" Ref="U2"  Part="6" 
F 0 "U2" H 8200 1892 50  0000 C CNN
F 1 "74HCT04" H 8200 1801 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8200 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8200 1575 50  0001 C CNN
	6    8200 1575
	-1   0    0    1   
$EndComp
$Comp
L BulkyModem:Swap_Output JP?
U 1 1 62E8FE3C
P 7425 1775
AR Path="/62E8FE3C" Ref="JP?"  Part="1" 
AR Path="/6379233A/62E8FE3C" Ref="JP12"  Part="1" 
F 0 "JP12" V 7379 1843 50  0000 L CNN
F 1 "INV_DCD" V 7470 1843 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7425 1775 50  0001 C CNN
F 3 "~" H 7425 1775 50  0001 C CNN
	1    7425 1775
	0    1    1    0   
$EndComp
Wire Wire Line
	7425 1975 8575 1975
Wire Wire Line
	7425 1575 7900 1575
Wire Wire Line
	8575 1975 8575 1775
Wire Wire Line
	8575 1575 8500 1575
Wire Wire Line
	8575 1775 8800 1775
Connection ~ 8575 1775
Wire Wire Line
	8575 1775 8575 1575
Text HLabel 8800 1775 2    50   Input ~ 0
232_DCD
Text Label 4275 1975 0    50   ~ 0
SER_DCD
$Comp
L Interface_UART:MAX232 U?
U 1 1 62F4DF57
P 5675 1875
AR Path="/62F4DF57" Ref="U?"  Part="1" 
AR Path="/6379233A/62F4DF57" Ref="U4"  Part="1" 
F 0 "U4" H 5675 2325 50  0000 C CNN
F 1 "MAX232" H 5675 2225 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 5725 825 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 5675 1975 50  0001 C CNN
	1    5675 1875
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62F4DF5D
P 5675 3225
AR Path="/62F4DF5D" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/62F4DF5D" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 5675 2975 50  0001 C CNN
F 1 "GND" H 5680 3052 50  0000 C CNN
F 2 "" H 5675 3225 50  0001 C CNN
F 3 "" H 5675 3225 50  0001 C CNN
	1    5675 3225
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62F4DF63
P 5675 675
AR Path="/62F4DF63" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/62F4DF63" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 5675 525 50  0001 C CNN
F 1 "+5V" H 5675 815 50  0000 C CNN
F 2 "" H 5675 675 50  0000 C CNN
F 3 "" H 5675 675 50  0000 C CNN
	1    5675 675 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 975  4700 1025
Wire Wire Line
	4700 1225 4700 1275
Wire Wire Line
	4700 1275 4875 1275
Wire Wire Line
	4700 975  4875 975 
Wire Wire Line
	4275 1225 4275 1475
Wire Wire Line
	4275 1475 4875 1475
$Comp
L power:+5V #PWR?
U 1 1 62F4DF6F
P 4275 1025
AR Path="/62F4DF6F" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/62F4DF6F" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 4275 875 50  0001 C CNN
F 1 "+5V" H 4275 1165 50  0000 C CNN
F 2 "" H 4275 1025 50  0000 C CNN
F 3 "" H 4275 1025 50  0000 C CNN
	1    4275 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 975  6650 1025
Wire Wire Line
	6650 1225 6650 1275
Wire Wire Line
	6650 1275 6475 1275
Wire Wire Line
	6650 975  6475 975 
$Comp
L power:GND #PWR?
U 1 1 62F4DF79
P 4700 3100
AR Path="/62F4DF79" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/62F4DF79" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 4700 2850 50  0001 C CNN
F 1 "GND" H 4705 2927 50  0000 C CNN
F 2 "" H 4700 3100 50  0001 C CNN
F 3 "" H 4700 3100 50  0001 C CNN
	1    4700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1775 4700 2900
$Comp
L Device:CP_Small C15
U 1 1 62F4DF8D
P 6650 1125
F 0 "C15" H 6738 1171 50  0000 L CNN
F 1 "1uF" H 6738 1080 50  0000 L CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 6650 1125 50  0001 C CNN
F 3 "~" H 6650 1125 50  0001 C CNN
	1    6650 1125
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C14
U 1 1 62F4DF93
P 4700 1125
F 0 "C14" H 4788 1171 50  0000 L CNN
F 1 "1uF" H 4788 1080 50  0000 L CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 4700 1125 50  0001 C CNN
F 3 "~" H 4700 1125 50  0001 C CNN
	1    4700 1125
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C12
U 1 1 62F4DF99
P 4275 1125
F 0 "C12" H 4187 1079 50  0000 R CNN
F 1 "1uF" H 4187 1170 50  0000 R CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 4275 1125 50  0001 C CNN
F 3 "~" H 4275 1125 50  0001 C CNN
	1    4275 1125
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C13
U 1 1 62F4DF9F
P 4700 3000
F 0 "C13" H 4950 2950 50  0000 R CNN
F 1 "1uF" H 4950 3025 50  0000 R CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 4700 3000 50  0001 C CNN
F 3 "~" H 4700 3000 50  0001 C CNN
	1    4700 3000
	-1   0    0    1   
$EndComp
NoConn ~ 6475 2375
NoConn ~ 6475 2575
Wire Wire Line
	5675 3225 5675 3150
Wire Wire Line
	5675 3150 4800 3150
Wire Wire Line
	4800 3150 4800 2575
Wire Wire Line
	4800 2575 4875 2575
Wire Wire Line
	5675 3075 5675 3150
Connection ~ 5675 3150
Wire Wire Line
	4800 2575 4800 2375
Wire Wire Line
	4800 2375 4875 2375
Connection ~ 4800 2575
Wire Wire Line
	1600 2525 2025 2525
Wire Wire Line
	2025 2525 2025 2275
Wire Wire Line
	2025 1975 4875 1975
Wire Wire Line
	2100 2275 2025 2275
Connection ~ 2025 2275
Wire Wire Line
	2025 2275 2025 1975
Wire Wire Line
	1675 2625 2475 2625
Wire Wire Line
	2475 2625 2475 2275
Wire Wire Line
	2475 2275 2400 2275
Connection ~ 1675 2625
Wire Wire Line
	4700 1775 4875 1775
Text Notes 2525 2350 0    50   ~ 0
This should be linked when skipping the\ninstallation of MAX232 at U4.
Wire Wire Line
	6475 1975 7075 1975
Wire Wire Line
	7075 1975 7075 1775
Wire Wire Line
	7075 1775 7275 1775
Wire Wire Line
	7075 2175 7075 2375
Wire Wire Line
	6475 2175 7075 2175
$Comp
L 74xx:74HCT04 U?
U 1 1 6333079C
P 8200 2175
AR Path="/6333079C" Ref="U?"  Part="6" 
AR Path="/6379233A/6333079C" Ref="U2"  Part="1" 
F 0 "U2" H 8200 2492 50  0000 C CNN
F 1 "74HCT04" H 8200 2401 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8200 2175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8200 2175 50  0001 C CNN
	1    8200 2175
	-1   0    0    1   
$EndComp
$Comp
L BulkyModem:Swap_Output JP?
U 1 1 633307A2
P 7425 2375
AR Path="/633307A2" Ref="JP?"  Part="1" 
AR Path="/6379233A/633307A2" Ref="JP14"  Part="1" 
F 0 "JP14" V 7379 2443 50  0000 L CNN
F 1 "INV_RI" V 7470 2443 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7425 2375 50  0001 C CNN
F 3 "~" H 7425 2375 50  0001 C CNN
	1    7425 2375
	0    1    1    0   
$EndComp
Wire Wire Line
	7425 2575 8575 2575
Wire Wire Line
	7425 2175 7900 2175
Wire Wire Line
	8575 2575 8575 2375
Wire Wire Line
	8575 2175 8500 2175
Wire Wire Line
	8575 2375 8800 2375
Connection ~ 8575 2375
Wire Wire Line
	8575 2375 8575 2175
Text HLabel 8800 2375 2    50   Input ~ 0
232_RI
Wire Wire Line
	7275 2375 7075 2375
Wire Wire Line
	1600 3225 4250 3225
Wire Wire Line
	4250 3225 4250 2175
Wire Wire Line
	4250 2175 4875 2175
Text Label 4275 2175 0    50   ~ 0
SER_RI
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 62FE8A7C
P 2250 2275
AR Path="/62FE8A7C" Ref="JP?"  Part="1" 
AR Path="/63D786E4/62FE8A7C" Ref="JP?"  Part="1" 
AR Path="/6379233A/62FE8A7C" Ref="JP13"  Part="1" 
F 0 "JP13" H 2250 2436 31  0000 C CNN
F 1 "BYPASS" H 2250 2374 31  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2250 2275 50  0001 C CNN
F 3 "~" H 2250 2275 50  0001 C CNN
	1    2250 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	7275 3950 6975 3950
Wire Wire Line
	7425 5525 8575 5525
Wire Wire Line
	7500 5125 7425 5125
Wire Wire Line
	8575 5125 8100 5125
$Comp
L 74xx:74HCT04 U?
U 4 1 637E186D
P 7800 5125
AR Path="/637E186D" Ref="U?"  Part="4" 
AR Path="/6379233A/637E186D" Ref="U2"  Part="4" 
F 0 "U2" H 7800 5442 50  0000 C CNN
F 1 "74HCT04" H 7800 5351 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 7800 5125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7800 5125 50  0001 C CNN
	4    7800 5125
	1    0    0    1   
$EndComp
Wire Wire Line
	7425 3750 8575 3750
Wire Wire Line
	8500 4150 8575 4150
$Comp
L BulkyModem:Swap_Output JP?
U 1 1 637E18C5
P 7425 3950
AR Path="/637E18C5" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E18C5" Ref="JP8"  Part="1" 
F 0 "JP8" V 7379 4018 50  0000 L CNN
F 1 "INV_TX" V 7470 4018 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7425 3950 50  0001 C CNN
F 3 "~" H 7425 3950 50  0001 C CNN
	1    7425 3950
	0    1    1    0   
$EndComp
Text HLabel 8800 6100 2    50   Output ~ 0
232_CTS
Text HLabel 8800 5325 2    50   Output ~ 0
232_RX
Text HLabel 8800 4725 2    50   Input ~ 0
232_RTS
Text HLabel 8800 3950 2    50   Input ~ 0
232_TX
$Comp
L solder_select:SolderJumper_3_Bridged12 JP?
U 1 1 637E1935
P 8575 5325
AR Path="/637E1935" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E1935" Ref="JP10"  Part="1" 
F 0 "JP10" V 8621 5392 50  0000 L CNN
F 1 "INV_RX" V 8530 5392 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8575 5325 50  0001 C CNN
F 3 "~" H 8575 5325 50  0001 C CNN
	1    8575 5325
	0    -1   -1   0   
$EndComp
$Comp
L solder_select:SolderJumper_3_Bridged12 JP?
U 1 1 637E192F
P 8575 6100
AR Path="/637E192F" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E192F" Ref="JP11"  Part="1" 
F 0 "JP11" V 8621 6167 50  0000 L CNN
F 1 "INV_CTS" V 8530 6167 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8575 6100 50  0001 C CNN
F 3 "~" H 8575 6100 50  0001 C CNN
	1    8575 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7075 4725 7275 4725
Wire Wire Line
	8800 6100 8725 6100
Wire Wire Line
	7425 6100 7425 5900
Connection ~ 7425 6100
Wire Wire Line
	7425 6300 7425 6100
Wire Wire Line
	8575 6300 8100 6300
Wire Wire Line
	7425 6300 7500 6300
Wire Wire Line
	8575 5900 7425 5900
Wire Wire Line
	8575 3950 8800 3950
Wire Wire Line
	8575 4725 8800 4725
Wire Wire Line
	8800 5325 8725 5325
Wire Wire Line
	7425 5325 7425 5125
Connection ~ 7425 5325
Wire Wire Line
	7425 5525 7425 5325
Wire Wire Line
	8575 4725 8575 4925
Connection ~ 8575 4725
Wire Wire Line
	8575 3950 8575 4150
Connection ~ 8575 3950
Wire Wire Line
	8575 4525 8575 4725
Wire Wire Line
	7425 4525 7900 4525
Wire Wire Line
	8575 4525 8500 4525
Wire Wire Line
	7425 4925 8575 4925
$Comp
L BulkyModem:Swap_Output JP?
U 1 1 637E18CF
P 7425 4725
AR Path="/637E18CF" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E18CF" Ref="JP9"  Part="1" 
F 0 "JP9" V 7379 4793 50  0000 L CNN
F 1 "INV_RTS" V 7470 4793 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7425 4725 50  0001 C CNN
F 3 "~" H 7425 4725 50  0001 C CNN
	1    7425 4725
	0    1    1    0   
$EndComp
Wire Wire Line
	8575 3750 8575 3950
Wire Wire Line
	7425 4150 7900 4150
$Comp
L 74xx:74HCT04 U?
U 3 1 637E18BF
P 8200 4525
AR Path="/637E18BF" Ref="U?"  Part="3" 
AR Path="/6379233A/637E18BF" Ref="U2"  Part="3" 
F 0 "U2" H 8200 4842 50  0000 C CNN
F 1 "74HCT04" H 8200 4751 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8200 4525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8200 4525 50  0001 C CNN
	3    8200 4525
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HCT04 U?
U 5 1 637E1873
P 7800 6300
AR Path="/637E1873" Ref="U?"  Part="5" 
AR Path="/6379233A/637E1873" Ref="U2"  Part="5" 
F 0 "U2" H 7800 6617 50  0000 C CNN
F 1 "74HCT04" H 7800 6526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 7800 6300 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 7800 6300 50  0001 C CNN
	5    7800 6300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U?
U 2 1 637E1867
P 8200 4150
AR Path="/637E1867" Ref="U?"  Part="2" 
AR Path="/6379233A/637E1867" Ref="U2"  Part="2" 
F 0 "U2" H 8200 4467 50  0000 C CNN
F 1 "74HCT04" H 8200 4376 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8200 4150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8200 4150 50  0001 C CNN
	2    8200 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6975 6100 7425 6100
Wire Wire Line
	6475 5525 6975 5525
Wire Wire Line
	6975 5525 6975 6100
Wire Wire Line
	6475 5325 7425 5325
Wire Wire Line
	7075 4725 7075 5125
Wire Wire Line
	6475 5125 7075 5125
Wire Wire Line
	6475 4925 6975 4925
Wire Wire Line
	6975 3950 6975 4925
$EndSCHEMATC
