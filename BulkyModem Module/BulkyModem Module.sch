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
$Comp
L nodemcu_v3:NodeMCU_v3 A1
U 1 1 62E1BEF8
P 7650 3625
F 0 "A1" H 7650 4712 60  0000 C CNN
F 1 "NodeMCU_v3" H 7650 4606 60  0000 C CNN
F 2 "nodemcu_v3:NodeMCU-LoLinV3" H 7050 2775 60  0001 C CNN
F 3 "" H 7050 2775 60  0000 C CNN
	1    7650 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2400 6700 2325
$Comp
L power:+3.3V #PWR0102
U 1 1 62E2CDD0
P 6700 2325
F 0 "#PWR0102" H 6700 2175 50  0001 C CNN
F 1 "+3.3V" H 6715 2498 50  0000 C CNN
F 2 "" H 6700 2325 50  0001 C CNN
F 3 "" H 6700 2325 50  0001 C CNN
	1    6700 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3825 6775 3825
Wire Wire Line
	6775 3825 6775 4225
Wire Wire Line
	6775 4225 6850 4225
Wire Wire Line
	6775 4225 6775 4675
Wire Wire Line
	6775 4675 8525 4675
Wire Wire Line
	8525 4675 8525 4225
Wire Wire Line
	8525 4225 8450 4225
Connection ~ 6775 4225
Wire Wire Line
	8525 4225 8525 3525
Wire Wire Line
	8525 3525 8450 3525
Connection ~ 8525 4225
Wire Wire Line
	8525 4675 8525 4750
Connection ~ 8525 4675
$Comp
L power:GND #PWR0104
U 1 1 62E3E679
P 8525 4750
F 0 "#PWR0104" H 8525 4500 50  0001 C CNN
F 1 "GND" H 8530 4577 50  0000 C CNN
F 2 "" H 8525 4750 50  0001 C CNN
F 3 "" H 8525 4750 50  0001 C CNN
	1    8525 4750
	1    0    0    -1  
$EndComp
NoConn ~ 6850 2925
NoConn ~ 6850 3225
NoConn ~ 6850 3325
NoConn ~ 6850 3425
NoConn ~ 6850 3525
NoConn ~ 6850 3625
NoConn ~ 6850 4025
NoConn ~ 6850 4125
NoConn ~ 8450 3925
NoConn ~ 8450 3825
NoConn ~ 8450 3725
NoConn ~ 8450 3225
NoConn ~ 8450 2925
Wire Wire Line
	6850 3925 6700 3925
Wire Wire Line
	6700 3925 6700 2400
Connection ~ 6700 2400
Wire Wire Line
	8450 4325 8600 4325
Wire Wire Line
	8600 4325 8600 3425
Wire Wire Line
	6700 2400 8600 2400
Wire Wire Line
	8450 3425 8600 3425
Connection ~ 8600 3425
Wire Wire Line
	8600 3425 8600 2400
$Comp
L power:+5V #PWR0107
U 1 1 62E5D8ED
P 6550 2100
F 0 "#PWR0107" H 6550 1950 50  0001 C CNN
F 1 "+5V" H 6550 2275 50  0000 C CNN
F 2 "" H 6550 2100 50  0001 C CNN
F 3 "" H 6550 2100 50  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2100 6550 4325
Wire Wire Line
	6550 4325 6850 4325
Text GLabel 8675 4125 2    50   Output ~ 0
ESP_TX
Wire Wire Line
	8450 4125 8675 4125
Text GLabel 9775 4025 2    50   Input ~ 0
ESP_RX
$Comp
L 74xx:74HCT244 U1
U 1 1 62F8565C
P 2425 4100
F 0 "U1" H 2175 4750 50  0000 C CNN
F 1 "74HCT244" H 2650 4750 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 2425 4100 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 2425 4100 50  0001 C CNN
	1    2425 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 62F87D20
P 2425 3300
F 0 "#PWR01" H 2425 3150 50  0001 C CNN
F 1 "+5V" H 2425 3475 50  0000 C CNN
F 2 "" H 2425 3300 50  0001 C CNN
F 3 "" H 2425 3300 50  0001 C CNN
	1    2425 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 62F88CDF
P 2425 4975
F 0 "#PWR03" H 2425 4725 50  0001 C CNN
F 1 "GND" H 2430 4802 50  0000 C CNN
F 2 "" H 2425 4975 50  0001 C CNN
F 3 "" H 2425 4975 50  0001 C CNN
	1    2425 4975
	-1   0    0    -1  
$EndComp
Text GLabel 9775 3025 2    50   Input ~ 0
ESP_CTS
Text GLabel 8850 3125 2    50   Output ~ 0
ESP_RTS
$Sheet
S 1350 1575 1025 825 
U 6379233A
F0 "RS-232" 50
F1 "rs232.sch" 50
F2 "232_TX" I L 1350 1775 50 
F3 "232_RX" O L 1350 1875 50 
F4 "232_CTS" O L 1350 2075 50 
F5 "232_RTS" I L 1350 1975 50 
F6 "232_DCD" I L 1350 2175 50 
F7 "232_RI" I L 1350 2275 50 
$EndSheet
$Sheet
S 3050 6225 1025 700 
U 6390AE73
F0 "Front panel" 50
F1 "front_panel.sch" 50
$EndSheet
Text GLabel 1525 4500 0    50   Input ~ 0
MODE_232
Text GLabel 1525 4600 0    50   Input ~ 0
MODE_C64
Text GLabel 1550 3600 0    50   Input ~ 0
ESP_TX
Wire Wire Line
	1550 3600 1850 3600
Wire Wire Line
	1925 4000 1850 4000
Wire Wire Line
	1850 4000 1850 3600
Connection ~ 1850 3600
Wire Wire Line
	1850 3600 1925 3600
Wire Wire Line
	1350 1775 825  1775
Wire Wire Line
	825  1875 1350 1875
Wire Wire Line
	1350 1975 825  1975
Wire Wire Line
	825  2075 1350 2075
Text Label 850  1775 0    50   ~ 0
232_TX
Text Label 850  1875 0    50   ~ 0
232_RX
Text Label 850  1975 0    50   ~ 0
232_RTS
Text Label 850  2075 0    50   ~ 0
232_CTS
Entry Wire Line
	725  1675 825  1775
Entry Wire Line
	725  1775 825  1875
Entry Wire Line
	725  1875 825  1975
Entry Wire Line
	725  1975 825  2075
Text Label 3425 3600 2    50   ~ 0
232_TX
Entry Wire Line
	4125 3500 4025 3600
Text Label 3425 4000 2    50   ~ 0
C64_TX
Text GLabel 1550 3700 0    50   Input ~ 0
ESP_RTS
Wire Wire Line
	1550 3700 1750 3700
Wire Wire Line
	1925 4100 1750 4100
Wire Wire Line
	1750 4100 1750 3700
Connection ~ 1750 3700
Wire Wire Line
	1750 3700 1925 3700
Text Label 3425 3700 2    50   ~ 0
232_RTS
Entry Wire Line
	4125 3600 4025 3700
Text Label 3425 4100 2    50   ~ 0
C64_RTS
Text Label 850  3800 0    50   ~ 0
232_RX
Text Label 850  4200 0    50   ~ 0
C64_RX
Wire Wire Line
	825  3800 1925 3800
Wire Wire Line
	825  4200 1925 4200
Text Label 850  3900 0    50   ~ 0
232_CTS
Text Label 850  4300 0    50   ~ 0
C64_CTS
Wire Wire Line
	825  3900 1925 3900
Wire Wire Line
	825  4300 1925 4300
Wire Wire Line
	2925 3900 3000 3900
Wire Wire Line
	2925 4300 3000 4300
Wire Wire Line
	2925 4200 3075 4200
Entry Wire Line
	825  3800 725  3900
Entry Wire Line
	825  3900 725  4000
Entry Wire Line
	825  4200 725  4300
Entry Wire Line
	825  4300 725  4400
Entry Wire Line
	4125 4000 4025 4100
Entry Wire Line
	4125 3900 4025 4000
$Sheet
S 2475 1575 1025 825 
U 63AD1846
F0 "C64 UserPort" 50
F1 "c64_userport.sch" 50
F2 "C64_CTS" O R 3500 2075 50 
F3 "C64_RX" O R 3500 1875 50 
F4 "C64_TX" I R 3500 1775 50 
F5 "C64_RTS" I R 3500 1975 50 
F6 "C64_DCD" I R 3500 2175 50 
F7 "C64_RI" I R 3500 2275 50 
$EndSheet
Wire Wire Line
	3500 1775 4025 1775
Wire Wire Line
	4025 1875 3500 1875
Wire Wire Line
	3500 1975 4025 1975
Wire Wire Line
	4025 2075 3500 2075
Text Label 4000 1775 2    50   ~ 0
C64_TX
Text Label 4000 1875 2    50   ~ 0
C64_RX
Text Label 4000 1975 2    50   ~ 0
C64_RTS
Text Label 4000 2075 2    50   ~ 0
C64_CTS
Entry Wire Line
	4125 1675 4025 1775
Entry Wire Line
	4125 1775 4025 1875
Entry Wire Line
	4125 1875 4025 1975
Entry Wire Line
	4125 1975 4025 2075
$Sheet
S 1925 6225 1025 700 
U 63D786E4
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
Text GLabel 3650 3900 2    50   Output ~ 0
ESP_CTS
Text GLabel 3650 3800 2    50   Output ~ 0
ESP_RX
$Comp
L Device:R R?
U 1 1 63E1B523
P 9550 3025
AR Path="/6390AE73/63E1B523" Ref="R?"  Part="1" 
AR Path="/63E1B523" Ref="R19"  Part="1" 
F 0 "R19" V 9343 3025 50  0000 C CNN
F 1 "1k" V 9434 3025 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 3025 50  0001 C CNN
F 3 "~" H 9550 3025 50  0001 C CNN
	1    9550 3025
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63E1D8A2
P 9550 4025
AR Path="/6390AE73/63E1D8A2" Ref="R?"  Part="1" 
AR Path="/63E1D8A2" Ref="R20"  Part="1" 
F 0 "R20" V 9343 4025 50  0000 C CNN
F 1 "1k" V 9434 4025 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 4025 50  0001 C CNN
F 3 "~" H 9550 4025 50  0001 C CNN
	1    9550 4025
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63E1DF8E
P 9325 3250
AR Path="/6390AE73/63E1DF8E" Ref="R?"  Part="1" 
AR Path="/63E1DF8E" Ref="R17"  Part="1" 
F 0 "R17" H 9255 3204 50  0000 R CNN
F 1 "2k" H 9255 3295 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9255 3250 50  0001 C CNN
F 3 "~" H 9325 3250 50  0001 C CNN
	1    9325 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9325 3100 9325 3025
Wire Wire Line
	9325 3025 9400 3025
$Comp
L Device:R R?
U 1 1 63E2105A
P 9325 4250
AR Path="/6390AE73/63E2105A" Ref="R?"  Part="1" 
AR Path="/63E2105A" Ref="R18"  Part="1" 
F 0 "R18" H 9255 4204 50  0000 R CNN
F 1 "2k" H 9255 4295 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9255 4250 50  0001 C CNN
F 3 "~" H 9325 4250 50  0001 C CNN
	1    9325 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9325 4100 9325 4025
Wire Wire Line
	9325 4025 9400 4025
Connection ~ 9325 4025
$Comp
L power:GND #PWR0135
U 1 1 63E25FF5
P 9325 3400
F 0 "#PWR0135" H 9325 3150 50  0001 C CNN
F 1 "GND" H 9330 3227 50  0000 C CNN
F 2 "" H 9325 3400 50  0001 C CNN
F 3 "" H 9325 3400 50  0001 C CNN
	1    9325 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 63E26F24
P 9325 4400
F 0 "#PWR0136" H 9325 4150 50  0001 C CNN
F 1 "GND" H 9330 4227 50  0000 C CNN
F 2 "" H 9325 4400 50  0001 C CNN
F 3 "" H 9325 4400 50  0001 C CNN
	1    9325 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 4975 2425 4900
Wire Wire Line
	2925 4000 4025 4000
Wire Wire Line
	2925 4100 4025 4100
Wire Wire Line
	2925 3700 4025 3700
Wire Wire Line
	2925 3600 4025 3600
Wire Wire Line
	2925 3800 3075 3800
Wire Wire Line
	3000 4300 3000 3900
Connection ~ 3000 3900
Wire Wire Line
	3000 3900 3650 3900
Wire Wire Line
	3075 4200 3075 3800
Connection ~ 3075 3800
Wire Wire Line
	3075 3800 3650 3800
Wire Wire Line
	1525 4600 1925 4600
Wire Wire Line
	1525 4500 1925 4500
Wire Wire Line
	9775 4025 9700 4025
Wire Wire Line
	9700 3025 9775 3025
Text GLabel 5950 3725 0    50   Input ~ 0
MODE_C64
Connection ~ 9325 3025
$Comp
L Device:R R?
U 1 1 62F58556
P 6175 3725
AR Path="/6390AE73/62F58556" Ref="R?"  Part="1" 
AR Path="/62F58556" Ref="R23"  Part="1" 
F 0 "R23" V 5968 3725 50  0000 C CNN
F 1 "1k" V 6059 3725 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6105 3725 50  0001 C CNN
F 3 "~" H 6175 3725 50  0001 C CNN
	1    6175 3725
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62F5855C
P 6400 3950
AR Path="/6390AE73/62F5855C" Ref="R?"  Part="1" 
AR Path="/62F5855C" Ref="R22"  Part="1" 
F 0 "R22" H 6330 3904 50  0000 R CNN
F 1 "2k" H 6330 3995 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6330 3950 50  0001 C CNN
F 3 "~" H 6400 3950 50  0001 C CNN
	1    6400 3950
	1    0    0    1   
$EndComp
Wire Wire Line
	6400 3800 6400 3725
Wire Wire Line
	6400 3725 6325 3725
$Comp
L power:GND #PWR05
U 1 1 62F58564
P 6400 4100
F 0 "#PWR05" H 6400 3850 50  0001 C CNN
F 1 "GND" H 6405 3927 50  0000 C CNN
F 2 "" H 6400 4100 50  0001 C CNN
F 3 "" H 6400 4100 50  0001 C CNN
	1    6400 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6025 3725 5950 3725
Connection ~ 6400 3725
Wire Wire Line
	6400 3725 6850 3725
Text Notes 4800 4150 0    50   ~ 0
SK/IO6 isn't defined anywhere by\nZimodem, I'm just adding it case\nI need it later with the necessary\nfirmware changes to support it.
Wire Bus Line
	725  1425 4125 1425
Text Notes 725  4925 0    50   ~ 0
MODE_232 and MODE_C64 signals\nare controlled by the front panel\ncircuitry.
Text GLabel 10125 1575 2    50   Output ~ 0
ESP_DCD
Wire Wire Line
	8450 3325 8675 3325
Text GLabel 1275 2175 0    50   Input ~ 0
ESP_DCD
Wire Wire Line
	1275 2175 1350 2175
Wire Wire Line
	3575 2175 3500 2175
Text Notes 1150 2900 0    50   ~ 0
Note that the DCD/RI signal is shared between the two, something I'll\n"probably" get away with since they are only outgoing signals. The\n232 side will get buffered by the inverter used.
Text GLabel 1275 2275 0    50   Input ~ 0
ESP_RI
Wire Wire Line
	1275 2275 1350 2275
Text GLabel 3575 2275 2    50   Input ~ 0
ESP_RI
Wire Wire Line
	3575 2275 3500 2275
Text GLabel 10125 2100 2    50   Output ~ 0
ESP_RI
$Comp
L 74xx:74HCT04 U5
U 2 1 62E07EFB
P 9150 1575
AR Path="/62E07EFB" Ref="U5"  Part="2" 
AR Path="/6390AE73/62E07EFB" Ref="U?"  Part="1" 
AR Path="/63D786E4/62E07EFB" Ref="U?"  Part="2" 
F 0 "U5" H 9150 1892 50  0000 C CNN
F 1 "74HCT04" H 9150 1801 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9150 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9150 1575 50  0001 C CNN
	2    9150 1575
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U5
U 3 1 62E07F01
P 9750 1575
AR Path="/62E07F01" Ref="U5"  Part="3" 
AR Path="/6390AE73/62E07F01" Ref="U?"  Part="1" 
AR Path="/63D786E4/62E07F01" Ref="U?"  Part="3" 
F 0 "U5" H 9750 1892 50  0000 C CNN
F 1 "74HCT04" H 9750 1801 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9750 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9750 1575 50  0001 C CNN
	3    9750 1575
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U5
U 4 1 62E07F07
P 9750 2100
AR Path="/62E07F07" Ref="U5"  Part="4" 
AR Path="/6390AE73/62E07F07" Ref="U?"  Part="1" 
AR Path="/63D786E4/62E07F07" Ref="U?"  Part="5" 
F 0 "U5" H 9750 2417 50  0000 C CNN
F 1 "74HCT04" H 9750 2326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9750 2100 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9750 2100 50  0001 C CNN
	4    9750 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U5
U 5 1 62E07F0D
P 9150 2100
AR Path="/62E07F0D" Ref="U5"  Part="5" 
AR Path="/6390AE73/62E07F0D" Ref="U?"  Part="1" 
AR Path="/63D786E4/62E07F0D" Ref="U?"  Part="4" 
F 0 "U5" H 9150 2417 50  0000 C CNN
F 1 "74HCT04" H 9150 2326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9150 2100 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9150 2100 50  0001 C CNN
	5    9150 2100
	1    0    0    -1  
$EndComp
Text GLabel 3575 2175 2    50   Input ~ 0
ESP_DCD
Wire Wire Line
	8675 3325 8675 1575
Wire Wire Line
	8450 3025 9325 3025
Wire Wire Line
	8450 4025 9325 4025
Wire Wire Line
	8450 3125 8850 3125
Wire Wire Line
	8450 3625 8750 3625
Wire Wire Line
	8750 3625 8750 2100
Wire Wire Line
	8750 2100 8850 2100
Wire Wire Line
	8675 1575 8850 1575
Wire Wire Line
	10050 2100 10125 2100
Wire Wire Line
	10050 1575 10125 1575
Wire Bus Line
	4125 1425 4125 4000
Wire Bus Line
	725  1425 725  4400
Text Notes 8825 1175 0    50   ~ 0
Probably don't need to buffer these\nsignals, but I had the gates so why\nnot use them.
$EndSCHEMATC
