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
L 74xx:74HCT04 U?
U 2 1 637E1867
P 8825 2900
AR Path="/637E1867" Ref="U?"  Part="2" 
AR Path="/6379233A/637E1867" Ref="U2"  Part="2" 
F 0 "U2" H 8825 3217 50  0000 C CNN
F 1 "74HCT04" H 8825 3126 50  0000 C CNN
F 2 "" H 8825 2900 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8825 2900 50  0001 C CNN
	2    8825 2900
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HCT04 U?
U 4 1 637E186D
P 8425 4525
AR Path="/637E186D" Ref="U?"  Part="4" 
AR Path="/6379233A/637E186D" Ref="U2"  Part="4" 
F 0 "U2" H 8425 4842 50  0000 C CNN
F 1 "74HCT04" H 8425 4751 50  0000 C CNN
F 2 "" H 8425 4525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8425 4525 50  0001 C CNN
	4    8425 4525
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U?
U 5 1 637E1873
P 8450 5150
AR Path="/637E1873" Ref="U?"  Part="5" 
AR Path="/6379233A/637E1873" Ref="U2"  Part="5" 
F 0 "U2" H 8450 5467 50  0000 C CNN
F 1 "74HCT04" H 8450 5376 50  0000 C CNN
F 2 "" H 8450 5150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8450 5150 50  0001 C CNN
	5    8450 5150
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX232 U?
U 1 1 637E1879
P 6300 3625
AR Path="/637E1879" Ref="U?"  Part="1" 
AR Path="/6379233A/637E1879" Ref="U3"  Part="1" 
F 0 "U3" H 6300 4075 50  0000 C CNN
F 1 "MAX232" H 6300 3975 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 6350 2575 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 6300 3725 50  0001 C CNN
	1    6300 3625
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 637E187F
P 6300 4825
AR Path="/637E187F" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/637E187F" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 6300 4575 50  0001 C CNN
F 1 "GND" H 6305 4652 50  0000 C CNN
F 2 "" H 6300 4825 50  0001 C CNN
F 3 "" H 6300 4825 50  0001 C CNN
	1    6300 4825
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 637E1885
P 6300 2425
AR Path="/637E1885" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/637E1885" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 6300 2275 50  0001 C CNN
F 1 "+5V" H 6300 2565 50  0000 C CNN
F 2 "" H 6300 2425 50  0000 C CNN
F 3 "" H 6300 2425 50  0000 C CNN
	1    6300 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 2725 5325 2775
Wire Wire Line
	5325 2975 5325 3025
Wire Wire Line
	5325 3025 5500 3025
Wire Wire Line
	5325 2725 5500 2725
Wire Wire Line
	4900 2975 4900 3225
Wire Wire Line
	4900 3225 5500 3225
$Comp
L power:+5V #PWR?
U 1 1 637E189D
P 4900 2775
AR Path="/637E189D" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/637E189D" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 4900 2625 50  0001 C CNN
F 1 "+5V" H 4900 2915 50  0000 C CNN
F 2 "" H 4900 2775 50  0000 C CNN
F 3 "" H 4900 2775 50  0000 C CNN
	1    4900 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7275 2725 7275 2775
Wire Wire Line
	7275 2975 7275 3025
Wire Wire Line
	7275 3025 7100 3025
Wire Wire Line
	7275 2725 7100 2725
$Comp
L power:GND #PWR?
U 1 1 637E18B3
P 5325 4850
AR Path="/637E18B3" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/637E18B3" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5325 4600 50  0001 C CNN
F 1 "GND" H 5330 4677 50  0000 C CNN
F 2 "" H 5325 4850 50  0001 C CNN
F 3 "" H 5325 4850 50  0001 C CNN
	1    5325 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 3525 5325 4650
Wire Wire Line
	5325 3525 5500 3525
$Comp
L 74xx:74HCT04 U?
U 3 1 637E18BF
P 8825 3525
AR Path="/637E18BF" Ref="U?"  Part="3" 
AR Path="/6379233A/637E18BF" Ref="U2"  Part="3" 
F 0 "U2" H 8825 3842 50  0000 C CNN
F 1 "74HCT04" H 8825 3751 50  0000 C CNN
F 2 "" H 8825 3525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8825 3525 50  0001 C CNN
	3    8825 3525
	-1   0    0    1   
$EndComp
$Comp
L BulkyModem:Swap_Output JP?
U 1 1 637E18C5
P 8050 3100
AR Path="/637E18C5" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E18C5" Ref="JP8"  Part="1" 
F 0 "JP8" V 8004 3168 50  0000 L CNN
F 1 "INV_TX" V 8095 3168 50  0000 L CNN
F 2 "" H 8050 3100 50  0001 C CNN
F 3 "~" H 8050 3100 50  0001 C CNN
	1    8050 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 3300 9200 3300
Wire Wire Line
	9200 2900 9125 2900
Wire Wire Line
	8050 2900 8525 2900
Wire Wire Line
	9200 2900 9200 3100
$Comp
L BulkyModem:Swap_Output JP?
U 1 1 637E18CF
P 8050 3725
AR Path="/637E18CF" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E18CF" Ref="JP9"  Part="1" 
F 0 "JP9" V 8004 3793 50  0000 L CNN
F 1 "INV_RTS" V 8095 3793 50  0000 L CNN
F 2 "" H 8050 3725 50  0001 C CNN
F 3 "~" H 8050 3725 50  0001 C CNN
	1    8050 3725
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 3925 9200 3925
Wire Wire Line
	9200 3525 9125 3525
Wire Wire Line
	8050 3525 8525 3525
Wire Wire Line
	9200 3525 9200 3725
Connection ~ 9200 3100
Wire Wire Line
	9200 3100 9200 3300
Connection ~ 9200 3725
Wire Wire Line
	9200 3725 9200 3925
Wire Wire Line
	9200 4125 8050 4125
Wire Wire Line
	8050 4525 8125 4525
Wire Wire Line
	9200 4525 8725 4525
Wire Wire Line
	8050 4525 8050 4325
Connection ~ 8050 4325
Wire Wire Line
	8050 4325 8050 4125
Wire Wire Line
	9425 4325 9350 4325
Wire Wire Line
	9200 3725 9425 3725
Wire Wire Line
	9200 3100 9425 3100
Wire Wire Line
	9225 4750 8075 4750
Wire Wire Line
	8075 5150 8150 5150
Wire Wire Line
	9225 5150 8750 5150
Wire Wire Line
	8075 5150 8075 4950
Connection ~ 8075 4950
Wire Wire Line
	8075 4950 8075 4750
Wire Wire Line
	9450 4950 9375 4950
Wire Wire Line
	7100 3925 7700 3925
Wire Wire Line
	7700 3925 7700 3725
Wire Wire Line
	7700 3725 7900 3725
Wire Wire Line
	7700 4125 7700 4325
Wire Wire Line
	7100 4125 7700 4125
Wire Wire Line
	7700 4325 8050 4325
Wire Wire Line
	7500 4325 7500 4950
Wire Wire Line
	7100 4325 7500 4325
Wire Wire Line
	7500 4950 8075 4950
Wire Wire Line
	7100 3725 7500 3725
Wire Wire Line
	7500 3725 7500 3100
Wire Wire Line
	7500 3100 7900 3100
$Comp
L BulkyModem:Swap_Input JP?
U 1 1 637E18FB
P 3750 4325
AR Path="/637E18FB" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E18FB" Ref="JP5"  Part="1" 
F 0 "JP5" H 3750 4450 50  0000 C CNN
F 1 "CTS_SEL" H 3750 4529 50  0000 C CNN
F 2 "" H 3750 4325 50  0001 C CNN
F 3 "~" H 3750 4325 50  0001 C CNN
	1    3750 4325
	-1   0    0    1   
$EndComp
$Comp
L BulkyModem:Swap_Output JP?
U 1 1 637E1901
P 4300 3925
AR Path="/637E1901" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E1901" Ref="JP6"  Part="1" 
F 0 "JP6" H 4300 4050 50  0000 C CNN
F 1 "RTS_SEL" H 4300 4175 50  0000 C CNN
F 2 "" H 4300 3925 50  0001 C CNN
F 3 "~" H 4300 3925 50  0001 C CNN
	1    4300 3925
	-1   0    0    1   
$EndComp
$Comp
L BulkyModem:Swap_Output JP?
U 1 1 637E190D
P 3200 3725
AR Path="/637E190D" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E190D" Ref="JP4"  Part="1" 
F 0 "JP4" H 3200 3838 50  0000 C CNN
F 1 "TxD_SEL" H 3200 3929 50  0000 C CNN
F 2 "" H 3200 3725 50  0001 C CNN
F 3 "~" H 3200 3725 50  0001 C CNN
	1    3200 3725
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 3725 3475 3725
Wire Wire Line
	2925 3725 2925 4125
Wire Wire Line
	2925 3725 3000 3725
Wire Wire Line
	2850 4125 2925 4125
Wire Wire Line
	3475 3725 3475 4200
Wire Wire Line
	2375 4200 2375 4125
Wire Wire Line
	2375 4125 2450 4125
Wire Wire Line
	2375 4200 3475 4200
Wire Wire Line
	4500 3925 4575 3925
Wire Wire Line
	4100 3925 4025 3925
Wire Wire Line
	4025 3925 4025 4325
Connection ~ 4025 4325
Wire Wire Line
	3950 4325 4025 4325
Wire Wire Line
	3475 4325 3475 4400
Wire Wire Line
	3475 4400 4575 4400
Wire Wire Line
	4575 4400 4575 3925
Connection ~ 4575 3925
Connection ~ 2925 4125
Connection ~ 3475 3725
Wire Wire Line
	3475 4325 3550 4325
Wire Wire Line
	3475 3725 5500 3725
Wire Wire Line
	4575 3925 5500 3925
Wire Wire Line
	2925 4125 5500 4125
Wire Wire Line
	4025 4325 5500 4325
$Comp
L solder_select:SolderJumper_3_Bridged12 JP?
U 1 1 637E192F
P 9225 4950
AR Path="/637E192F" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E192F" Ref="JP11"  Part="1" 
F 0 "JP11" V 9271 5017 50  0000 L CNN
F 1 "INV_CTS" V 9180 5017 50  0000 L CNN
F 2 "" H 9225 4950 50  0001 C CNN
F 3 "~" H 9225 4950 50  0001 C CNN
	1    9225 4950
	0    -1   -1   0   
$EndComp
$Comp
L solder_select:SolderJumper_3_Bridged12 JP?
U 1 1 637E1935
P 9200 4325
AR Path="/637E1935" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E1935" Ref="JP10"  Part="1" 
F 0 "JP10" V 9246 4392 50  0000 L CNN
F 1 "INV_RX" V 9155 4392 50  0000 L CNN
F 2 "" H 9200 4325 50  0001 C CNN
F 3 "~" H 9200 4325 50  0001 C CNN
	1    9200 4325
	0    -1   -1   0   
$EndComp
$Comp
L rs232_port:RS232_DCE J?
U 1 1 637EF808
P 1925 1725
AR Path="/637EF808" Ref="J?"  Part="1" 
AR Path="/6379233A/637EF808" Ref="J2"  Part="1" 
F 0 "J2" H 1913 2417 50  0000 C CNN
F 1 "DCE" H 1913 2326 50  0000 C CNN
F 2 "" H 1925 1725 50  0001 C CNN
F 3 " ~" H 1925 1725 50  0001 C CNN
	1    1925 1725
	-1   0    0    -1  
$EndComp
NoConn ~ 2225 2025
Wire Wire Line
	2225 2125 2300 2125
Wire Wire Line
	2300 2125 2300 2200
$Comp
L power:GND #PWR?
U 1 1 637EF811
P 2300 2200
AR Path="/637EF811" Ref="#PWR?"  Part="1" 
AR Path="/6379233A/637EF811" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 2300 1950 50  0001 C CNN
F 1 "GND" H 2305 2027 50  0000 C CNN
F 2 "" H 2300 2200 50  0001 C CNN
F 3 "" H 2300 2200 50  0001 C CNN
	1    2300 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2225 1925 2300 1925
Wire Wire Line
	2300 1925 2300 1425
Wire Wire Line
	2300 1425 2225 1425
Wire Wire Line
	2225 1325 2300 1325
Wire Wire Line
	2300 1325 2300 1425
Connection ~ 2300 1425
Text Notes 2475 4950 0    50   ~ 0
Jumpers allow the pins to be swapped, this should\naccount for differences in the cables used. Connecting\nthe device using a standard DB9 male to female cable,\nall of these should be set to pins 1-2.
Text Notes 7925 5800 0    50   ~ 0
Zimodem firmware compiled for ESP8266\ninverts signals, assuming the device\nconnected is a Commodore 64. To support\nboth we need to invert one set of signals\nback again.
Wire Wire Line
	3200 3575 3200 1525
Wire Wire Line
	2225 1525 3200 1525
Wire Wire Line
	3750 1625 3750 4175
Wire Wire Line
	2225 1625 3750 1625
Wire Wire Line
	2650 1725 2650 3975
Wire Wire Line
	2225 1725 2650 1725
Wire Wire Line
	4300 1825 4300 3775
Wire Wire Line
	2225 1825 4300 1825
Text HLabel 9425 3100 2    50   Input ~ 0
232_TX
Text HLabel 9425 3725 2    50   Input ~ 0
232_RTS
Text HLabel 9425 4325 2    50   Output ~ 0
232_RX
Text HLabel 9450 4950 2    50   Output ~ 0
232_CTS
$Comp
L BulkyModem:Swap_Input JP?
U 1 1 637E1907
P 2650 4125
AR Path="/637E1907" Ref="JP?"  Part="1" 
AR Path="/6379233A/637E1907" Ref="JP3"  Part="1" 
F 0 "JP3" H 2650 4250 50  0000 C CNN
F 1 "RxD_SEL" H 2650 4329 50  0000 C CNN
F 2 "" H 2650 4125 50  0001 C CNN
F 3 "~" H 2650 4125 50  0001 C CNN
	1    2650 4125
	-1   0    0    1   
$EndComp
Text Label 4900 4125 0    50   ~ 0
SER_RxD
Text Label 4900 3925 0    50   ~ 0
SER_RTS
Text Label 4900 4325 0    50   ~ 0
SER_CTS
Text Label 4900 3725 0    50   ~ 0
SER_TxD
Text Label 3175 1525 2    50   ~ 0
DCE_TxD
Text Label 3725 1625 2    50   ~ 0
DCE_CTS
Text Label 2625 1725 2    50   ~ 0
DCE_RxD
Text Label 4275 1825 2    50   ~ 0
DCE_RTS
$Comp
L Device:CP_Small C5
U 1 1 63E8A978
P 7275 2875
F 0 "C5" H 7363 2921 50  0000 L CNN
F 1 "1uF" H 7363 2830 50  0000 L CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 7275 2875 50  0001 C CNN
F 3 "~" H 7275 2875 50  0001 C CNN
	1    7275 2875
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C3
U 1 1 63E8F2C2
P 5325 2875
F 0 "C3" H 5413 2921 50  0000 L CNN
F 1 "1uF" H 5413 2830 50  0000 L CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 5325 2875 50  0001 C CNN
F 3 "~" H 5325 2875 50  0001 C CNN
	1    5325 2875
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 63E9006F
P 4900 2875
F 0 "C2" H 4812 2829 50  0000 R CNN
F 1 "1uF" H 4812 2920 50  0000 R CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 4900 2875 50  0001 C CNN
F 3 "~" H 4900 2875 50  0001 C CNN
	1    4900 2875
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C4
U 1 1 63E92639
P 5325 4750
F 0 "C4" H 5237 4704 50  0000 R CNN
F 1 "1uF" H 5237 4795 50  0000 R CNN
F 2 "BulkyModem:CP_Radial_D4.0mm_P2.00mm_Custom" H 5325 4750 50  0001 C CNN
F 3 "~" H 5325 4750 50  0001 C CNN
	1    5325 4750
	-1   0    0    1   
$EndComp
Text Notes 5525 5500 0    50   ~ 0
C2-C5 must be electrolytic 1uF when using\nolder or cheaper MAX232 variants, these\ncan be replaced with standard 100nF\ncapacitors when used with MAX232A.
$EndSCHEMATC
