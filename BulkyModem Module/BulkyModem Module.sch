EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "BulkyModem"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Commodore 64 and standard RS-232."
Comment4 "Retro WIFI modem, made for the fun of it. The goal is to have it selectable between"
$EndDescr
$Comp
L mounting:Mounting M1
U 1 1 62FE4CBA
P 10750 575
F 0 "M1" H 10750 675 50  0001 C CNN
F 1 "Mounting" H 10750 500 50  0001 C CNN
F 2 "mounting:M3" H 10750 575 50  0001 C CNN
F 3 "" H 10750 575 50  0001 C CNN
	1    10750 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 62D2AC13
P 10875 575
F 0 "M2" H 10875 675 50  0001 C CNN
F 1 "Mounting" H 10875 500 50  0001 C CNN
F 2 "mounting:M3" H 10875 575 50  0001 C CNN
F 3 "" H 10875 575 50  0001 C CNN
	1    10875 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 5E3B605A
P 11000 575
F 0 "M3" H 11000 675 50  0001 C CNN
F 1 "Mounting" H 11000 500 50  0001 C CNN
F 2 "mounting:M3" H 11000 575 50  0001 C CNN
F 3 "" H 11000 575 50  0001 C CNN
	1    11000 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 5E3B6065
P 11125 575
F 0 "M4" H 11125 675 50  0001 C CNN
F 1 "Mounting" H 11125 500 50  0001 C CNN
F 2 "mounting:M3" H 11125 575 50  0001 C CNN
F 3 "" H 11125 575 50  0001 C CNN
	1    11125 575 
	1    0    0    -1  
$EndComp
NoConn ~ 6625 150 
$Comp
L nodemcu_v3:NodeMCU_v3 A1
U 1 1 62E1BEF8
P 8425 3800
F 0 "A1" H 8425 4887 60  0000 C CNN
F 1 "NodeMCU_v3" H 8425 4781 60  0000 C CNN
F 2 "" H 7825 2950 60  0001 C CNN
F 3 "" H 7825 2950 60  0000 C CNN
	1    8425 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 2575 7475 2500
$Comp
L power:+3.3V #PWR0102
U 1 1 62E2CDD0
P 7475 2500
F 0 "#PWR0102" H 7475 2350 50  0001 C CNN
F 1 "+3.3V" H 7490 2673 50  0000 C CNN
F 2 "" H 7475 2500 50  0001 C CNN
F 3 "" H 7475 2500 50  0001 C CNN
	1    7475 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7625 4000 7550 4000
Wire Wire Line
	7550 4000 7550 4400
Wire Wire Line
	7550 4400 7625 4400
Wire Wire Line
	7550 4400 7550 4850
Wire Wire Line
	7550 4850 9300 4850
Wire Wire Line
	9300 4850 9300 4400
Wire Wire Line
	9300 4400 9225 4400
Connection ~ 7550 4400
Wire Wire Line
	9300 4400 9300 3700
Wire Wire Line
	9300 3700 9225 3700
Connection ~ 9300 4400
Wire Wire Line
	9300 4850 9300 4925
Connection ~ 9300 4850
$Comp
L power:GND #PWR0104
U 1 1 62E3E679
P 9300 4925
F 0 "#PWR0104" H 9300 4675 50  0001 C CNN
F 1 "GND" H 9305 4752 50  0000 C CNN
F 2 "" H 9300 4925 50  0001 C CNN
F 3 "" H 9300 4925 50  0001 C CNN
	1    9300 4925
	1    0    0    -1  
$EndComp
NoConn ~ 7625 3100
NoConn ~ 7625 3400
NoConn ~ 7625 3500
NoConn ~ 7625 3600
NoConn ~ 7625 3700
NoConn ~ 7625 3800
NoConn ~ 7625 3900
NoConn ~ 7625 4200
NoConn ~ 7625 4300
NoConn ~ 9225 4100
NoConn ~ 9225 4000
NoConn ~ 9225 3900
NoConn ~ 9225 3800
NoConn ~ 9225 3500
NoConn ~ 9225 3400
NoConn ~ 9225 3100
Wire Wire Line
	7625 4100 7475 4100
Wire Wire Line
	7475 4100 7475 2575
Connection ~ 7475 2575
Wire Wire Line
	9225 4500 9375 4500
Wire Wire Line
	9375 4500 9375 3600
Wire Wire Line
	7475 2575 9375 2575
Wire Wire Line
	9225 3600 9375 3600
Connection ~ 9375 3600
Wire Wire Line
	9375 3600 9375 2575
$Comp
L power:+5V #PWR0107
U 1 1 62E5D8ED
P 7325 2275
F 0 "#PWR0107" H 7325 2125 50  0001 C CNN
F 1 "+5V" H 7325 2450 50  0000 C CNN
F 2 "" H 7325 2275 50  0001 C CNN
F 3 "" H 7325 2275 50  0001 C CNN
	1    7325 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	7325 2275 7325 4500
Wire Wire Line
	7325 4500 7625 4500
Text GLabel 9450 4300 2    50   Output ~ 0
ESP_TX
Wire Wire Line
	9225 4300 9450 4300
Text GLabel 10450 4200 2    50   Input ~ 0
ESP_RX
$Comp
L 74xx:74HCT244 U1
U 1 1 62F8565C
P 4125 4950
F 0 "U1" H 3875 5600 50  0000 C CNN
F 1 "74HCT244" H 4350 5600 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 4125 4950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 4125 4950 50  0001 C CNN
	1    4125 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 62F87D20
P 4125 4150
F 0 "#PWR01" H 4125 4000 50  0001 C CNN
F 1 "+5V" H 4125 4325 50  0000 C CNN
F 2 "" H 4125 4150 50  0001 C CNN
F 3 "" H 4125 4150 50  0001 C CNN
	1    4125 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 62F88CDF
P 4125 5825
F 0 "#PWR03" H 4125 5575 50  0001 C CNN
F 1 "GND" H 4130 5652 50  0000 C CNN
F 2 "" H 4125 5825 50  0001 C CNN
F 3 "" H 4125 5825 50  0001 C CNN
	1    4125 5825
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U2
U 6 1 62F95922
P 6650 7225
F 0 "U2" H 6650 7542 50  0000 C CNN
F 1 "74HCT04" H 6650 7451 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6650 7225 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 6650 7225 50  0001 C CNN
	6    6650 7225
	0    -1   -1   0   
$EndComp
Text GLabel 10450 3200 2    50   Input ~ 0
ESP_CTS
Text GLabel 9450 3300 2    50   Output ~ 0
ESP_RTS
Wire Wire Line
	9225 3300 9450 3300
NoConn ~ 6650 6925
$Sheet
S 1325 750  1025 700 
U 6379233A
F0 "RS-232" 50
F1 "rs232.sch" 50
F2 "232_TX" I L 1325 950 50 
F3 "232_RX" O L 1325 1050 50 
F4 "232_CTS" O L 1325 1250 50 
F5 "232_RTS" I L 1325 1150 50 
$EndSheet
$Sheet
S 2600 750  1025 700 
U 6390AE73
F0 "Front panel" 50
F1 "front_panel.sch" 50
$EndSheet
Text GLabel 3225 5350 0    50   Input ~ 0
MODE_232
Text GLabel 3225 5450 0    50   Input ~ 0
MODE_C64
Text GLabel 3250 4450 0    50   Input ~ 0
ESP_TX
Wire Wire Line
	3250 4450 3550 4450
Wire Wire Line
	3625 4850 3550 4850
Wire Wire Line
	3550 4850 3550 4450
Connection ~ 3550 4450
Wire Wire Line
	3550 4450 3625 4450
Wire Wire Line
	1325 950  800  950 
Wire Wire Line
	800  1050 1325 1050
Wire Wire Line
	1325 1150 800  1150
Wire Wire Line
	800  1250 1325 1250
Text Label 825  950  0    50   ~ 0
232_TX
Text Label 825  1050 0    50   ~ 0
232_RX
Text Label 825  1150 0    50   ~ 0
232_RTS
Text Label 825  1250 0    50   ~ 0
232_CTS
Entry Wire Line
	800  950  700  1050
Entry Wire Line
	800  1050 700  1150
Entry Wire Line
	800  1150 700  1250
Entry Wire Line
	800  1250 700  1350
Text Label 5125 4450 2    50   ~ 0
232_TX
Entry Wire Line
	5825 4350 5725 4450
Text Label 5125 4850 2    50   ~ 0
C64_TX
Text GLabel 3250 4550 0    50   Input ~ 0
ESP_RTS
Wire Wire Line
	3250 4550 3450 4550
Wire Wire Line
	3625 4950 3450 4950
Wire Wire Line
	3450 4950 3450 4550
Connection ~ 3450 4550
Wire Wire Line
	3450 4550 3625 4550
Text Label 5125 4550 2    50   ~ 0
232_RTS
Entry Wire Line
	5825 4450 5725 4550
Text Label 5125 4950 2    50   ~ 0
C64_RTS
Text Label 2550 4650 0    50   ~ 0
232_RX
Text Label 2550 5050 0    50   ~ 0
C64_RX
Wire Wire Line
	2525 4650 3625 4650
Wire Wire Line
	2525 5050 3625 5050
Text Label 2550 4750 0    50   ~ 0
232_CTS
Text Label 2550 5150 0    50   ~ 0
C64_CTS
Wire Wire Line
	2525 4750 3625 4750
Wire Wire Line
	2525 5150 3625 5150
Wire Wire Line
	4625 4750 4700 4750
Wire Wire Line
	4625 5150 4700 5150
Wire Wire Line
	4625 5050 4775 5050
Entry Wire Line
	2525 4650 2425 4750
Entry Wire Line
	2525 4750 2425 4850
Entry Wire Line
	2525 5050 2425 5150
Entry Wire Line
	2525 5150 2425 5250
Entry Wire Line
	5825 4850 5725 4950
Entry Wire Line
	5825 4750 5725 4850
$Sheet
S 1325 1750 1025 700 
U 63AD1846
F0 "C64 UserPort" 50
F1 "c64_userport.sch" 50
F2 "C64_CTS" O L 1325 2250 50 
F3 "C64_RX" O L 1325 2050 50 
F4 "C64_TX" I L 1325 1950 50 
F5 "C64_RTS" I L 1325 2150 50 
$EndSheet
Wire Wire Line
	1325 1950 800  1950
Wire Wire Line
	800  2050 1325 2050
Wire Wire Line
	1325 2150 800  2150
Wire Wire Line
	800  2250 1325 2250
Text Label 825  1950 0    50   ~ 0
C64_TX
Text Label 825  2050 0    50   ~ 0
C64_RX
Text Label 825  2150 0    50   ~ 0
C64_RTS
Text Label 825  2250 0    50   ~ 0
C64_CTS
Entry Wire Line
	800  1950 700  2050
Entry Wire Line
	800  2050 700  2150
Entry Wire Line
	800  2150 700  2250
Entry Wire Line
	800  2250 700  2350
$Sheet
S 2600 1750 1025 700 
U 63D786E4
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
Text GLabel 5350 4750 2    50   Output ~ 0
ESP_CTS
Text GLabel 5350 4650 2    50   Output ~ 0
ESP_RX
$Comp
L Device:R R?
U 1 1 63E1B523
P 10225 3200
AR Path="/6390AE73/63E1B523" Ref="R?"  Part="1" 
AR Path="/63E1B523" Ref="R19"  Part="1" 
F 0 "R19" V 10018 3200 50  0000 C CNN
F 1 "1k" V 10109 3200 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10155 3200 50  0001 C CNN
F 3 "~" H 10225 3200 50  0001 C CNN
	1    10225 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63E1D8A2
P 10225 4200
AR Path="/6390AE73/63E1D8A2" Ref="R?"  Part="1" 
AR Path="/63E1D8A2" Ref="R20"  Part="1" 
F 0 "R20" V 10018 4200 50  0000 C CNN
F 1 "1k" V 10109 4200 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10155 4200 50  0001 C CNN
F 3 "~" H 10225 4200 50  0001 C CNN
	1    10225 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63E1DF8E
P 10000 3425
AR Path="/6390AE73/63E1DF8E" Ref="R?"  Part="1" 
AR Path="/63E1DF8E" Ref="R17"  Part="1" 
F 0 "R17" H 9930 3379 50  0000 R CNN
F 1 "2k" H 9930 3470 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9930 3425 50  0001 C CNN
F 3 "~" H 10000 3425 50  0001 C CNN
	1    10000 3425
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 3275 10000 3200
Wire Wire Line
	10000 3200 10075 3200
$Comp
L Device:R R?
U 1 1 63E2105A
P 10000 4425
AR Path="/6390AE73/63E2105A" Ref="R?"  Part="1" 
AR Path="/63E2105A" Ref="R18"  Part="1" 
F 0 "R18" H 9930 4379 50  0000 R CNN
F 1 "2k" H 9930 4470 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9930 4425 50  0001 C CNN
F 3 "~" H 10000 4425 50  0001 C CNN
	1    10000 4425
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 4275 10000 4200
Wire Wire Line
	10000 4200 10075 4200
Wire Wire Line
	9225 3200 10000 3200
Connection ~ 10000 3200
Wire Wire Line
	9225 4200 10000 4200
Connection ~ 10000 4200
$Comp
L power:GND #PWR0135
U 1 1 63E25FF5
P 10000 3575
F 0 "#PWR0135" H 10000 3325 50  0001 C CNN
F 1 "GND" H 10005 3402 50  0000 C CNN
F 2 "" H 10000 3575 50  0001 C CNN
F 3 "" H 10000 3575 50  0001 C CNN
	1    10000 3575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 63E26F24
P 10000 4575
F 0 "#PWR0136" H 10000 4325 50  0001 C CNN
F 1 "GND" H 10005 4402 50  0000 C CNN
F 2 "" H 10000 4575 50  0001 C CNN
F 3 "" H 10000 4575 50  0001 C CNN
	1    10000 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 5825 4125 5750
$Comp
L power:GND #PWR0138
U 1 1 63E5C8FB
P 6650 7525
F 0 "#PWR0138" H 6650 7275 50  0001 C CNN
F 1 "GND" H 6655 7352 50  0000 C CNN
F 2 "" H 6650 7525 50  0001 C CNN
F 3 "" H 6650 7525 50  0001 C CNN
	1    6650 7525
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4625 4850 5725 4850
Wire Wire Line
	4625 4950 5725 4950
Wire Wire Line
	4625 4550 5725 4550
Wire Wire Line
	4625 4450 5725 4450
Text Notes 2650 6350 0    50   ~ 0
JP7/JP12 is only intended as a way of\nenabling *one* of the two modes when\na front panel has not been installed.
Wire Wire Line
	4625 4650 4775 4650
Wire Wire Line
	4700 5150 4700 4750
Connection ~ 4700 4750
Wire Wire Line
	4700 4750 5350 4750
Wire Wire Line
	4775 5050 4775 4650
Connection ~ 4775 4650
Wire Wire Line
	4775 4650 5350 4650
Wire Bus Line
	2425 3825 5825 3825
Wire Bus Line
	700  3825 2425 3825
Connection ~ 2425 3825
Wire Wire Line
	3225 5450 3625 5450
Wire Wire Line
	3225 5350 3625 5350
Wire Wire Line
	10450 4200 10375 4200
Wire Wire Line
	10375 3200 10450 3200
Wire Bus Line
	2425 3825 2425 5250
Wire Bus Line
	5825 3825 5825 4850
Wire Bus Line
	700  1050 700  3825
$EndSCHEMATC
