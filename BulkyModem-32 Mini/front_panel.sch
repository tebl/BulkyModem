EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "BulkyModem Module (Front Panel)"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 "LED resistor values are suggested safe values, but need to be adjusted for LEDs used."
Comment4 "Front panel connector as well as circuitry for switches and LEDs."
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 63B6F353
P 3000 3525
AR Path="/63B6F353" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/63B6F353" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 3000 3275 50  0001 C CNN
F 1 "GND" H 3005 3352 50  0000 C CNN
F 2 "" H 3000 3525 50  0001 C CNN
F 3 "" H 3000 3525 50  0001 C CNN
	1    3000 3525
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63B6F359
P 3000 3300
AR Path="/63B6F359" Ref="R?"  Part="1" 
AR Path="/6390AE73/63B6F359" Ref="R4"  Part="1" 
F 0 "R4" V 2793 3300 50  0000 C CNN
F 1 "2k2*" V 2884 3300 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2930 3300 50  0001 C CNN
F 3 "~" H 3000 3300 50  0001 C CNN
	1    3000 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 63B6F361
P 3000 2850
AR Path="/63B6F361" Ref="D?"  Part="1" 
AR Path="/6390AE73/63B6F361" Ref="D2"  Part="1" 
F 0 "D2" H 2993 2595 50  0000 C CNN
F 1 "POWER" H 2993 2686 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3000 2850 50  0001 C CNN
F 3 "~" H 3000 2850 50  0001 C CNN
	1    3000 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63B6F367
P 3000 2700
AR Path="/63B6F367" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/63B6F367" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 3000 2550 50  0001 C CNN
F 1 "+5V" H 3000 2875 50  0000 C CNN
F 2 "" H 3000 2700 50  0001 C CNN
F 3 "" H 3000 2700 50  0001 C CNN
	1    3000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3450 3000 3525
Text Label 2725 2525 3    50   ~ 0
LED_POW
$Comp
L Device:R R10
U 1 1 63BA56FF
P 1600 5275
F 0 "R10" V 1393 5275 50  0000 C CNN
F 1 "2k2" V 1484 5275 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1530 5275 50  0001 C CNN
F 3 "~" H 1600 5275 50  0001 C CNN
	1    1600 5275
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 63BA5727
P 1600 4825
F 0 "D5" V 1639 4707 50  0000 R CNN
F 1 "TX" V 1548 4707 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 1600 4825 50  0001 C CNN
F 3 "~" H 1600 4825 50  0001 C CNN
	1    1600 4825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 4975 1600 5050
Wire Wire Line
	1600 5050 1600 5125
Connection ~ 1600 5050
$Comp
L power:+5V #PWR0124
U 1 1 63BA5731
P 1600 4675
F 0 "#PWR0124" H 1600 4525 50  0001 C CNN
F 1 "+5V" H 1615 4848 50  0000 C CNN
F 2 "" H 1600 4675 50  0001 C CNN
F 3 "" H 1600 4675 50  0001 C CNN
	1    1600 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	1325 5050 1600 5050
Entry Wire Line
	1425 4375 1325 4475
Wire Wire Line
	1325 5050 1325 4475
Text GLabel 1600 5500 3    50   Input ~ 0
ESP_TX
Wire Wire Line
	1600 5425 1600 5500
Text Label 1325 4500 3    50   ~ 0
LED_TX
Wire Wire Line
	2725 3075 3000 3075
Entry Wire Line
	3275 4375 3175 4475
Wire Wire Line
	2725 3075 2725 2500
Wire Wire Line
	3000 3000 3000 3075
Connection ~ 3000 3075
Wire Wire Line
	3000 3075 3000 3150
$Comp
L Device:R R8
U 1 1 63BDC3E2
P 2525 5275
F 0 "R8" V 2318 5275 50  0000 C CNN
F 1 "2k2" V 2409 5275 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2455 5275 50  0001 C CNN
F 3 "~" H 2525 5275 50  0001 C CNN
	1    2525 5275
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 63BDC40A
P 2525 4825
F 0 "D4" V 2564 4707 50  0000 R CNN
F 1 "RX" V 2473 4707 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 2525 4825 50  0001 C CNN
F 3 "~" H 2525 4825 50  0001 C CNN
	1    2525 4825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2525 4975 2525 5050
Wire Wire Line
	2525 5050 2525 5125
Connection ~ 2525 5050
$Comp
L power:+5V #PWR0126
U 1 1 63BDC413
P 2525 4675
F 0 "#PWR0126" H 2525 4525 50  0001 C CNN
F 1 "+5V" H 2540 4848 50  0000 C CNN
F 2 "" H 2525 4675 50  0001 C CNN
F 3 "" H 2525 4675 50  0001 C CNN
	1    2525 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5050 2525 5050
Entry Wire Line
	4200 4375 4100 4475
Wire Wire Line
	2250 5050 2250 4475
Text GLabel 2525 5500 3    50   Input ~ 0
ESP_RX
Wire Wire Line
	2525 5500 2525 5425
Text Label 2250 4500 3    50   ~ 0
LED_RX
$Comp
L Device:R R12
U 1 1 63BEF4DA
P 4375 5275
F 0 "R12" V 4168 5275 50  0000 C CNN
F 1 "2k2" V 4259 5275 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4305 5275 50  0001 C CNN
F 3 "~" H 4375 5275 50  0001 C CNN
	1    4375 5275
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 63BEF502
P 4375 4825
F 0 "D6" V 4414 4707 50  0000 R CNN
F 1 "CTS" V 4323 4707 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4375 4825 50  0001 C CNN
F 3 "~" H 4375 4825 50  0001 C CNN
	1    4375 4825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4375 4975 4375 5050
Wire Wire Line
	4375 5050 4375 5125
Connection ~ 4375 5050
$Comp
L power:+5V #PWR0128
U 1 1 63BEF50B
P 4375 4675
F 0 "#PWR0128" H 4375 4525 50  0001 C CNN
F 1 "+5V" H 4390 4848 50  0000 C CNN
F 2 "" H 4375 4675 50  0001 C CNN
F 3 "" H 4375 4675 50  0001 C CNN
	1    4375 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5050 4375 5050
Entry Wire Line
	2350 4375 2250 4475
Wire Wire Line
	4100 5050 4100 4475
Text GLabel 4375 6175 3    50   Input ~ 0
ESP_CTS
Wire Wire Line
	4375 5500 4375 5425
Text Label 4100 4500 3    50   ~ 0
LED_CTS
$Comp
L Device:R R14
U 1 1 63BFFFD0
P 3450 5275
F 0 "R14" V 3243 5275 50  0000 C CNN
F 1 "2k2" V 3334 5275 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3380 5275 50  0001 C CNN
F 3 "~" H 3450 5275 50  0001 C CNN
	1    3450 5275
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 63BFFFF8
P 3450 4825
F 0 "D7" V 3489 4707 50  0000 R CNN
F 1 "RTS" V 3398 4707 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 3450 4825 50  0001 C CNN
F 3 "~" H 3450 4825 50  0001 C CNN
	1    3450 4825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 4975 3450 5050
Wire Wire Line
	3450 5050 3450 5125
Connection ~ 3450 5050
$Comp
L power:+5V #PWR0130
U 1 1 63C00001
P 3450 4675
F 0 "#PWR0130" H 3450 4525 50  0001 C CNN
F 1 "+5V" H 3465 4848 50  0000 C CNN
F 2 "" H 3450 4675 50  0001 C CNN
F 3 "" H 3450 4675 50  0001 C CNN
	1    3450 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 5050 3450 5050
Entry Wire Line
	4475 2400 4575 2500
Wire Wire Line
	3175 5050 3175 4475
Text GLabel 3450 6175 3    50   Input ~ 0
ESP_RTS
Wire Wire Line
	3450 5500 3450 5425
Text Label 3175 4500 3    50   ~ 0
LED_RTS
$Comp
L Device:LED D?
U 1 1 63C357DF
P 3925 2850
AR Path="/63C357DF" Ref="D?"  Part="1" 
AR Path="/6390AE73/63C357DF" Ref="D8"  Part="1" 
F 0 "D8" H 3918 2595 50  0000 C CNN
F 1 "RS-232" H 3918 2686 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3925 2850 50  0001 C CNN
F 3 "~" H 3925 2850 50  0001 C CNN
	1    3925 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63C357E5
P 3925 2700
AR Path="/63C357E5" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/63C357E5" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 3925 2550 50  0001 C CNN
F 1 "+5V" H 3925 2875 50  0000 C CNN
F 2 "" H 3925 2700 50  0001 C CNN
F 3 "" H 3925 2700 50  0001 C CNN
	1    3925 2700
	1    0    0    -1  
$EndComp
Text Label 3650 2525 3    50   ~ 0
LED_RS232
Entry Wire Line
	3550 2400 3650 2500
Wire Wire Line
	3650 3075 3650 2500
Text GLabel 3925 3525 3    50   Input ~ 0
MODE_232
Wire Wire Line
	3925 3450 3925 3525
$Comp
L Device:R R?
U 1 1 63C357D9
P 3925 3300
AR Path="/63C357D9" Ref="R?"  Part="1" 
AR Path="/6390AE73/63C357D9" Ref="R15"  Part="1" 
F 0 "R15" V 3718 3300 50  0000 C CNN
F 1 "2k2" V 3809 3300 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3855 3300 50  0001 C CNN
F 3 "~" H 3925 3300 50  0001 C CNN
	1    3925 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3925 3000 3925 3075
Wire Wire Line
	3650 3075 3925 3075
Connection ~ 3925 3075
Wire Wire Line
	3925 3075 3925 3150
$Comp
L Device:LED D?
U 1 1 63C707E0
P 4850 2850
AR Path="/63C707E0" Ref="D?"  Part="1" 
AR Path="/6390AE73/63C707E0" Ref="D9"  Part="1" 
F 0 "D9" H 4843 2595 50  0000 C CNN
F 1 "C64" H 4843 2686 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4850 2850 50  0001 C CNN
F 3 "~" H 4850 2850 50  0001 C CNN
	1    4850 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63C707E6
P 4850 2700
AR Path="/63C707E6" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/63C707E6" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 4850 2550 50  0001 C CNN
F 1 "+5V" H 4850 2875 50  0000 C CNN
F 2 "" H 4850 2700 50  0001 C CNN
F 3 "" H 4850 2700 50  0001 C CNN
	1    4850 2700
	1    0    0    -1  
$EndComp
Text Label 4575 2525 3    50   ~ 0
LED_C64
Entry Wire Line
	2625 2400 2725 2500
Wire Wire Line
	4575 3075 4575 2500
Wire Wire Line
	4850 3450 4850 3525
$Comp
L Device:R R?
U 1 1 63C707F1
P 4850 3300
AR Path="/63C707F1" Ref="R?"  Part="1" 
AR Path="/6390AE73/63C707F1" Ref="R16"  Part="1" 
F 0 "R16" V 4643 3300 50  0000 C CNN
F 1 "2k2" V 4734 3300 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4780 3300 50  0001 C CNN
F 3 "~" H 4850 3300 50  0001 C CNN
	1    4850 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 3000 4850 3075
Wire Wire Line
	4575 3075 4850 3075
Connection ~ 4850 3075
Wire Wire Line
	4850 3075 4850 3150
Text GLabel 4850 3525 3    50   Input ~ 0
MODE_C64
Wire Wire Line
	6025 2250 6700 2250
Wire Wire Line
	6025 2150 6700 2150
Wire Wire Line
	6025 1850 6700 1850
Wire Wire Line
	6025 1750 6700 1750
Wire Wire Line
	6025 1650 6700 1650
Wire Wire Line
	6025 1550 6700 1550
Wire Wire Line
	6025 1350 6700 1350
Entry Wire Line
	6800 2150 6700 2250
Entry Wire Line
	6800 2050 6700 2150
Entry Wire Line
	6800 1750 6700 1850
Entry Wire Line
	6800 1650 6700 1750
Entry Wire Line
	6800 1550 6700 1650
Entry Wire Line
	6800 1450 6700 1550
Entry Wire Line
	6800 1350 6700 1450
Text Label 6675 2250 2    50   ~ 0
LED_C64
Text Label 6675 2150 2    50   ~ 0
LED_RS232
Text Label 6675 1750 2    50   ~ 0
LED_RTS
Text Label 6675 1850 2    50   ~ 0
LED_CTS
Text Label 6675 1550 2    50   ~ 0
LED_TX
Text Label 6675 1650 2    50   ~ 0
LED_RX
Text Label 6675 1350 2    50   ~ 0
LED_POW
Wire Wire Line
	6025 2950 6250 2950
Text GLabel 6250 2950 2    50   Output ~ 0
PWR_EN
$Comp
L power:+5V #PWR0117
U 1 1 6392433C
P 6175 1075
F 0 "#PWR0117" H 6175 925 50  0001 C CNN
F 1 "+5V" H 6190 1248 50  0000 C CNN
F 2 "" H 6175 1075 50  0001 C CNN
F 3 "" H 6175 1075 50  0001 C CNN
	1    6175 1075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 63915A8F
P 6100 3225
F 0 "#PWR0116" H 6100 2975 50  0001 C CNN
F 1 "GND" H 6105 3052 50  0000 C CNN
F 2 "" H 6100 3225 50  0001 C CNN
F 3 "" H 6100 3225 50  0001 C CNN
	1    6100 3225
	1    0    0    -1  
$EndComp
Connection ~ 6100 3050
Wire Wire Line
	6100 3050 6100 3225
Wire Wire Line
	6025 1150 6175 1150
Wire Wire Line
	6100 1250 6100 3050
Wire Wire Line
	6100 1250 6025 1250
Wire Wire Line
	6025 3050 6100 3050
Wire Wire Line
	6025 3150 6175 3150
Connection ~ 6175 1150
Wire Wire Line
	6175 1150 6175 1075
$Comp
L BulkyModem:Module_Panel J3
U 1 1 63910ADA
P 5825 2150
F 0 "J3" H 5843 3375 50  0000 C CNN
F 1 "Module_Panel" H 5843 3284 50  0000 C CNN
F 2 "BulkyModem:Module_Panel" H 5825 2150 50  0001 C CNN
F 3 "~" H 5825 2150 50  0001 C CNN
	1    5825 2150
	-1   0    0    -1  
$EndComp
Wire Bus Line
	6900 1150 6900 4375
Entry Bus Bus
	6900 1150 6800 1250
Text GLabel 10575 2050 2    50   Output ~ 0
MODE_232
Wire Wire Line
	6175 1150 6175 3150
Wire Wire Line
	6250 2850 6025 2850
Text GLabel 8325 1750 0    50   Input ~ 0
MODE_SEL
$Comp
L Device:R R21
U 1 1 62E65646
P 8400 1525
F 0 "R21" V 8193 1525 50  0000 C CNN
F 1 "10k" V 8284 1525 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 1525 50  0001 C CNN
F 3 "~" H 8400 1525 50  0001 C CNN
	1    8400 1525
	-1   0    0    1   
$EndComp
Wire Wire Line
	8325 1750 8400 1750
Wire Wire Line
	8400 1750 8400 1675
$Comp
L power:+5V #PWR02
U 1 1 62E6A9A4
P 8400 1375
F 0 "#PWR02" H 8400 1225 50  0001 C CNN
F 1 "+5V" H 8415 1548 50  0000 C CNN
F 2 "" H 8400 1375 50  0001 C CNN
F 3 "" H 8400 1375 50  0001 C CNN
	1    8400 1375
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U?
U 1 1 62E71FB4
P 8950 1750
AR Path="/62E71FB4" Ref="U?"  Part="1" 
AR Path="/6390AE73/62E71FB4" Ref="U5"  Part="1" 
F 0 "U5" H 8950 2067 50  0000 C CNN
F 1 "74HCT04" H 8950 1976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8950 1750 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8950 1750 50  0001 C CNN
	1    8950 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1750 8650 1750
Connection ~ 8400 1750
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 62E933D3
P 8400 1925
AR Path="/62E933D3" Ref="JP?"  Part="1" 
AR Path="/63D786E4/62E933D3" Ref="JP?"  Part="1" 
AR Path="/6390AE73/62E933D3" Ref="JP7"  Part="1" 
F 0 "JP7" V 8450 1875 50  0000 R CNN
F 1 "232_SW" V 8375 1875 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8400 1925 50  0001 C CNN
F 3 "~" H 8400 1925 50  0001 C CNN
	1    8400 1925
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62E933D9
P 8400 2025
AR Path="/62E933D9" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/62E933D9" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/62E933D9" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 8400 1775 50  0001 C CNN
F 1 "GND" H 8405 1852 50  0000 C CNN
F 2 "" H 8400 2025 50  0001 C CNN
F 3 "" H 8400 2025 50  0001 C CNN
	1    8400 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1825 8400 1750
Text GLabel 9400 2050 2    50   Output ~ 0
MODE_C64
Text Notes 8400 2700 0    50   ~ 0
JP7 is intended as a way of enabling\n*one* of the two modes when a front\npanel has not been installed, jumpering\nit will override the switches on the panel.
Wire Wire Line
	6025 1950 6700 1950
Entry Wire Line
	6800 1850 6700 1950
Text Label 6675 1950 2    50   ~ 0
LED_DCD
Entry Wire Line
	5125 4375 5025 4475
$Comp
L Device:R R25
U 1 1 630B3F29
P 5300 5275
F 0 "R25" V 5093 5275 50  0000 C CNN
F 1 "2k2" V 5184 5275 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5230 5275 50  0001 C CNN
F 3 "~" H 5300 5275 50  0001 C CNN
	1    5300 5275
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D10
U 1 1 630B3F51
P 5300 4825
F 0 "D10" V 5339 4707 50  0000 R CNN
F 1 "DCD" V 5248 4707 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5300 4825 50  0001 C CNN
F 3 "~" H 5300 4825 50  0001 C CNN
	1    5300 4825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 4975 5300 5050
Wire Wire Line
	5300 5050 5300 5125
Connection ~ 5300 5050
$Comp
L power:+5V #PWR0138
U 1 1 630B3F5A
P 5300 4675
F 0 "#PWR0138" H 5300 4525 50  0001 C CNN
F 1 "+5V" H 5315 4848 50  0000 C CNN
F 2 "" H 5300 4675 50  0001 C CNN
F 3 "" H 5300 4675 50  0001 C CNN
	1    5300 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 5050 5300 5050
Wire Wire Line
	5025 5050 5025 4475
Text GLabel 5300 6175 3    50   Input ~ 0
ESP_DCD
Wire Wire Line
	5300 5500 5300 5425
Text Label 5025 4500 3    50   ~ 0
LED_DCD
Text GLabel 6225 6175 3    50   Input ~ 0
ESP_RI
Wire Wire Line
	6025 2050 6700 2050
Entry Wire Line
	6800 1950 6700 2050
Text Label 6675 2050 2    50   ~ 0
LED_RI
Entry Wire Line
	6050 4375 5950 4475
$Comp
L Device:R R2
U 1 1 634B1666
P 6225 5275
F 0 "R2" V 6018 5275 50  0000 C CNN
F 1 "2k2" V 6109 5275 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6155 5275 50  0001 C CNN
F 3 "~" H 6225 5275 50  0001 C CNN
	1    6225 5275
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 634B168E
P 6225 4825
F 0 "D3" V 6264 4707 50  0000 R CNN
F 1 "RI" V 6173 4707 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 6225 4825 50  0001 C CNN
F 3 "~" H 6225 4825 50  0001 C CNN
	1    6225 4825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6225 4975 6225 5050
Wire Wire Line
	6225 5050 6225 5125
Connection ~ 6225 5050
$Comp
L power:+5V #PWR0118
U 1 1 634B1697
P 6225 4675
F 0 "#PWR0118" H 6225 4525 50  0001 C CNN
F 1 "+5V" H 6240 4848 50  0000 C CNN
F 2 "" H 6225 4675 50  0001 C CNN
F 3 "" H 6225 4675 50  0001 C CNN
	1    6225 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5050 6225 5050
Wire Wire Line
	5950 5050 5950 4475
Wire Wire Line
	6225 5500 6225 5425
Text Label 5950 4500 3    50   ~ 0
LED_RI
$Comp
L 74xx:74HCT04 U?
U 2 1 6477295D
P 3450 5800
AR Path="/6477295D" Ref="U?"  Part="2" 
AR Path="/6390AE73/6477295D" Ref="U5"  Part="2" 
AR Path="/63D786E4/6477295D" Ref="U?"  Part="2" 
F 0 "U5" H 3450 6117 50  0000 C CNN
F 1 "74HCT04" H 3450 6026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3450 5800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 3450 5800 50  0001 C CNN
	2    3450 5800
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HCT04 U?
U 3 1 64772963
P 4375 5800
AR Path="/64772963" Ref="U?"  Part="3" 
AR Path="/6390AE73/64772963" Ref="U5"  Part="3" 
AR Path="/63D786E4/64772963" Ref="U?"  Part="3" 
F 0 "U5" H 4375 6117 50  0000 C CNN
F 1 "74HCT04" H 4375 6026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 4375 5800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 4375 5800 50  0001 C CNN
	3    4375 5800
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HCT04 U?
U 4 1 64772969
P 5300 5800
AR Path="/64772969" Ref="U?"  Part="4" 
AR Path="/6390AE73/64772969" Ref="U5"  Part="4" 
AR Path="/63D786E4/64772969" Ref="U?"  Part="5" 
F 0 "U5" H 5300 6117 50  0000 C CNN
F 1 "74HCT04" H 5300 6026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5300 5800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 5300 5800 50  0001 C CNN
	4    5300 5800
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HCT04 U?
U 5 1 6477296F
P 6225 5800
AR Path="/6477296F" Ref="U?"  Part="5" 
AR Path="/6390AE73/6477296F" Ref="U5"  Part="5" 
AR Path="/63D786E4/6477296F" Ref="U?"  Part="4" 
F 0 "U5" H 6225 6117 50  0000 C CNN
F 1 "74HCT04" H 6225 6026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6225 5800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 6225 5800 50  0001 C CNN
	5    6225 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 6100 3450 6175
Wire Wire Line
	4375 6100 4375 6175
Wire Wire Line
	5300 6100 5300 6175
Wire Wire Line
	6225 6100 6225 6175
$Comp
L Device:LED D?
U 1 1 64BB4F12
P 2075 2850
AR Path="/64BB4F12" Ref="D?"  Part="1" 
AR Path="/6390AE73/64BB4F12" Ref="D13"  Part="1" 
AR Path="/63D786E4/64BB4F12" Ref="D?"  Part="1" 
F 0 "D13" H 2068 2595 50  0000 C CNN
F 1 "STANDBY" H 2068 2686 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2075 2850 50  0001 C CNN
F 3 "~" H 2075 2850 50  0001 C CNN
	1    2075 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 64BB4F1E
P 2075 3300
AR Path="/64BB4F1E" Ref="R?"  Part="1" 
AR Path="/6390AE73/64BB4F1E" Ref="R3"  Part="1" 
AR Path="/63D786E4/64BB4F1E" Ref="R?"  Part="1" 
F 0 "R3" V 1868 3300 50  0000 C CNN
F 1 "2k2*" V 1959 3300 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2005 3300 50  0001 C CNN
F 3 "~" H 2075 3300 50  0001 C CNN
	1    2075 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64BBDA77
P 2075 3525
AR Path="/64BBDA77" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/64BBDA77" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 2075 3275 50  0001 C CNN
F 1 "GND" H 2080 3352 50  0000 C CNN
F 2 "" H 2075 3525 50  0001 C CNN
F 3 "" H 2075 3525 50  0001 C CNN
	1    2075 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2075 3450 2075 3525
Text Label 1800 2525 3    50   ~ 0
LED_STB
Wire Wire Line
	1800 3075 2075 3075
Wire Wire Line
	1800 3075 1800 2500
Wire Wire Line
	2075 3000 2075 3075
Connection ~ 2075 3075
Wire Wire Line
	2075 3075 2075 3150
Entry Wire Line
	1700 2400 1800 2500
Text GLabel 2075 2700 1    50   Input ~ 0
VSB
Wire Bus Line
	1425 2400 1425 4375
Text Label 6675 1450 2    50   ~ 0
LED_STB
Wire Wire Line
	6025 1450 6700 1450
Entry Wire Line
	6800 1250 6700 1350
Text GLabel 6250 2750 2    50   Input ~ 0
VSB
Wire Wire Line
	6250 2750 6025 2750
Text Notes 1800 3950 0    50   ~ 0
* These resistors may have functionally\nbeen replace on the front panel.
$Comp
L 74xx:74HCT04 U?
U 6 1 664EBB40
P 10125 1750
AR Path="/664EBB40" Ref="U?"  Part="1" 
AR Path="/6390AE73/664EBB40" Ref="U5"  Part="6" 
AR Path="/63D786E4/664EBB40" Ref="U?"  Part="6" 
F 0 "U5" H 10125 2067 50  0000 C CNN
F 1 "74HCT04" H 10125 1976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10125 1750 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10125 1750 50  0001 C CNN
	6    10125 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1750 9325 1750
Wire Wire Line
	9325 1750 9325 2050
Wire Wire Line
	9325 2050 9400 2050
Wire Wire Line
	10500 1750 10425 1750
Wire Wire Line
	9825 1750 9325 1750
Connection ~ 9325 1750
Text GLabel 6250 2850 2    50   Output ~ 0
MODE_SEL
Wire Wire Line
	10500 1750 10500 2050
Wire Wire Line
	10575 2050 10500 2050
Wire Bus Line
	1425 2400 4475 2400
Wire Bus Line
	1425 4375 6900 4375
Wire Bus Line
	6800 1250 6800 2150
$EndSCHEMATC