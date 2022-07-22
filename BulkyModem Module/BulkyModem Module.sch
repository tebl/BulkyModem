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
P 7850 3625
F 0 "A1" H 7850 4712 60  0000 C CNN
F 1 "NodeMCU_v3" H 7850 4606 60  0000 C CNN
F 2 "nodemcu_v3:NodeMCU-LoLinV3" H 7250 2775 60  0001 C CNN
F 3 "" H 7250 2775 60  0000 C CNN
	1    7850 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2400 6900 2325
$Comp
L power:+3.3V #PWR0102
U 1 1 62E2CDD0
P 6900 2325
F 0 "#PWR0102" H 6900 2175 50  0001 C CNN
F 1 "+3.3V" H 6915 2498 50  0000 C CNN
F 2 "" H 6900 2325 50  0001 C CNN
F 3 "" H 6900 2325 50  0001 C CNN
	1    6900 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3825 6975 3825
Wire Wire Line
	6975 3825 6975 4225
Wire Wire Line
	6975 4225 7050 4225
Wire Wire Line
	6975 4225 6975 4675
Wire Wire Line
	6975 4675 8725 4675
Wire Wire Line
	8725 4675 8725 4225
Wire Wire Line
	8725 4225 8650 4225
Connection ~ 6975 4225
Wire Wire Line
	8725 4225 8725 3525
Wire Wire Line
	8725 3525 8650 3525
Connection ~ 8725 4225
Wire Wire Line
	8725 4675 8725 4750
Connection ~ 8725 4675
$Comp
L power:GND #PWR0104
U 1 1 62E3E679
P 8725 4750
F 0 "#PWR0104" H 8725 4500 50  0001 C CNN
F 1 "GND" H 8730 4577 50  0000 C CNN
F 2 "" H 8725 4750 50  0001 C CNN
F 3 "" H 8725 4750 50  0001 C CNN
	1    8725 4750
	1    0    0    -1  
$EndComp
NoConn ~ 7050 2925
NoConn ~ 7050 3225
NoConn ~ 7050 3325
NoConn ~ 7050 3425
NoConn ~ 7050 3525
NoConn ~ 7050 3625
NoConn ~ 7050 4025
NoConn ~ 7050 4125
NoConn ~ 8650 3925
NoConn ~ 8650 3825
NoConn ~ 8650 3725
NoConn ~ 8650 3625
NoConn ~ 8650 3225
NoConn ~ 8650 2925
Wire Wire Line
	7050 3925 6900 3925
Wire Wire Line
	6900 3925 6900 2400
Connection ~ 6900 2400
Wire Wire Line
	8650 4325 8800 4325
Wire Wire Line
	8800 4325 8800 3425
Wire Wire Line
	6900 2400 8800 2400
Wire Wire Line
	8650 3425 8800 3425
Connection ~ 8800 3425
Wire Wire Line
	8800 3425 8800 2400
$Comp
L power:+5V #PWR0107
U 1 1 62E5D8ED
P 6750 2100
F 0 "#PWR0107" H 6750 1950 50  0001 C CNN
F 1 "+5V" H 6750 2275 50  0000 C CNN
F 2 "" H 6750 2100 50  0001 C CNN
F 3 "" H 6750 2100 50  0001 C CNN
	1    6750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2100 6750 4325
Wire Wire Line
	6750 4325 7050 4325
Text GLabel 8875 4125 2    50   Output ~ 0
ESP_TX
Wire Wire Line
	8650 4125 8875 4125
Text GLabel 9875 4025 2    50   Input ~ 0
ESP_RX
$Comp
L 74xx:74HCT244 U1
U 1 1 62F8565C
P 3000 4100
F 0 "U1" H 2750 4750 50  0000 C CNN
F 1 "74HCT244" H 3225 4750 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 3000 4100 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 3000 4100 50  0001 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 62F87D20
P 3000 3300
F 0 "#PWR01" H 3000 3150 50  0001 C CNN
F 1 "+5V" H 3000 3475 50  0000 C CNN
F 2 "" H 3000 3300 50  0001 C CNN
F 3 "" H 3000 3300 50  0001 C CNN
	1    3000 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 62F88CDF
P 3000 4975
F 0 "#PWR03" H 3000 4725 50  0001 C CNN
F 1 "GND" H 3005 4802 50  0000 C CNN
F 2 "" H 3000 4975 50  0001 C CNN
F 3 "" H 3000 4975 50  0001 C CNN
	1    3000 4975
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
Text GLabel 9875 3025 2    50   Input ~ 0
ESP_CTS
Text GLabel 8875 3125 2    50   Output ~ 0
ESP_RTS
Wire Wire Line
	8650 3125 8875 3125
NoConn ~ 6650 6925
$Sheet
S 1925 1800 1025 700 
U 6379233A
F0 "RS-232" 50
F1 "rs232.sch" 50
F2 "232_TX" I L 1925 2000 50 
F3 "232_RX" O L 1925 2100 50 
F4 "232_CTS" O L 1925 2300 50 
F5 "232_RTS" I L 1925 2200 50 
$EndSheet
$Sheet
S 3050 6225 1025 700 
U 6390AE73
F0 "Front panel" 50
F1 "front_panel.sch" 50
$EndSheet
Text GLabel 2100 4500 0    50   Input ~ 0
MODE_232
Text GLabel 2100 4600 0    50   Input ~ 0
MODE_C64
Text GLabel 2125 3600 0    50   Input ~ 0
ESP_TX
Wire Wire Line
	2125 3600 2425 3600
Wire Wire Line
	2500 4000 2425 4000
Wire Wire Line
	2425 4000 2425 3600
Connection ~ 2425 3600
Wire Wire Line
	2425 3600 2500 3600
Wire Wire Line
	1925 2000 1400 2000
Wire Wire Line
	1400 2100 1925 2100
Wire Wire Line
	1925 2200 1400 2200
Wire Wire Line
	1400 2300 1925 2300
Text Label 1425 2000 0    50   ~ 0
232_TX
Text Label 1425 2100 0    50   ~ 0
232_RX
Text Label 1425 2200 0    50   ~ 0
232_RTS
Text Label 1425 2300 0    50   ~ 0
232_CTS
Entry Wire Line
	1400 2000 1300 2100
Entry Wire Line
	1400 2100 1300 2200
Entry Wire Line
	1400 2200 1300 2300
Entry Wire Line
	1400 2300 1300 2400
Text Label 4000 3600 2    50   ~ 0
232_TX
Entry Wire Line
	4700 3500 4600 3600
Text Label 4000 4000 2    50   ~ 0
C64_TX
Text GLabel 2125 3700 0    50   Input ~ 0
ESP_RTS
Wire Wire Line
	2125 3700 2325 3700
Wire Wire Line
	2500 4100 2325 4100
Wire Wire Line
	2325 4100 2325 3700
Connection ~ 2325 3700
Wire Wire Line
	2325 3700 2500 3700
Text Label 4000 3700 2    50   ~ 0
232_RTS
Entry Wire Line
	4700 3600 4600 3700
Text Label 4000 4100 2    50   ~ 0
C64_RTS
Text Label 1425 3800 0    50   ~ 0
232_RX
Text Label 1425 4200 0    50   ~ 0
C64_RX
Wire Wire Line
	1400 3800 2500 3800
Wire Wire Line
	1400 4200 2500 4200
Text Label 1425 3900 0    50   ~ 0
232_CTS
Text Label 1425 4300 0    50   ~ 0
C64_CTS
Wire Wire Line
	1400 3900 2500 3900
Wire Wire Line
	1400 4300 2500 4300
Wire Wire Line
	3500 3900 3575 3900
Wire Wire Line
	3500 4300 3575 4300
Wire Wire Line
	3500 4200 3650 4200
Entry Wire Line
	1400 3800 1300 3900
Entry Wire Line
	1400 3900 1300 4000
Entry Wire Line
	1400 4200 1300 4300
Entry Wire Line
	1400 4300 1300 4400
Entry Wire Line
	4700 4000 4600 4100
Entry Wire Line
	4700 3900 4600 4000
$Sheet
S 3050 1800 1025 700 
U 63AD1846
F0 "C64 UserPort" 50
F1 "c64_userport.sch" 50
F2 "C64_CTS" O R 4075 2300 50 
F3 "C64_RX" O R 4075 2100 50 
F4 "C64_TX" I R 4075 2000 50 
F5 "C64_RTS" I R 4075 2200 50 
$EndSheet
Wire Wire Line
	4075 2000 4600 2000
Wire Wire Line
	4600 2100 4075 2100
Wire Wire Line
	4075 2200 4600 2200
Wire Wire Line
	4600 2300 4075 2300
Text Label 4575 2000 2    50   ~ 0
C64_TX
Text Label 4575 2100 2    50   ~ 0
C64_RX
Text Label 4575 2200 2    50   ~ 0
C64_RTS
Text Label 4575 2300 2    50   ~ 0
C64_CTS
Entry Wire Line
	4600 2000 4700 2100
Entry Wire Line
	4600 2100 4700 2200
Entry Wire Line
	4600 2200 4700 2300
Entry Wire Line
	4600 2300 4700 2400
$Sheet
S 1925 6225 1025 700 
U 63D786E4
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
Text GLabel 4225 3900 2    50   Output ~ 0
ESP_CTS
Text GLabel 4225 3800 2    50   Output ~ 0
ESP_RX
$Comp
L Device:R R?
U 1 1 63E1B523
P 9650 3025
AR Path="/6390AE73/63E1B523" Ref="R?"  Part="1" 
AR Path="/63E1B523" Ref="R19"  Part="1" 
F 0 "R19" V 9443 3025 50  0000 C CNN
F 1 "1k" V 9534 3025 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9580 3025 50  0001 C CNN
F 3 "~" H 9650 3025 50  0001 C CNN
	1    9650 3025
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63E1D8A2
P 9650 4025
AR Path="/6390AE73/63E1D8A2" Ref="R?"  Part="1" 
AR Path="/63E1D8A2" Ref="R20"  Part="1" 
F 0 "R20" V 9443 4025 50  0000 C CNN
F 1 "1k" V 9534 4025 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9580 4025 50  0001 C CNN
F 3 "~" H 9650 4025 50  0001 C CNN
	1    9650 4025
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63E1DF8E
P 9425 3250
AR Path="/6390AE73/63E1DF8E" Ref="R?"  Part="1" 
AR Path="/63E1DF8E" Ref="R17"  Part="1" 
F 0 "R17" H 9355 3204 50  0000 R CNN
F 1 "2k" H 9355 3295 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9355 3250 50  0001 C CNN
F 3 "~" H 9425 3250 50  0001 C CNN
	1    9425 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9425 3100 9425 3025
Wire Wire Line
	9425 3025 9500 3025
$Comp
L Device:R R?
U 1 1 63E2105A
P 9425 4250
AR Path="/6390AE73/63E2105A" Ref="R?"  Part="1" 
AR Path="/63E2105A" Ref="R18"  Part="1" 
F 0 "R18" H 9355 4204 50  0000 R CNN
F 1 "2k" H 9355 4295 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9355 4250 50  0001 C CNN
F 3 "~" H 9425 4250 50  0001 C CNN
	1    9425 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9425 4100 9425 4025
Wire Wire Line
	9425 4025 9500 4025
Wire Wire Line
	8650 4025 9425 4025
Connection ~ 9425 4025
$Comp
L power:GND #PWR0135
U 1 1 63E25FF5
P 9425 3400
F 0 "#PWR0135" H 9425 3150 50  0001 C CNN
F 1 "GND" H 9430 3227 50  0000 C CNN
F 2 "" H 9425 3400 50  0001 C CNN
F 3 "" H 9425 3400 50  0001 C CNN
	1    9425 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 63E26F24
P 9425 4400
F 0 "#PWR0136" H 9425 4150 50  0001 C CNN
F 1 "GND" H 9430 4227 50  0000 C CNN
F 2 "" H 9425 4400 50  0001 C CNN
F 3 "" H 9425 4400 50  0001 C CNN
	1    9425 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4975 3000 4900
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
	3500 4000 4600 4000
Wire Wire Line
	3500 4100 4600 4100
Wire Wire Line
	3500 3700 4600 3700
Wire Wire Line
	3500 3600 4600 3600
Wire Wire Line
	3500 3800 3650 3800
Wire Wire Line
	3575 4300 3575 3900
Connection ~ 3575 3900
Wire Wire Line
	3575 3900 4225 3900
Wire Wire Line
	3650 4200 3650 3800
Connection ~ 3650 3800
Wire Wire Line
	3650 3800 4225 3800
Wire Wire Line
	2100 4600 2500 4600
Wire Wire Line
	2100 4500 2500 4500
Wire Wire Line
	9875 4025 9800 4025
Wire Wire Line
	9800 3025 9875 3025
Text GLabel 6150 3725 0    50   Input ~ 0
MODE_C64
Connection ~ 9425 3025
$Comp
L Device:R R?
U 1 1 62F58556
P 6375 3725
AR Path="/6390AE73/62F58556" Ref="R?"  Part="1" 
AR Path="/62F58556" Ref="R23"  Part="1" 
F 0 "R23" V 6168 3725 50  0000 C CNN
F 1 "1k" V 6259 3725 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6305 3725 50  0001 C CNN
F 3 "~" H 6375 3725 50  0001 C CNN
	1    6375 3725
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62F5855C
P 6600 3950
AR Path="/6390AE73/62F5855C" Ref="R?"  Part="1" 
AR Path="/62F5855C" Ref="R22"  Part="1" 
F 0 "R22" H 6530 3904 50  0000 R CNN
F 1 "2k" H 6530 3995 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 3950 50  0001 C CNN
F 3 "~" H 6600 3950 50  0001 C CNN
	1    6600 3950
	1    0    0    1   
$EndComp
Wire Wire Line
	6600 3800 6600 3725
Wire Wire Line
	6600 3725 6525 3725
$Comp
L power:GND #PWR05
U 1 1 62F58564
P 6600 4100
F 0 "#PWR05" H 6600 3850 50  0001 C CNN
F 1 "GND" H 6605 3927 50  0000 C CNN
F 2 "" H 6600 4100 50  0001 C CNN
F 3 "" H 6600 4100 50  0001 C CNN
	1    6600 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6225 3725 6150 3725
Connection ~ 6600 3725
Wire Wire Line
	6600 3725 7050 3725
NoConn ~ 8650 3325
Wire Wire Line
	8650 3025 9425 3025
Text Notes 5325 3400 0    50   ~ 0
SK/IO6 isn't defined anywhere by\nZimodem, I'm just adding it case\nI need it later with the necessary\nfirmware changes to support it.
Wire Bus Line
	1300 1425 4700 1425
Wire Bus Line
	4700 1425 4700 4000
Wire Bus Line
	1300 1425 1300 4400
Text Notes 1300 4925 0    50   ~ 0
MODE_232 and MODE_C64 signals\nare controlled by the front panel\ncircuitry.
$EndSCHEMATC
