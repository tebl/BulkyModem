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
P 8125 3125
AR Path="/63D96468" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63D96468" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 8125 2975 50  0001 C CNN
F 1 "+5V" H 8125 3300 50  0000 C CNN
F 2 "" H 8125 3125 50  0001 C CNN
F 3 "" H 8125 3125 50  0001 C CNN
	1    8125 3125
	1    0    0    -1  
$EndComp
NoConn ~ 7725 3275
NoConn ~ 7725 4025
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
	7225 3200 7000 3200
Connection ~ 7225 3200
Connection ~ 7000 3200
Wire Wire Line
	7225 3200 7225 3275
Wire Wire Line
	7225 3200 7525 3200
Connection ~ 7525 3200
Wire Wire Line
	7525 3200 7525 3275
Wire Wire Line
	8125 3125 8125 3200
Connection ~ 8125 3200
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 63D9647F
P 7725 3200
AR Path="/63D9647F" Ref="JP?"  Part="1" 
AR Path="/63D786E4/63D9647F" Ref="JP2"  Part="1" 
F 0 "JP2" H 7725 3361 31  0000 C CNN
F 1 "BYPASS" H 7725 3299 31  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 7725 3200 50  0001 C CNN
F 3 "~" H 7725 3200 50  0001 C CNN
	1    7725 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7525 3200 7575 3200
Wire Wire Line
	7875 3200 7925 3200
Connection ~ 7925 3200
Wire Wire Line
	7925 3200 7925 3275
$Comp
L barrel_jack:VIN #PWR?
U 1 1 63D96489
P 6875 3125
AR Path="/63D96489" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63D96489" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 6875 2975 50  0001 C CNN
F 1 "VIN" H 6892 3298 50  0000 C CNN
F 2 "" H 6875 3125 50  0001 C CNN
F 3 "" H 6875 3125 50  0001 C CNN
	1    6875 3125
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
	7925 3200 8125 3200
Wire Wire Line
	8125 3200 8125 4100
Wire Wire Line
	8125 4100 7925 4100
Wire Wire Line
	7925 4100 7925 4025
Wire Wire Line
	7000 3200 7000 4100
Wire Wire Line
	7225 4025 7225 4200
Wire Wire Line
	7000 4100 7525 4100
Wire Wire Line
	6875 3125 6875 3200
Connection ~ 6875 3200
Wire Wire Line
	7000 3200 6875 3200
Wire Wire Line
	6875 3200 6875 3500
Wire Wire Line
	6875 3800 6875 4200
Wire Wire Line
	7525 4025 7525 4100
Text GLabel 7350 4275 3    50   Input ~ 0
PWR_EN
Wire Wire Line
	7350 4200 7350 4275
$Comp
L barrel_jack:barrel_9v J?
U 1 1 63DAB478
P 1375 4000
AR Path="/63DAB478" Ref="J?"  Part="1" 
AR Path="/63D786E4/63DAB478" Ref="J1"  Part="1" 
F 0 "J1" H 1454 4325 50  0000 C CNN
F 1 "DC IN" H 1454 4234 50  0000 C CNN
F 2 "BulkyModem:BARREL_JACK" H 1425 3960 50  0001 C CNN
F 3 "~" H 1425 3960 50  0001 C CNN
	1    1375 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63DAB47E
P 2050 4650
AR Path="/63DAB47E" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63DAB47E" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 2050 4400 50  0001 C CNN
F 1 "GND" H 2055 4477 50  0000 C CNN
F 2 "" H 2050 4650 50  0001 C CNN
F 3 "" H 2050 4650 50  0001 C CNN
	1    2050 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 63DAB484
P 4825 4000
AR Path="/63DAB484" Ref="C?"  Part="1" 
AR Path="/63D786E4/63DAB484" Ref="C6"  Part="1" 
F 0 "C6" H 4917 4046 50  0000 L CNN
F 1 "100nF" H 4917 3955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4825 4000 50  0001 C CNN
F 3 "~" H 4825 4000 50  0001 C CNN
	1    4825 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1675 3900 1750 3900
Wire Wire Line
	1675 4100 1750 4100
$Comp
L Device:CP1 C?
U 1 1 63DAB48C
P 2050 4000
AR Path="/63DAB48C" Ref="C?"  Part="1" 
AR Path="/63D786E4/63DAB48C" Ref="C1"  Part="1" 
F 0 "C1" H 2165 4046 50  0000 L CNN
F 1 "470uF" H 2165 3955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2050 4000 50  0001 C CNN
F 3 "~" H 2050 4000 50  0001 C CNN
	1    2050 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63DAB492
P 3975 3350
AR Path="/63DAB492" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63DAB492" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 3975 3200 50  0001 C CNN
F 1 "+5V" H 3975 3490 50  0000 C CNN
F 2 "" H 3975 3350 50  0000 C CNN
F 3 "" H 3975 3350 50  0000 C CNN
	1    3975 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5375 4575 5375 4500
$Comp
L power:GND #PWR?
U 1 1 63DAB499
P 5375 4650
AR Path="/63DAB499" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63DAB499" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 5375 4400 50  0001 C CNN
F 1 "GND" H 5380 4477 50  0000 C CNN
F 2 "" H 5375 4650 50  0001 C CNN
F 3 "" H 5375 4650 50  0001 C CNN
	1    5375 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 4100 4825 4575
Wire Wire Line
	4825 3425 4825 3900
Wire Wire Line
	5375 3425 5375 3500
Wire Wire Line
	3975 3350 3975 3425
Wire Wire Line
	1675 4000 1750 4000
Wire Wire Line
	1750 4000 1750 4100
Connection ~ 1750 4100
Wire Wire Line
	2050 3350 2050 3425
Wire Wire Line
	2050 3425 1750 3425
Connection ~ 2050 3425
Wire Wire Line
	1750 3425 1750 3900
Wire Wire Line
	2050 3425 2050 3850
Wire Wire Line
	2050 4575 1750 4575
Connection ~ 2050 4575
Wire Wire Line
	2050 4575 2050 4650
Wire Wire Line
	1750 4100 1750 4575
Wire Wire Line
	2050 4150 2050 4575
$Comp
L BulkyModem:DC_5V SYM?
U 1 1 63DAB4B1
P 1450 3500
AR Path="/63DAB4B1" Ref="SYM?"  Part="1" 
AR Path="/63D786E4/63DAB4B1" Ref="SYM1"  Part="1" 
F 0 "SYM1" H 1450 3721 50  0001 C CNN
F 1 "DC_5V" H 1450 3629 50  0000 C CNN
F 2 "BulkyModem:PWR_Specification" H 1325 3600 50  0001 C CNN
F 3 "" H 1325 3600 50  0001 C CNN
	1    1450 3500
	1    0    0    -1  
$EndComp
Text Notes 2725 2725 0    50   ~ 0
Power input and decoupling
$Comp
L barrel_jack:VIN #PWR?
U 1 1 63DAB4BE
P 2050 3350
AR Path="/63DAB4BE" Ref="#PWR?"  Part="1" 
AR Path="/63D786E4/63DAB4BE" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 2050 3200 50  0001 C CNN
F 1 "VIN" H 2067 3523 50  0000 C CNN
F 2 "" H 2050 3350 50  0001 C CNN
F 3 "" H 2050 3350 50  0001 C CNN
	1    2050 3350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U?
U 7 1 63DAB4C4
P 5375 4000
AR Path="/63DAB4C4" Ref="U?"  Part="7" 
AR Path="/63D786E4/63DAB4C4" Ref="U2"  Part="7" 
F 0 "U2" H 5375 4050 50  0000 C CNN
F 1 "74HCT04" H 5375 3950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5375 4000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 5375 4000 50  0001 C CNN
	7    5375 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5375 3425 4825 3425
Wire Wire Line
	5375 4650 5375 4575
Connection ~ 5375 4575
Text Notes 6325 2725 0    50   ~ 0
Power switch uses a relay to provide power to the rest\nof the circuitry beyond the power section itself. This\nbypasses the kind of dodgy switches, as well as making\nan exciting clicking sound. Solder in the bypass jumper\nto skip installing relay, but you'll need to unplug the\ncable to turn it off.
Wire Notes Line
	5825 1725 5825 5550
$Comp
L BulkyModem:Conn_Power J4
U 1 1 62DFBB40
P 2800 3950
F 0 "J4" H 3103 3946 50  0000 L CNN
F 1 "Conn_Power" H 3103 3855 50  0000 L CNN
F 2 "BulkyModem:Conn_Power" H 2800 3950 50  0001 C CNN
F 3 "~" H 2800 3950 50  0001 C CNN
	1    2800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3425 2525 3425
Wire Wire Line
	2525 3425 2525 3950
Wire Wire Line
	2525 3950 2600 3950
Wire Wire Line
	2600 4050 2525 4050
Wire Wire Line
	2525 4050 2525 4575
Wire Wire Line
	2525 4575 2050 4575
$Comp
L Device:C_Small C?
U 1 1 6319B9B5
P 4400 4000
AR Path="/6319B9B5" Ref="C?"  Part="1" 
AR Path="/63D786E4/6319B9B5" Ref="C18"  Part="1" 
F 0 "C18" H 4492 4046 50  0000 L CNN
F 1 "100nF" H 4492 3955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4400 4000 50  0001 C CNN
F 3 "~" H 4400 4000 50  0001 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4100 4400 4575
Wire Wire Line
	4400 3425 4400 3900
$Comp
L Device:C_Small C?
U 1 1 6319CE6C
P 3975 4000
AR Path="/6319CE6C" Ref="C?"  Part="1" 
AR Path="/63D786E4/6319CE6C" Ref="C17"  Part="1" 
F 0 "C17" H 4067 4046 50  0000 L CNN
F 1 "100nF" H 4067 3955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3975 4000 50  0001 C CNN
F 3 "~" H 3975 4000 50  0001 C CNN
	1    3975 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 4100 3975 4575
Wire Wire Line
	3975 3425 3975 3900
Connection ~ 4825 3425
Connection ~ 4825 4575
Wire Wire Line
	4825 4575 5375 4575
Connection ~ 4400 3425
Wire Wire Line
	4400 3425 3975 3425
Wire Wire Line
	3975 4575 4400 4575
Connection ~ 4400 4575
Wire Wire Line
	4400 4575 4825 4575
Connection ~ 3975 3425
Wire Wire Line
	4400 3425 4825 3425
$EndSCHEMATC
