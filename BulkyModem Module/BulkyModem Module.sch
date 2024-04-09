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
P 5900 2650
F 0 "A1" H 5900 3737 60  0000 C CNN
F 1 "NodeMCU (v3)" H 5900 3631 60  0000 C CNN
F 2 "nodemcu_v3:NodeMCU-LoLinV3" H 5300 1800 60  0001 C CNN
F 3 "" H 5300 1800 60  0000 C CNN
	1    5900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1425 4950 1350
$Comp
L power:+3.3V #PWR0102
U 1 1 62E2CDD0
P 4950 1350
F 0 "#PWR0102" H 4950 1200 50  0001 C CNN
F 1 "+3.3V" H 4965 1523 50  0000 C CNN
F 2 "" H 4950 1350 50  0001 C CNN
F 3 "" H 4950 1350 50  0001 C CNN
	1    4950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2850 5025 2850
Wire Wire Line
	5025 2850 5025 3250
Wire Wire Line
	5025 3250 5100 3250
Wire Wire Line
	5025 3250 5025 3700
Wire Wire Line
	5025 3700 6775 3700
Wire Wire Line
	6775 3700 6775 3250
Wire Wire Line
	6775 3250 6700 3250
Connection ~ 5025 3250
Wire Wire Line
	6775 3250 6775 2550
Wire Wire Line
	6775 2550 6700 2550
Connection ~ 6775 3250
Wire Wire Line
	6775 3700 6775 3775
Connection ~ 6775 3700
$Comp
L power:GND #PWR0104
U 1 1 62E3E679
P 6775 3775
F 0 "#PWR0104" H 6775 3525 50  0001 C CNN
F 1 "GND" H 6780 3602 50  0000 C CNN
F 2 "" H 6775 3775 50  0001 C CNN
F 3 "" H 6775 3775 50  0001 C CNN
	1    6775 3775
	1    0    0    -1  
$EndComp
NoConn ~ 5100 1950
NoConn ~ 5100 2250
NoConn ~ 5100 2350
NoConn ~ 5100 2450
NoConn ~ 5100 2550
NoConn ~ 5100 2650
NoConn ~ 5100 3050
NoConn ~ 5100 3150
NoConn ~ 6700 2950
Wire Wire Line
	5100 2950 4950 2950
Wire Wire Line
	4950 2950 4950 1425
Connection ~ 4950 1425
Wire Wire Line
	6700 3350 6850 3350
Wire Wire Line
	6850 3350 6850 2450
Wire Wire Line
	4950 1425 6850 1425
Wire Wire Line
	6700 2450 6850 2450
Connection ~ 6850 2450
Wire Wire Line
	6850 2450 6850 1425
$Comp
L power:+5V #PWR0107
U 1 1 62E5D8ED
P 4800 1125
F 0 "#PWR0107" H 4800 975 50  0001 C CNN
F 1 "+5V" H 4800 1300 50  0000 C CNN
F 2 "" H 4800 1125 50  0001 C CNN
F 3 "" H 4800 1125 50  0001 C CNN
	1    4800 1125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1125 4800 3350
Wire Wire Line
	4800 3350 5100 3350
Text GLabel 9275 4075 2    50   Output ~ 0
ESP_TX
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
Text GLabel 9275 2150 2    50   Output ~ 0
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
Wire Bus Line
	725  1425 4125 1425
Text Notes 725  4925 0    50   ~ 0
MODE_232 and MODE_C64 signals\nare controlled by the front panel\ncircuitry.
Text GLabel 10725 2175 2    50   Output ~ 0
ESP_DCD
Text GLabel 1275 2175 0    50   Input ~ 0
ESP_DCD
Wire Wire Line
	1275 2175 1350 2175
Wire Wire Line
	3575 2175 3500 2175
Text Notes 1150 2900 0    50   ~ 0
Note that the DCD/RI signal is shared between the two, something I'll\n"probably" get away with since they are only outgoing signals. The\n232 side will get buffered by the inverter used. You are not supposed\nto connect it to two computers at once anyway.
Text GLabel 1275 2275 0    50   Input ~ 0
ESP_RI
Wire Wire Line
	1275 2275 1350 2275
Text GLabel 3575 2275 2    50   Input ~ 0
ESP_RI
Wire Wire Line
	3575 2275 3500 2275
Text GLabel 10725 2750 2    50   Output ~ 0
ESP_RI
Text GLabel 3575 2175 2    50   Input ~ 0
ESP_DCD
$Comp
L 74xx:74LS32 U?
U 1 1 64593DC3
P 8825 4075
AR Path="/63D786E4/64593DC3" Ref="U?"  Part="1" 
AR Path="/64593DC3" Ref="U6"  Part="1" 
F 0 "U6" H 8825 4400 50  0000 C CNN
F 1 "74HCT32" H 8825 4309 50  0000 C CNN
F 2 "" H 8825 4075 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8825 4075 50  0001 C CNN
	1    8825 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3150 7000 3150
$Comp
L power:GND #PWR010
U 1 1 6462A6AE
P 8050 4175
F 0 "#PWR010" H 8050 3925 50  0001 C CNN
F 1 "GND" H 8055 4002 50  0000 C CNN
F 2 "" H 8050 4175 50  0001 C CNN
F 3 "" H 8050 4175 50  0001 C CNN
	1    8050 4175
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP16
U 1 1 64639D0A
P 8800 4550
AR Path="/64639D0A" Ref="JP16"  Part="1" 
AR Path="/63D786E4/64639D0A" Ref="JP?"  Part="1" 
AR Path="/6379233A/64639D0A" Ref="JP?"  Part="1" 
F 0 "JP16" H 8800 4711 31  0000 C CNN
F 1 "BYPASS" H 8800 4649 31  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 8800 4550 50  0001 C CNN
F 3 "~" H 8800 4550 50  0001 C CNN
	1    8800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9275 4075 9200 4075
Wire Wire Line
	9125 4075 9200 4075
Connection ~ 9200 4075
Wire Wire Line
	7000 3150 7000 4550
Wire Wire Line
	8200 3975 8525 3975
Wire Wire Line
	8950 4550 9200 4550
Wire Wire Line
	9200 4075 9200 4550
Wire Wire Line
	8525 4175 8450 4175
Wire Wire Line
	8450 4175 8450 4550
Connection ~ 8450 4550
Wire Wire Line
	8450 4550 8650 4550
Wire Wire Line
	9200 1525 9275 1525
Wire Wire Line
	9275 3050 9200 3050
$Comp
L power:GND #PWR0136
U 1 1 63E26F24
P 8825 3425
F 0 "#PWR0136" H 8825 3175 50  0001 C CNN
F 1 "GND" H 8830 3252 50  0000 C CNN
F 2 "" H 8825 3425 50  0001 C CNN
F 3 "" H 8825 3425 50  0001 C CNN
	1    8825 3425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 63E25FF5
P 8825 1900
F 0 "#PWR0135" H 8825 1650 50  0001 C CNN
F 1 "GND" H 8830 1727 50  0000 C CNN
F 2 "" H 8825 1900 50  0001 C CNN
F 3 "" H 8825 1900 50  0001 C CNN
	1    8825 1900
	1    0    0    -1  
$EndComp
Connection ~ 8825 3050
Wire Wire Line
	8825 3050 8900 3050
Wire Wire Line
	8825 3125 8825 3050
$Comp
L Device:R R?
U 1 1 63E2105A
P 8825 3275
AR Path="/6390AE73/63E2105A" Ref="R?"  Part="1" 
AR Path="/63E2105A" Ref="R18"  Part="1" 
F 0 "R18" H 8755 3229 50  0000 R CNN
F 1 "2k" H 8755 3320 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8755 3275 50  0001 C CNN
F 3 "~" H 8825 3275 50  0001 C CNN
	1    8825 3275
	-1   0    0    1   
$EndComp
Wire Wire Line
	8825 1525 8900 1525
Wire Wire Line
	8825 1600 8825 1525
$Comp
L Device:R R?
U 1 1 63E1DF8E
P 8825 1750
AR Path="/6390AE73/63E1DF8E" Ref="R?"  Part="1" 
AR Path="/63E1DF8E" Ref="R17"  Part="1" 
F 0 "R17" H 8755 1704 50  0000 R CNN
F 1 "2k" H 8755 1795 50  0000 R CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8755 1750 50  0001 C CNN
F 3 "~" H 8825 1750 50  0001 C CNN
	1    8825 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63E1D8A2
P 9050 3050
AR Path="/6390AE73/63E1D8A2" Ref="R?"  Part="1" 
AR Path="/63E1D8A2" Ref="R20"  Part="1" 
F 0 "R20" V 8843 3050 50  0000 C CNN
F 1 "1k" V 8934 3050 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8980 3050 50  0001 C CNN
F 3 "~" H 9050 3050 50  0001 C CNN
	1    9050 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63E1B523
P 9050 1525
AR Path="/6390AE73/63E1B523" Ref="R?"  Part="1" 
AR Path="/63E1B523" Ref="R19"  Part="1" 
F 0 "R19" V 8843 1525 50  0000 C CNN
F 1 "1k" V 8934 1525 50  0000 C CNN
F 2 "resistor:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8980 1525 50  0001 C CNN
F 3 "~" H 9050 1525 50  0001 C CNN
	1    9050 1525
	0    1    1    0   
$EndComp
Text GLabel 9275 1525 2    50   Input ~ 0
ESP_CTS
Text GLabel 9275 3050 2    50   Input ~ 0
ESP_RX
Connection ~ 8825 1525
NoConn ~ 5100 2750
$Comp
L BulkyModem:Swap_Output JP15
U 1 1 645ED505
P 8050 3975
AR Path="/645ED505" Ref="JP15"  Part="1" 
AR Path="/6379233A/645ED505" Ref="JP?"  Part="1" 
F 0 "JP15" V 8200 3900 50  0000 R CNN
F 1 "TX_FILTER" V 8125 3900 50  0000 R CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8050 3975 50  0001 C CNN
F 3 "~" H 8050 3975 50  0001 C CNN
	1    8050 3975
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS32 U?
U 2 1 6624092A
P 10350 2175
AR Path="/63D786E4/6624092A" Ref="U?"  Part="2" 
AR Path="/6624092A" Ref="U6"  Part="2" 
F 0 "U6" H 10350 2500 50  0000 C CNN
F 1 "74HCT32" H 10350 2409 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10350 2175 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 10350 2175 50  0001 C CNN
	2    10350 2175
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 3 1 66240930
P 10350 2750
AR Path="/63D786E4/66240930" Ref="U?"  Part="3" 
AR Path="/66240930" Ref="U6"  Part="3" 
F 0 "U6" H 10350 3075 50  0000 C CNN
F 1 "74HCT32" H 10350 2984 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10350 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 10350 2750 50  0001 C CNN
	3    10350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2275 9975 2275
Wire Wire Line
	10050 2850 9975 2850
Wire Wire Line
	9975 2275 9975 2850
Wire Wire Line
	9975 2850 9975 2925
Connection ~ 9975 2850
$Comp
L power:GND #PWR0119
U 1 1 6628E3BE
P 9975 2925
F 0 "#PWR0119" H 9975 2675 50  0001 C CNN
F 1 "GND" H 9980 2752 50  0000 C CNN
F 2 "" H 9975 2925 50  0001 C CNN
F 3 "" H 9975 2925 50  0001 C CNN
	1    9975 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	10725 2175 10650 2175
Wire Wire Line
	10725 2750 10650 2750
Wire Wire Line
	9775 2075 10050 2075
Text Label 7125 2850 0    50   ~ 0
ESP_DSR
NoConn ~ 7500 2850
Text Label 7125 2750 0    50   ~ 0
ESP_DTR
NoConn ~ 7500 2750
Wire Wire Line
	6700 2750 7500 2750
Wire Wire Line
	6700 2850 7500 2850
Wire Wire Line
	8625 2050 8625 1525
Wire Wire Line
	8625 1525 8825 1525
Wire Wire Line
	6700 2050 8625 2050
Wire Wire Line
	6700 3050 8825 3050
Text Notes 9275 4500 0    50   ~ 0
Requires a firmware change in order\nto set GPIO0 low after boot. This in\norder to filter out data sent by ESP\nitself.
$Comp
L Switch:SW_Push SW1
U 1 1 6620A8C6
P 8100 1525
F 0 "SW1" H 8100 1810 50  0000 C CNN
F 1 "SET_1200" H 8100 1719 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 8100 1725 50  0001 C CNN
F 3 "~" H 8100 1725 50  0001 C CNN
	1    8100 1525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6620D3D3
P 8375 1600
F 0 "#PWR0120" H 8375 1350 50  0001 C CNN
F 1 "GND" H 8380 1427 50  0000 C CNN
F 2 "" H 8375 1600 50  0001 C CNN
F 3 "" H 8375 1600 50  0001 C CNN
	1    8375 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1525 7900 1525
Wire Wire Line
	8300 1525 8375 1525
Wire Wire Line
	8375 1525 8375 1600
Wire Wire Line
	7650 1525 7650 1950
Wire Wire Line
	6700 1950 7650 1950
Wire Wire Line
	7000 4550 8450 4550
Wire Wire Line
	6700 2250 8050 2250
Wire Wire Line
	8050 2250 8050 3775
Wire Wire Line
	6700 2150 9275 2150
Wire Wire Line
	9775 2075 9775 2350
Wire Wire Line
	6700 2350 9775 2350
Wire Wire Line
	6700 2650 10050 2650
Wire Bus Line
	4125 1425 4125 4000
Wire Bus Line
	725  1425 725  4400
Text Label 7125 2250 0    50   ~ 0
TX_FILTER
Text Notes 7400 1150 0    50   ~ 0
SET_1200 (SW1) Requires a firmware\nchange in order to do something. The\nidea is to have a button that will have\nmodem revert to default settings (1200\nbaud, RTS/CTS).
$EndSCHEMATC
