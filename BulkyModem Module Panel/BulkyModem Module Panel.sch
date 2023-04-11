EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BulkyModem (Panel)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Front panel for mounting LEDs horizontally, designed for slotting into the main module."
$EndDescr
$Comp
L BulkyModem:Module_Panel J1
U 1 1 62825997
P 9075 3425
F 0 "J1" H 9025 4625 50  0000 L CNN
F 1 "Front Panel" H 9025 4550 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x21_P2.54mm_Horizontal" H 9075 3425 50  0001 C CNN
F 3 "~" H 9075 3425 50  0001 C CNN
	1    9075 3425
	1    0    0    -1  
$EndComp
Wire Wire Line
	8775 2525 8775 4325
$Comp
L power:GND #PWR0101
U 1 1 6282785A
P 8775 4600
F 0 "#PWR0101" H 8775 4350 50  0001 C CNN
F 1 "GND" H 8780 4427 50  0000 C CNN
F 2 "" H 8775 4600 50  0001 C CNN
F 3 "" H 8775 4600 50  0001 C CNN
	1    8775 4600
	1    0    0    -1  
$EndComp
Connection ~ 8775 4325
Wire Wire Line
	8700 4425 8700 2425
Wire Wire Line
	8700 2425 8800 2425
Wire Wire Line
	8700 2425 8700 2350
Connection ~ 8700 2425
$Comp
L power:VCC #PWR0102
U 1 1 62828DC5
P 8700 2350
F 0 "#PWR0102" H 8700 2200 50  0001 C CNN
F 1 "VCC" H 8715 2523 50  0000 C CNN
F 2 "" H 8700 2350 50  0001 C CNN
F 3 "" H 8700 2350 50  0001 C CNN
	1    8700 2350
	1    0    0    -1  
$EndComp
Text Label 8250 2625 0    50   ~ 0
LED_POW
Text Label 8250 2925 0    50   ~ 0
LED_RX
Text Label 8250 2825 0    50   ~ 0
LED_TX
Text Label 8250 3125 0    50   ~ 0
LED_CTS
Text Label 8250 3025 0    50   ~ 0
LED_RTS
Text Label 8250 3425 0    50   ~ 0
LED_RS232
Text Label 8250 3525 0    50   ~ 0
LED_C64
Entry Wire Line
	8225 2625 8125 2725
Entry Wire Line
	8225 2825 8125 2925
Entry Wire Line
	8225 2925 8125 3025
Entry Wire Line
	8225 3025 8125 3125
Entry Wire Line
	8225 3125 8125 3225
Entry Wire Line
	8225 3425 8125 3525
Entry Wire Line
	8225 3525 8125 3625
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 628346CB
P 8800 2425
F 0 "#FLG0101" H 8800 2500 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 2598 50  0001 C CNN
F 2 "" H 8800 2425 50  0001 C CNN
F 3 "~" H 8800 2425 50  0001 C CNN
	1    8800 2425
	1    0    0    -1  
$EndComp
Connection ~ 8800 2425
Wire Wire Line
	8800 2425 8875 2425
Wire Wire Line
	8775 2525 8875 2525
Wire Wire Line
	8775 4325 8875 4325
Wire Wire Line
	8700 4425 8875 4425
Entry Wire Line
	3550 3425 3450 3325
$Comp
L Device:LED D10
U 1 1 62876713
P 3450 2700
F 0 "D10" V 3489 2582 50  0000 R CNN
F 1 "C64" V 3398 2582 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3450 2700 50  0001 C CNN
F 3 "~" H 3450 2700 50  0001 C CNN
	1    3450 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 62876719
P 3450 2550
F 0 "#PWR0103" H 3450 2400 50  0001 C CNN
F 1 "VCC" H 3465 2723 50  0000 C CNN
F 2 "" H 3450 2550 50  0001 C CNN
F 3 "" H 3450 2550 50  0001 C CNN
	1    3450 2550
	1    0    0    -1  
$EndComp
Entry Wire Line
	3950 3425 3850 3325
$Comp
L Device:LED D11
U 1 1 62876721
P 3850 2700
F 0 "D11" V 3889 2582 50  0000 R CNN
F 1 "RS-232" V 3798 2582 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3850 2700 50  0001 C CNN
F 3 "~" H 3850 2700 50  0001 C CNN
	1    3850 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 62876727
P 3850 2550
F 0 "#PWR0104" H 3850 2400 50  0001 C CNN
F 1 "VCC" H 3865 2723 50  0000 C CNN
F 2 "" H 3850 2550 50  0001 C CNN
F 3 "" H 3850 2550 50  0001 C CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
Entry Wire Line
	5700 3425 5600 3325
$Comp
L power:VCC #PWR0105
U 1 1 62876735
P 5600 2550
F 0 "#PWR0105" H 5600 2400 50  0001 C CNN
F 1 "VCC" H 5615 2723 50  0000 C CNN
F 2 "" H 5600 2550 50  0001 C CNN
F 3 "" H 5600 2550 50  0001 C CNN
	1    5600 2550
	1    0    0    -1  
$EndComp
Entry Wire Line
	5300 3425 5200 3325
$Comp
L Device:LED D13
U 1 1 6287673D
P 5200 2700
F 0 "D13" V 5239 2582 50  0000 R CNN
F 1 "CTS" V 5148 2582 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5200 2700 50  0001 C CNN
F 3 "~" H 5200 2700 50  0001 C CNN
	1    5200 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 62876743
P 5200 2550
F 0 "#PWR0106" H 5200 2400 50  0001 C CNN
F 1 "VCC" H 5215 2723 50  0000 C CNN
F 2 "" H 5200 2550 50  0001 C CNN
F 3 "" H 5200 2550 50  0001 C CNN
	1    5200 2550
	1    0    0    -1  
$EndComp
Entry Wire Line
	6500 3425 6400 3325
$Comp
L Device:LED D14
U 1 1 6287674B
P 6400 2700
F 0 "D14" V 6439 2582 50  0000 R CNN
F 1 "TX" V 6348 2582 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6400 2700 50  0001 C CNN
F 3 "~" H 6400 2700 50  0001 C CNN
	1    6400 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 62876751
P 6400 2550
F 0 "#PWR0107" H 6400 2400 50  0001 C CNN
F 1 "VCC" H 6415 2723 50  0000 C CNN
F 2 "" H 6400 2550 50  0001 C CNN
F 3 "" H 6400 2550 50  0001 C CNN
	1    6400 2550
	1    0    0    -1  
$EndComp
Entry Wire Line
	6100 3425 6000 3325
$Comp
L Device:LED D15
U 1 1 62876759
P 6000 2700
F 0 "D15" V 6039 2582 50  0000 R CNN
F 1 "RX" V 5948 2582 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6000 2700 50  0001 C CNN
F 3 "~" H 6000 2700 50  0001 C CNN
	1    6000 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 6287675F
P 6000 2550
F 0 "#PWR0108" H 6000 2400 50  0001 C CNN
F 1 "VCC" H 6015 2723 50  0000 C CNN
F 2 "" H 6000 2550 50  0001 C CNN
F 3 "" H 6000 2550 50  0001 C CNN
	1    6000 2550
	1    0    0    -1  
$EndComp
Entry Wire Line
	7400 3425 7300 3325
$Comp
L Device:LED D17
U 1 1 62876775
P 7300 2700
F 0 "D17" V 7339 2582 50  0000 R CNN
F 1 "POW" V 7248 2582 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7300 2700 50  0001 C CNN
F 3 "~" H 7300 2700 50  0001 C CNN
	1    7300 2700
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR0110
U 1 1 6287677B
P 7300 1825
F 0 "#PWR0110" H 7300 1675 50  0001 C CNN
F 1 "VCC" H 7315 1998 50  0000 C CNN
F 2 "" H 7300 1825 50  0001 C CNN
F 3 "" H 7300 1825 50  0001 C CNN
	1    7300 1825
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 628CF525
P 8775 4525
F 0 "#FLG0102" H 8775 4600 50  0001 C CNN
F 1 "PWR_FLAG" V 8775 4652 50  0001 L CNN
F 2 "" H 8775 4525 50  0001 C CNN
F 3 "~" H 8775 4525 50  0001 C CNN
	1    8775 4525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8775 4325 8775 4525
Wire Wire Line
	8775 4525 8775 4600
Connection ~ 8775 4525
$Comp
L mounting:Mounting_Pin M1
U 1 1 6282631C
P 10725 575
F 0 "M1" H 10725 675 50  0001 C CNN
F 1 "Mounting_Pin" H 10725 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10725 575 50  0001 C CNN
F 3 "~" H 10725 575 50  0001 C CNN
	1    10725 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M2
U 1 1 62826824
P 10850 575
F 0 "M2" H 10850 675 50  0001 C CNN
F 1 "Mounting_Pin" H 10850 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10850 575 50  0001 C CNN
F 3 "~" H 10850 575 50  0001 C CNN
	1    10850 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M3
U 1 1 62826D8F
P 10975 575
F 0 "M3" H 10975 675 50  0001 C CNN
F 1 "Mounting_Pin" H 10975 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10975 575 50  0001 C CNN
F 3 "~" H 10975 575 50  0001 C CNN
	1    10975 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M4
U 1 1 62827110
P 11100 575
F 0 "M4" H 11100 675 50  0001 C CNN
F 1 "Mounting_Pin" H 11100 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 11100 575 50  0001 C CNN
F 3 "~" H 11100 575 50  0001 C CNN
	1    11100 575 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 6282AADA
P 11100 875
F 0 "#PWR0111" H 11100 625 50  0001 C CNN
F 1 "GND" H 11105 702 50  0000 C CNN
F 2 "" H 11100 875 50  0001 C CNN
F 3 "" H 11100 875 50  0001 C CNN
	1    11100 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10725 725  10725 800 
Wire Wire Line
	10725 800  10850 800 
Wire Wire Line
	11100 800  11100 725 
Wire Wire Line
	10850 725  10850 800 
Connection ~ 10850 800 
Wire Wire Line
	10850 800  10975 800 
Wire Wire Line
	10975 725  10975 800 
Connection ~ 10975 800 
Wire Wire Line
	10975 800  11100 800 
Wire Wire Line
	11100 800  11100 875 
Connection ~ 11100 800 
Text GLabel 8625 4125 0    50   Input ~ 0
SW_MODE
Text GLabel 8625 4225 0    50   Input ~ 0
SW_PWR
Wire Wire Line
	8225 2625 8875 2625
Wire Wire Line
	8225 2825 8875 2825
Wire Wire Line
	8225 2925 8875 2925
Wire Wire Line
	8225 3025 8875 3025
Wire Wire Line
	8225 3125 8875 3125
Wire Wire Line
	8225 3425 8875 3425
Wire Wire Line
	8225 3525 8875 3525
Wire Wire Line
	8625 4125 8875 4125
Wire Wire Line
	8875 4225 8625 4225
Text Label 7300 3300 1    50   ~ 0
LED_POW
Text Label 6000 3300 1    50   ~ 0
LED_RX
Text Label 6400 3300 1    50   ~ 0
LED_TX
Text Label 5200 3300 1    50   ~ 0
LED_CTS
Text Label 5600 3300 1    50   ~ 0
LED_RTS
Text Label 3850 3300 1    50   ~ 0
LED_RS232
Text Label 3450 3300 1    50   ~ 0
LED_C64
Wire Wire Line
	3450 2850 3450 3325
Wire Wire Line
	3850 2850 3850 3325
Wire Wire Line
	5600 2850 5600 3325
Wire Wire Line
	5200 3325 5200 2850
Wire Wire Line
	6400 2850 6400 3325
Wire Wire Line
	6000 3325 6000 2850
Wire Wire Line
	7300 3325 7300 2850
Entry Bus Bus
	8025 2825 8125 2725
Entry Bus Bus
	7925 3425 8025 3325
Wire Bus Line
	8025 3325 8025 2825
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 62E3B89C
P 5500 4600
F 0 "SW1" H 5500 4885 50  0000 C CNN
F 1 "MODE" H 5500 4794 50  0000 C CNN
F 2 "6pin_switch:dpdt_switch_black" H 5500 4600 50  0001 C CNN
F 3 "~" H 5500 4600 50  0001 C CNN
	1    5500 4600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 2 1 62E3C504
P 5500 5250
F 0 "SW1" H 5500 5535 50  0000 C CNN
F 1 "MODE" H 5500 5444 50  0000 C CNN
F 2 "6pin_switch:dpdt_switch_black" H 5500 5250 50  0001 C CNN
F 3 "~" H 5500 5250 50  0001 C CNN
	2    5500 5250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 62E3F52F
P 2850 4575
F 0 "SW2" H 2850 4860 50  0000 C CNN
F 1 "POW" H 2850 4769 50  0000 C CNN
F 2 "6pin_switch:dpdt_switch_black" H 2850 4575 50  0001 C CNN
F 3 "~" H 2850 4575 50  0001 C CNN
	1    2850 4575
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 2 1 62E3FA35
P 2850 5225
F 0 "SW2" H 2850 5510 50  0000 C CNN
F 1 "POW" H 2850 5419 50  0000 C CNN
F 2 "6pin_switch:dpdt_switch_black" H 2850 5225 50  0001 C CNN
F 3 "~" H 2850 5225 50  0001 C CNN
	2    2850 5225
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D12
U 1 1 6287672F
P 5600 2700
F 0 "D12" V 5639 2582 50  0000 R CNN
F 1 "RTS" V 5548 2582 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5600 2700 50  0001 C CNN
F 3 "~" H 5600 2700 50  0001 C CNN
	1    5600 2700
	0    -1   -1   0   
$EndComp
Text GLabel 2500 4575 0    50   Output ~ 0
SW_PWR
NoConn ~ 3050 4475
$Comp
L power:GND #PWR0112
U 1 1 62E61DCC
P 3125 5400
F 0 "#PWR0112" H 3125 5150 50  0001 C CNN
F 1 "GND" H 3130 5227 50  0000 C CNN
F 2 "" H 3125 5400 50  0001 C CNN
F 3 "" H 3125 5400 50  0001 C CNN
	1    3125 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5325 3125 5325
Wire Wire Line
	3125 5325 3125 5400
NoConn ~ 3050 5125
Text GLabel 5225 4600 0    50   Output ~ 0
SW_MODE
Wire Wire Line
	5225 4600 5300 4600
NoConn ~ 5700 4500
$Comp
L power:GND #PWR0113
U 1 1 62E7FC92
P 5775 4775
F 0 "#PWR0113" H 5775 4525 50  0001 C CNN
F 1 "GND" H 5780 4602 50  0000 C CNN
F 2 "" H 5775 4775 50  0001 C CNN
F 3 "" H 5775 4775 50  0001 C CNN
	1    5775 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4700 5775 4700
Wire Wire Line
	5775 4700 5775 4775
NoConn ~ 5300 5250
NoConn ~ 5700 5150
NoConn ~ 5700 5350
Text Notes 4700 5900 0    50   ~ 0
SW_MODE relies on a pull-up resistor\non the main module to ensure a reliable\nvalue when not properly engaged.
Wire Wire Line
	2500 4575 2575 4575
Wire Wire Line
	2575 4575 2575 5225
Wire Wire Line
	2575 5225 2650 5225
Connection ~ 2575 4575
Wire Wire Line
	2575 4575 2650 4575
Wire Wire Line
	3125 5325 3125 4675
Wire Wire Line
	3125 4675 3050 4675
Connection ~ 3125 5325
Text Notes 2000 5900 0    50   ~ 0
I don't know how reliable these are when used as\npower switches, so the load is distributed through\nboth of them to offset this.
Text Label 8250 3225 0    50   ~ 0
LED_DCD
Entry Wire Line
	8225 3225 8125 3325
Wire Wire Line
	8225 3225 8875 3225
Entry Wire Line
	4900 3425 4800 3325
$Comp
L Device:LED D1
U 1 1 62E0C4F3
P 4800 2700
F 0 "D1" V 4839 2582 50  0000 R CNN
F 1 "DCD" V 4748 2582 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4800 2700 50  0001 C CNN
F 3 "~" H 4800 2700 50  0001 C CNN
	1    4800 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 62E0C4F9
P 4800 2550
F 0 "#PWR01" H 4800 2400 50  0001 C CNN
F 1 "VCC" H 4815 2723 50  0000 C CNN
F 2 "" H 4800 2550 50  0001 C CNN
F 3 "" H 4800 2550 50  0001 C CNN
	1    4800 2550
	1    0    0    -1  
$EndComp
Text Label 4800 3300 1    50   ~ 0
LED_DCD
Wire Wire Line
	4800 3325 4800 2850
Text Label 8250 3325 0    50   ~ 0
LED_RI
Entry Wire Line
	8225 3325 8125 3425
Wire Wire Line
	8225 3325 8875 3325
Entry Wire Line
	4500 3425 4400 3325
$Comp
L Device:LED D2
U 1 1 62E152EA
P 4400 2700
F 0 "D2" V 4439 2582 50  0000 R CNN
F 1 "RI" V 4348 2582 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4400 2700 50  0001 C CNN
F 3 "~" H 4400 2700 50  0001 C CNN
	1    4400 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 62E152F0
P 4400 2550
F 0 "#PWR0114" H 4400 2400 50  0001 C CNN
F 1 "VCC" H 4415 2723 50  0000 C CNN
F 2 "" H 4400 2550 50  0001 C CNN
F 3 "" H 4400 2550 50  0001 C CNN
	1    4400 2550
	1    0    0    -1  
$EndComp
Text Label 4400 3300 1    50   ~ 0
LED_RI
Wire Wire Line
	4400 3325 4400 2850
NoConn ~ 8875 2725
Text GLabel 8625 4025 0    50   Output ~ 0
VSB
Wire Wire Line
	8625 4025 8875 4025
Text GLabel 7775 1900 1    50   Input ~ 0
VSB
$Comp
L Diode:1N4148 D4
U 1 1 6436A7B2
P 7550 2350
F 0 "D4" H 7450 2250 50  0000 L CNN
F 1 "1N4148" H 7450 2175 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7550 2175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7550 2350 50  0001 C CNN
	1    7550 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6436D9D0
P 7775 2125
F 0 "R1" H 7845 2171 50  0000 L CNN
F 1 "470" H 7845 2080 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7705 2125 50  0001 C CNN
F 3 "~" H 7775 2125 50  0001 C CNN
	1    7775 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	7775 1900 7775 1975
$Comp
L Diode:1N4148 D3
U 1 1 64376E3B
P 7300 2125
F 0 "D3" V 7346 2045 50  0000 R CNN
F 1 "1N4148" V 7255 2045 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7300 1950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7300 2125 50  0001 C CNN
	1    7300 2125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 2275 7300 2350
Wire Wire Line
	7300 2350 7300 2550
Wire Wire Line
	7700 2350 7775 2350
Wire Wire Line
	7775 2350 7775 2275
Wire Wire Line
	7300 1900 7300 1825
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 643B972E
P 7150 2125
F 0 "JP1" V 7200 2325 50  0000 R CNN
F 1 "BYPASS" V 7125 2475 50  0000 R CNN
F 2 "solder_bridge:bridge" H 7150 2125 50  0001 C CNN
F 3 "~" H 7150 2125 50  0001 C CNN
	1    7150 2125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 1975 7150 1900
Wire Wire Line
	7150 1900 7300 1900
Wire Wire Line
	7300 1900 7300 1975
Connection ~ 7300 1900
Wire Wire Line
	7150 2275 7150 2350
Wire Wire Line
	7150 2350 7300 2350
Connection ~ 7300 2350
Wire Wire Line
	7400 2350 7300 2350
Text Notes 6900 1525 0    50   ~ 0
Over-complicated power light,\nthe idea is that when it is on\nstandby then the LED is dimmed.\nLink JP1 and skip remaining to\nskip this questionable "feature".
Wire Bus Line
	3550 3425 7925 3425
Wire Bus Line
	8125 2725 8125 3625
$EndSCHEMATC
