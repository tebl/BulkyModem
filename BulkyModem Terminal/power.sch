EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "BulkyModem Module (Power)"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L hk19f-dc:HK19F-DC K?
U 1 1 63D96462
P 7225 3650
AR Path="/63D96462" Ref="K?"  Part="1" 
AR Path="/63D786E4/63D96462" Ref="K1"  Part="1" 
F 0 "K1" H 8150 3700 50  0000 L CNN
F 1 "HK19F-DC" H 8150 3600 50  0000 L CNN
F 2 "HK19F-DC:HK19F-DC" H 8075 3775 50  0001 C CNN
F 3 "" H 8075 3775 50  0001 C CNN
	1    7225 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63D96468
P 8125 2975
AR Path="/63D96468" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63D96468" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 8125 2825 50  0001 C CNN
F 1 "+5V" H 8125 3150 50  0000 C CNN
F 2 "" H 8125 2975 50  0001 C CNN
F 3 "" H 8125 2975 50  0001 C CNN
	1    8125 2975
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 63D96470
P 6875 3650
AR Path="/63D96470" Ref="D?"  Part="1" 
AR Path="/63D786E4/63D96470" Ref="D1"  Part="1" 
F 0 "D1" V 6800 3400 50  0000 L CNN
F 1 "1n4148" V 6875 3300 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6875 3650 50  0001 C CNN
F 3 "~" H 6875 3650 50  0001 C CNN
	1    6875 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	7225 3050 7000 3050
Connection ~ 7225 3050
Connection ~ 7000 3050
Wire Wire Line
	7225 3050 7525 3050
Connection ~ 7525 3050
Wire Wire Line
	8125 2975 8125 3050
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 63D9647F
P 7725 3050
AR Path="/63D9647F" Ref="JP?"  Part="1" 
AR Path="/63D786E4/63D9647F" Ref="JP2"  Part="1" 
F 0 "JP2" H 7725 3211 31  0000 C CNN
F 1 "BYPASS" H 7725 3149 31  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 7725 3050 50  0001 C CNN
F 3 "~" H 7725 3050 50  0001 C CNN
	1    7725 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7525 3050 7575 3050
Wire Wire Line
	7875 3050 7925 3050
Connection ~ 7925 3050
$Comp
L barrel_jack:VIN #PWR?
U 1 1 63D96489
P 6875 2975
AR Path="/63D96489" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63D96489" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 6875 2825 50  0001 C CNN
F 1 "VIN" H 6892 3148 50  0000 C CNN
F 2 "" H 6875 2975 50  0001 C CNN
F 3 "" H 6875 2975 50  0001 C CNN
	1    6875 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	7225 4200 7225 4275
Connection ~ 7225 4200
Wire Wire Line
	6875 4200 7225 4200
Wire Wire Line
	7225 4200 7350 4200
Wire Wire Line
	7225 4475 7225 4550
$Comp
L power:GND #PWR?
U 1 1 63D96494
P 7225 4550
AR Path="/63D96494" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63D96494" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 7225 4300 50  0001 C CNN
F 1 "GND" H 7230 4377 50  0000 C CNN
F 2 "" H 7225 4550 50  0001 C CNN
F 3 "" H 7225 4550 50  0001 C CNN
	1    7225 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 63D9649A
P 7225 4375
AR Path="/63D9649A" Ref="JP?"  Part="1" 
AR Path="/63D786E4/63D9649A" Ref="JP1"  Part="1" 
F 0 "JP1" V 7275 4650 50  0000 R CNN
F 1 "PWR_SW" V 7200 4725 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7225 4375 50  0001 C CNN
F 3 "~" H 7225 4375 50  0001 C CNN
	1    7225 4375
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7925 3050 8125 3050
Wire Wire Line
	8125 4100 7925 4100
Wire Wire Line
	7925 4100 7925 4025
Wire Wire Line
	7225 4025 7225 4200
Wire Wire Line
	7000 4100 7525 4100
Wire Wire Line
	6875 2975 6875 3050
Connection ~ 6875 3050
Wire Wire Line
	7000 3050 6875 3050
Wire Wire Line
	6875 3800 6875 4200
Wire Wire Line
	7525 4025 7525 4100
Text GLabel 7350 4275 3    50   Input ~ 0
PWR_EN
Wire Wire Line
	7350 4200 7350 4275
$Comp
L power:GND #PWR?
U 1 1 63DAB47E
P 3425 3225
AR Path="/63DAB47E" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63DAB47E" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 3425 2975 50  0001 C CNN
F 1 "GND" H 3430 3052 50  0000 C CNN
F 2 "" H 3425 3225 50  0001 C CNN
F 3 "" H 3425 3225 50  0001 C CNN
	1    3425 3225
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 63DAB484
P 3425 4900
AR Path="/63DAB484" Ref="C?"  Part="1" 
AR Path="/63D786E4/63DAB484" Ref="C6"  Part="1" 
F 0 "C6" H 3517 4946 50  0000 L CNN
F 1 "100nF" H 3517 4855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3425 4900 50  0001 C CNN
F 3 "~" H 3425 4900 50  0001 C CNN
	1    3425 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 63DAB48C
P 3425 2575
AR Path="/63DAB48C" Ref="C?"  Part="1" 
AR Path="/63D786E4/63DAB48C" Ref="C1"  Part="1" 
F 0 "C1" H 3540 2621 50  0000 L CNN
F 1 "470uF" H 3540 2530 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3425 2575 50  0001 C CNN
F 3 "~" H 3425 2575 50  0001 C CNN
	1    3425 2575
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63DAB492
P 1300 4250
AR Path="/63DAB492" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63DAB492" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 1300 4100 50  0001 C CNN
F 1 "+5V" H 1300 4390 50  0000 C CNN
F 2 "" H 1300 4250 50  0000 C CNN
F 3 "" H 1300 4250 50  0000 C CNN
	1    1300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 5475 3975 5400
$Comp
L power:GND #PWR?
U 1 1 63DAB499
P 4875 5550
AR Path="/63DAB499" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63DAB499" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 4875 5300 50  0001 C CNN
F 1 "GND" H 4880 5377 50  0000 C CNN
F 2 "" H 4875 5550 50  0001 C CNN
F 3 "" H 4875 5550 50  0001 C CNN
	1    4875 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 5000 3425 5475
Wire Wire Line
	3425 4325 3425 4800
Wire Wire Line
	3975 4325 3975 4400
Wire Wire Line
	3425 2000 3425 2425
Connection ~ 3425 3150
Wire Wire Line
	3425 3150 3425 3225
Wire Wire Line
	3425 2725 3425 3150
Text Notes 2700 1250 0    50   ~ 0
Power input and decoupling
$Comp
L 74xx:74HCT04 U?
U 7 1 63DAB4C4
P 3975 4900
AR Path="/63DAB4C4" Ref="U?"  Part="7" 
AR Path="/63D786E4/63DAB4C4" Ref="U2"  Part="7" 
F 0 "U2" H 3975 4950 50  0000 C CNN
F 1 "74HCT04" H 3975 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3975 4900 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 3975 4900 50  0001 C CNN
	7    3975 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 4325 3425 4325
Wire Wire Line
	4875 5550 4875 5475
Connection ~ 3975 5475
Text Notes 6325 2725 0    50   ~ 0
Power switch uses a relay to provide power to the rest\nof the circuitry beyond the power section itself. This\nbypasses the kind of dodgy switches, as well as making\nan exciting clicking sound. Solder in the bypass jumper\nto skip installing relay, but you'll need to unplug the\ncable to turn it off.
Wire Notes Line
	5825 1725 5825 5550
$Comp
L Device:C_Small C?
U 1 1 6319B9B5
P 3000 4900
AR Path="/6319B9B5" Ref="C?"  Part="1" 
AR Path="/63D786E4/6319B9B5" Ref="C18"  Part="1" 
F 0 "C18" H 3092 4946 50  0000 L CNN
F 1 "100nF" H 3092 4855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3000 4900 50  0001 C CNN
F 3 "~" H 3000 4900 50  0001 C CNN
	1    3000 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5000 3000 5475
Wire Wire Line
	3000 4325 3000 4800
$Comp
L Device:C_Small C?
U 1 1 6319CE6C
P 2575 4900
AR Path="/6319CE6C" Ref="C?"  Part="1" 
AR Path="/63D786E4/6319CE6C" Ref="C17"  Part="1" 
F 0 "C17" H 2667 4946 50  0000 L CNN
F 1 "100nF" H 2667 4855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2575 4900 50  0001 C CNN
F 3 "~" H 2575 4900 50  0001 C CNN
	1    2575 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 5000 2575 5475
Wire Wire Line
	2575 4325 2575 4800
Connection ~ 3425 4325
Connection ~ 3425 5475
Wire Wire Line
	3425 5475 3975 5475
Connection ~ 3000 4325
Wire Wire Line
	3000 4325 2575 4325
Wire Wire Line
	2575 5475 3000 5475
Connection ~ 3000 5475
Wire Wire Line
	3000 5475 3425 5475
Connection ~ 2575 4325
Wire Wire Line
	3000 4325 3425 4325
$Comp
L Device:C_Small C?
U 1 1 631D80DC
P 2150 4900
AR Path="/631D80DC" Ref="C?"  Part="1" 
AR Path="/63D786E4/631D80DC" Ref="C19"  Part="1" 
F 0 "C19" H 2242 4946 50  0000 L CNN
F 1 "100nF" H 2242 4855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2150 4900 50  0001 C CNN
F 3 "~" H 2150 4900 50  0001 C CNN
	1    2150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5000 2150 5475
Wire Wire Line
	2150 4325 2150 4800
Wire Wire Line
	2150 5475 2575 5475
Connection ~ 2575 5475
Wire Wire Line
	2150 4325 2575 4325
$Comp
L 74xx:74HCT04 U?
U 7 1 63263AE9
P 4425 4900
AR Path="/63263AE9" Ref="U?"  Part="7" 
AR Path="/63D786E4/63263AE9" Ref="U5"  Part="7" 
F 0 "U5" H 4425 4950 50  0000 C CNN
F 1 "74HCT04" H 4425 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 4425 4900 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 4425 4900 50  0001 C CNN
	7    4425 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 4325 4425 4325
Wire Wire Line
	4425 4325 4425 4400
Connection ~ 3975 4325
Wire Wire Line
	4425 5400 4425 5475
Wire Wire Line
	4425 5475 3975 5475
$Comp
L power:GND #PWR?
U 1 1 632A80BC
P 6200 7500
AR Path="/632A80BC" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/632A80BC" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 6200 7250 50  0001 C CNN
F 1 "GND" H 6205 7327 50  0000 C CNN
F 2 "" H 6200 7500 50  0001 C CNN
F 3 "" H 6200 7500 50  0001 C CNN
	1    6200 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 632DE4DB
P 1725 4900
AR Path="/632DE4DB" Ref="C?"  Part="1" 
AR Path="/63D786E4/632DE4DB" Ref="C7"  Part="1" 
F 0 "C7" H 1817 4946 50  0000 L CNN
F 1 "100nF" H 1817 4855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1725 4900 50  0001 C CNN
F 3 "~" H 1725 4900 50  0001 C CNN
	1    1725 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1725 5000 1725 5475
Wire Wire Line
	1725 4325 1725 4800
Wire Wire Line
	1725 5475 2150 5475
Wire Wire Line
	1725 4325 2150 4325
Connection ~ 8125 3050
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 64522A66
P 3425 1925
F 0 "#FLG0101" H 3425 2000 50  0001 C CNN
F 1 "PWR_FLAG" H 3425 2098 50  0001 C CNN
F 2 "" H 3425 1925 50  0001 C CNN
F 3 "~" H 3425 1925 50  0001 C CNN
	1    3425 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 1925 3425 2000
$Comp
L 74xx:74LS32 U6
U 5 1 64571FD8
P 4875 4900
F 0 "U6" H 4875 4950 50  0000 C CNN
F 1 "74HCT32" H 4875 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 4875 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4875 4900 50  0001 C CNN
	5    4875 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 4325 4875 4325
Wire Wire Line
	4875 4325 4875 4400
Connection ~ 4425 4325
Wire Wire Line
	4875 5475 4425 5475
Connection ~ 4425 5475
Wire Wire Line
	4875 5400 4875 5475
Connection ~ 4875 5475
$Comp
L 74xx:74LS32 U6
U 4 1 6458699B
P 6100 7050
F 0 "U6" H 6100 7375 50  0000 C CNN
F 1 "74HCT32" H 6100 7284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6100 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6100 7050 50  0001 C CNN
	4    6100 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 7425 6200 7500
Wire Wire Line
	6000 7350 6000 7425
Wire Wire Line
	6200 7350 6200 7425
Connection ~ 6200 7425
Wire Wire Line
	6200 7425 6000 7425
NoConn ~ 6100 6750
$Comp
L Device:C_Small C?
U 1 1 64802B72
P 1300 4900
AR Path="/64802B72" Ref="C?"  Part="1" 
AR Path="/63D786E4/64802B72" Ref="C8"  Part="1" 
F 0 "C8" H 1392 4946 50  0000 L CNN
F 1 "100nF" H 1392 4855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1300 4900 50  0001 C CNN
F 3 "~" H 1300 4900 50  0001 C CNN
	1    1300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5000 1300 5475
Wire Wire Line
	1300 5475 1725 5475
Wire Wire Line
	1300 4250 1300 4325
Wire Wire Line
	1725 4325 1300 4325
Connection ~ 1725 4325
Connection ~ 1300 4325
Wire Wire Line
	1300 4325 1300 4800
Connection ~ 3125 2000
Wire Wire Line
	3125 2675 3125 3150
Connection ~ 2750 2675
Wire Wire Line
	2750 2675 3125 2675
Wire Wire Line
	2750 2675 2750 2575
Wire Wire Line
	3125 2475 3050 2475
$Comp
L Diode:1N5819 D11
U 1 1 644AC11F
P 2900 2475
F 0 "D11" H 2900 2258 50  0000 C CNN
F 1 "1N5819" H 2900 2349 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2900 2300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2900 2475 50  0001 C CNN
	1    2900 2475
	-1   0    0    1   
$EndComp
Wire Wire Line
	3125 2000 3425 2000
$Comp
L barrel_jack:VIN #PWR?
U 1 1 63DAB4BE
P 3125 1925
AR Path="/63DAB4BE" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63DAB4BE" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 3125 1775 50  0001 C CNN
F 1 "VIN" H 3142 2098 50  0000 C CNN
F 2 "" H 3125 1925 50  0001 C CNN
F 3 "" H 3125 1925 50  0001 C CNN
	1    3125 1925
	1    0    0    -1  
$EndComp
$Comp
L BulkyModem:DC_5V SYM?
U 1 1 63DAB4B1
P 2450 2075
AR Path="/63DAB4B1" Ref="SYM?"  Part="1" 
AR Path="/63D786E4/63DAB4B1" Ref="SYM1"  Part="1" 
F 0 "SYM1" H 2450 2296 50  0001 C CNN
F 1 "DC_5V" H 2450 2204 50  0000 C CNN
F 2 "BulkyModem:PWR_Specification" H 2325 2175 50  0001 C CNN
F 3 "" H 2325 2175 50  0001 C CNN
	1    2450 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 3150 3125 3150
Wire Wire Line
	3125 2000 3125 2475
Wire Wire Line
	3125 1925 3125 2000
Wire Wire Line
	2675 2575 2750 2575
Wire Wire Line
	2675 2675 2750 2675
Wire Wire Line
	2675 2475 2750 2475
$Comp
L barrel_jack:Jack-DC J?
U 1 1 63DAB478
P 2375 2575
AR Path="/63DAB478" Ref="J?"  Part="1" 
AR Path="/63D786E4/63DAB478" Ref="J1"  Part="1" 
F 0 "J1" H 2454 2900 50  0000 C CNN
F 1 "DC IN" H 2454 2809 50  0000 C CNN
F 2 "BulkyModem:BARREL_JACK" H 2425 2535 50  0001 C CNN
F 3 "~" H 2425 2535 50  0001 C CNN
	1    2375 2575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64A820CC
P 7725 5000
AR Path="/64A820CC" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/64A820CC" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/64A820CC" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 7725 4750 50  0001 C CNN
F 1 "GND" H 7730 4827 50  0000 C CNN
F 2 "" H 7725 5000 50  0001 C CNN
F 3 "" H 7725 5000 50  0001 C CNN
	1    7725 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64A820D2
P 7725 4850
AR Path="/64A820D2" Ref="R?"  Part="1" 
AR Path="/6390AE73/64A820D2" Ref="R?"  Part="1" 
AR Path="/63D786E4/64A820D2" Ref="R1"  Part="1" 
F 0 "R1" V 7518 4850 50  0000 C CNN
F 1 "2k2" V 7609 4850 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7655 4850 50  0001 C CNN
F 3 "~" H 7725 4850 50  0001 C CNN
	1    7725 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 64A820D8
P 7725 4475
AR Path="/64A820D8" Ref="D?"  Part="1" 
AR Path="/6390AE73/64A820D8" Ref="D?"  Part="1" 
AR Path="/63D786E4/64A820D8" Ref="D12"  Part="1" 
F 0 "D12" H 7718 4220 50  0000 C CNN
F 1 "STANDBY" H 7718 4311 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7725 4475 50  0001 C CNN
F 3 "~" H 7725 4475 50  0001 C CNN
	1    7725 4475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7725 4700 7725 4625
Wire Wire Line
	6875 3050 6875 3500
Wire Wire Line
	7225 3050 7225 3275
Wire Wire Line
	7525 3050 7525 3275
Wire Wire Line
	7925 3050 7925 3275
Wire Wire Line
	7000 3050 7000 4100
Wire Wire Line
	8125 3050 8125 4100
Text GLabel 8225 4200 2    50   Output ~ 0
VSB
Wire Wire Line
	7725 4200 8225 4200
Connection ~ 3425 2000
Wire Wire Line
	7725 4200 7725 4025
NoConn ~ 7725 3275
Wire Wire Line
	7725 4325 7725 4200
Connection ~ 7725 4200
$EndSCHEMATC
