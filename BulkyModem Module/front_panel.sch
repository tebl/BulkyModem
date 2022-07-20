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
Comment3 ""
Comment4 "Front panel connector as well as circuitry for switches and LEDs."
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 63B6F353
P 1000 6800
AR Path="/63B6F353" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/63B6F353" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 1000 6550 50  0001 C CNN
F 1 "GND" H 1005 6627 50  0000 C CNN
F 2 "" H 1000 6800 50  0001 C CNN
F 3 "" H 1000 6800 50  0001 C CNN
	1    1000 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63B6F359
P 1000 6575
AR Path="/63B6F359" Ref="R?"  Part="1" 
AR Path="/6390AE73/63B6F359" Ref="R4"  Part="1" 
F 0 "R4" V 793 6575 50  0000 C CNN
F 1 "2k2" V 884 6575 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 930 6575 50  0001 C CNN
F 3 "~" H 1000 6575 50  0001 C CNN
	1    1000 6575
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 63B6F361
P 1000 6125
AR Path="/63B6F361" Ref="D?"  Part="1" 
AR Path="/6390AE73/63B6F361" Ref="D2"  Part="1" 
F 0 "D2" H 993 5870 50  0000 C CNN
F 1 "POWER" H 993 5961 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Horizontal_O1.27mm_Z3.0mm" H 1000 6125 50  0001 C CNN
F 3 "~" H 1000 6125 50  0001 C CNN
	1    1000 6125
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63B6F367
P 1000 5975
AR Path="/63B6F367" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/63B6F367" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 1000 5825 50  0001 C CNN
F 1 "+5V" H 1000 6150 50  0000 C CNN
F 2 "" H 1000 5975 50  0001 C CNN
F 3 "" H 1000 5975 50  0001 C CNN
	1    1000 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6725 1000 6800
Text Label 725  5800 3    50   ~ 0
FP_POW
$Comp
L Device:R R10
U 1 1 63BA56FF
P 2875 6575
F 0 "R10" V 2668 6575 50  0000 C CNN
F 1 "470" V 2759 6575 50  0000 C CNN
F 2 "" V 2805 6575 50  0001 C CNN
F 3 "~" H 2875 6575 50  0001 C CNN
	1    2875 6575
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 63BA5705
P 2500 6850
F 0 "R9" H 2430 6804 50  0000 R CNN
F 1 "10k" H 2430 6895 50  0000 R CNN
F 2 "" V 2430 6850 50  0001 C CNN
F 3 "~" H 2500 6850 50  0001 C CNN
	1    2500 6850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q5
U 1 1 63BA570B
P 2775 7075
F 0 "Q5" H 2500 6950 50  0000 L CNN
F 1 "2N3904" H 2500 6850 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2975 7000 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 2775 7075 50  0001 L CNN
	1    2775 7075
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C9
U 1 1 63BA5711
P 3075 7075
F 0 "C9" H 3163 7121 50  0000 L CNN
F 1 "22uF" H 3163 7030 50  0000 L CNN
F 2 "" H 3075 7075 50  0001 C CNN
F 3 "~" H 3075 7075 50  0001 C CNN
	1    3075 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2875 7275 2875 7350
Wire Wire Line
	2875 7350 3075 7350
Wire Wire Line
	3075 7350 3075 7175
Wire Wire Line
	3075 7350 3075 7425
Connection ~ 3075 7350
$Comp
L power:GND #PWR0123
U 1 1 63BA571C
P 3075 7425
F 0 "#PWR0123" H 3075 7175 50  0001 C CNN
F 1 "GND" H 3080 7252 50  0000 C CNN
F 2 "" H 3075 7425 50  0001 C CNN
F 3 "" H 3075 7425 50  0001 C CNN
	1    3075 7425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2875 6875 2875 6800
Wire Wire Line
	2875 6800 3075 6800
Wire Wire Line
	3075 6800 3075 6975
Wire Wire Line
	2875 6725 2875 6800
Connection ~ 2875 6800
$Comp
L Device:LED D5
U 1 1 63BA5727
P 2875 6125
F 0 "D5" V 2914 6007 50  0000 R CNN
F 1 "TX" V 2823 6007 50  0000 R CNN
F 2 "" H 2875 6125 50  0001 C CNN
F 3 "~" H 2875 6125 50  0001 C CNN
	1    2875 6125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2875 6275 2875 6350
Wire Wire Line
	2875 6350 2875 6425
Connection ~ 2875 6350
$Comp
L power:+5V #PWR0124
U 1 1 63BA5731
P 2875 5975
F 0 "#PWR0124" H 2875 5825 50  0001 C CNN
F 1 "+5V" H 2890 6148 50  0000 C CNN
F 2 "" H 2875 5975 50  0001 C CNN
F 3 "" H 2875 5975 50  0001 C CNN
	1    2875 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7000 2500 7075
Wire Wire Line
	2500 7075 2575 7075
Wire Wire Line
	2600 6350 2875 6350
Entry Wire Line
	2500 5675 2600 5775
Wire Wire Line
	2600 6350 2600 5775
Text GLabel 2500 6625 1    50   Input ~ 0
ESP_TX
Wire Wire Line
	2500 6625 2500 6700
Text Label 2600 5800 3    50   ~ 0
FP_TX
Wire Wire Line
	725  6350 1000 6350
Entry Wire Line
	625  5675 725  5775
Wire Wire Line
	725  6350 725  5775
Wire Wire Line
	1000 6275 1000 6350
Connection ~ 1000 6350
Wire Wire Line
	1000 6350 1000 6425
$Comp
L Device:R R8
U 1 1 63BDC3E2
P 1925 6575
F 0 "R8" V 1718 6575 50  0000 C CNN
F 1 "470" V 1809 6575 50  0000 C CNN
F 2 "" V 1855 6575 50  0001 C CNN
F 3 "~" H 1925 6575 50  0001 C CNN
	1    1925 6575
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 63BDC3E8
P 1550 6850
F 0 "R7" H 1480 6804 50  0000 R CNN
F 1 "10k" H 1480 6895 50  0000 R CNN
F 2 "" V 1480 6850 50  0001 C CNN
F 3 "~" H 1550 6850 50  0001 C CNN
	1    1550 6850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q4
U 1 1 63BDC3EE
P 1825 7075
F 0 "Q4" H 1550 6950 50  0000 L CNN
F 1 "2N3904" H 1550 6850 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2025 7000 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 1825 7075 50  0001 L CNN
	1    1825 7075
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C8
U 1 1 63BDC3F4
P 2125 7075
F 0 "C8" H 2213 7121 50  0000 L CNN
F 1 "22uF" H 2213 7030 50  0000 L CNN
F 2 "" H 2125 7075 50  0001 C CNN
F 3 "~" H 2125 7075 50  0001 C CNN
	1    2125 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1925 7275 1925 7350
Wire Wire Line
	1925 7350 2125 7350
Wire Wire Line
	2125 7350 2125 7175
Wire Wire Line
	2125 7350 2125 7425
Connection ~ 2125 7350
$Comp
L power:GND #PWR0125
U 1 1 63BDC3FF
P 2125 7425
F 0 "#PWR0125" H 2125 7175 50  0001 C CNN
F 1 "GND" H 2130 7252 50  0000 C CNN
F 2 "" H 2125 7425 50  0001 C CNN
F 3 "" H 2125 7425 50  0001 C CNN
	1    2125 7425
	1    0    0    -1  
$EndComp
Wire Wire Line
	1925 6875 1925 6800
Wire Wire Line
	1925 6800 2125 6800
Wire Wire Line
	2125 6800 2125 6975
Wire Wire Line
	1925 6725 1925 6800
Connection ~ 1925 6800
$Comp
L Device:LED D4
U 1 1 63BDC40A
P 1925 6125
F 0 "D4" V 1964 6007 50  0000 R CNN
F 1 "TX" V 1873 6007 50  0000 R CNN
F 2 "" H 1925 6125 50  0001 C CNN
F 3 "~" H 1925 6125 50  0001 C CNN
	1    1925 6125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1925 6275 1925 6350
Wire Wire Line
	1925 6350 1925 6425
Connection ~ 1925 6350
$Comp
L power:+5V #PWR0126
U 1 1 63BDC413
P 1925 5975
F 0 "#PWR0126" H 1925 5825 50  0001 C CNN
F 1 "+5V" H 1940 6148 50  0000 C CNN
F 2 "" H 1925 5975 50  0001 C CNN
F 3 "" H 1925 5975 50  0001 C CNN
	1    1925 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 7000 1550 7075
Wire Wire Line
	1550 7075 1625 7075
Wire Wire Line
	1650 6350 1925 6350
Entry Wire Line
	1550 5675 1650 5775
Wire Wire Line
	1650 6350 1650 5775
Text GLabel 1550 6625 1    50   Input ~ 0
ESP_RX
Wire Wire Line
	1550 6625 1550 6700
Text Label 1650 5800 3    50   ~ 0
FP_RX
$Comp
L Device:R R12
U 1 1 63BEF4DA
P 3825 6575
F 0 "R12" V 3618 6575 50  0000 C CNN
F 1 "470" V 3709 6575 50  0000 C CNN
F 2 "" V 3755 6575 50  0001 C CNN
F 3 "~" H 3825 6575 50  0001 C CNN
	1    3825 6575
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 63BEF4E0
P 3450 6850
F 0 "R11" H 3380 6804 50  0000 R CNN
F 1 "10k" H 3380 6895 50  0000 R CNN
F 2 "" V 3380 6850 50  0001 C CNN
F 3 "~" H 3450 6850 50  0001 C CNN
	1    3450 6850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q6
U 1 1 63BEF4E6
P 3725 7075
F 0 "Q6" H 3450 6950 50  0000 L CNN
F 1 "2N3904" H 3450 6850 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3925 7000 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 3725 7075 50  0001 L CNN
	1    3725 7075
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C10
U 1 1 63BEF4EC
P 4025 7075
F 0 "C10" H 4113 7121 50  0000 L CNN
F 1 "22uF" H 4113 7030 50  0000 L CNN
F 2 "" H 4025 7075 50  0001 C CNN
F 3 "~" H 4025 7075 50  0001 C CNN
	1    4025 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 7275 3825 7350
Wire Wire Line
	3825 7350 4025 7350
Wire Wire Line
	4025 7350 4025 7175
Wire Wire Line
	4025 7350 4025 7425
Connection ~ 4025 7350
$Comp
L power:GND #PWR0127
U 1 1 63BEF4F7
P 4025 7425
F 0 "#PWR0127" H 4025 7175 50  0001 C CNN
F 1 "GND" H 4030 7252 50  0000 C CNN
F 2 "" H 4025 7425 50  0001 C CNN
F 3 "" H 4025 7425 50  0001 C CNN
	1    4025 7425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 6875 3825 6800
Wire Wire Line
	3825 6800 4025 6800
Wire Wire Line
	4025 6800 4025 6975
Wire Wire Line
	3825 6725 3825 6800
Connection ~ 3825 6800
$Comp
L Device:LED D6
U 1 1 63BEF502
P 3825 6125
F 0 "D6" V 3864 6007 50  0000 R CNN
F 1 "TX" V 3773 6007 50  0000 R CNN
F 2 "" H 3825 6125 50  0001 C CNN
F 3 "~" H 3825 6125 50  0001 C CNN
	1    3825 6125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3825 6275 3825 6350
Wire Wire Line
	3825 6350 3825 6425
Connection ~ 3825 6350
$Comp
L power:+5V #PWR0128
U 1 1 63BEF50B
P 3825 5975
F 0 "#PWR0128" H 3825 5825 50  0001 C CNN
F 1 "+5V" H 3840 6148 50  0000 C CNN
F 2 "" H 3825 5975 50  0001 C CNN
F 3 "" H 3825 5975 50  0001 C CNN
	1    3825 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 7000 3450 7075
Wire Wire Line
	3450 7075 3525 7075
Wire Wire Line
	3550 6350 3825 6350
Entry Wire Line
	3450 5675 3550 5775
Wire Wire Line
	3550 6350 3550 5775
Text GLabel 3450 6625 1    50   Input ~ 0
ESP_CTS
Wire Wire Line
	3450 6625 3450 6700
Text Label 3550 5800 3    50   ~ 0
FP_CTS
$Comp
L Device:R R14
U 1 1 63BFFFD0
P 4775 6575
F 0 "R14" V 4568 6575 50  0000 C CNN
F 1 "470" V 4659 6575 50  0000 C CNN
F 2 "" V 4705 6575 50  0001 C CNN
F 3 "~" H 4775 6575 50  0001 C CNN
	1    4775 6575
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 63BFFFD6
P 4400 6850
F 0 "R13" H 4330 6804 50  0000 R CNN
F 1 "10k" H 4330 6895 50  0000 R CNN
F 2 "" V 4330 6850 50  0001 C CNN
F 3 "~" H 4400 6850 50  0001 C CNN
	1    4400 6850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q7
U 1 1 63BFFFDC
P 4675 7075
F 0 "Q7" H 4400 6950 50  0000 L CNN
F 1 "2N3904" H 4400 6850 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4875 7000 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4675 7075 50  0001 L CNN
	1    4675 7075
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C11
U 1 1 63BFFFE2
P 4975 7075
F 0 "C11" H 5063 7121 50  0000 L CNN
F 1 "22uF" H 5063 7030 50  0000 L CNN
F 2 "" H 4975 7075 50  0001 C CNN
F 3 "~" H 4975 7075 50  0001 C CNN
	1    4975 7075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 7275 4775 7350
Wire Wire Line
	4775 7350 4975 7350
Wire Wire Line
	4975 7350 4975 7175
Wire Wire Line
	4975 7350 4975 7425
Connection ~ 4975 7350
$Comp
L power:GND #PWR0129
U 1 1 63BFFFED
P 4975 7425
F 0 "#PWR0129" H 4975 7175 50  0001 C CNN
F 1 "GND" H 4980 7252 50  0000 C CNN
F 2 "" H 4975 7425 50  0001 C CNN
F 3 "" H 4975 7425 50  0001 C CNN
	1    4975 7425
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 6875 4775 6800
Wire Wire Line
	4775 6800 4975 6800
Wire Wire Line
	4975 6800 4975 6975
Wire Wire Line
	4775 6725 4775 6800
Connection ~ 4775 6800
$Comp
L Device:LED D7
U 1 1 63BFFFF8
P 4775 6125
F 0 "D7" V 4814 6007 50  0000 R CNN
F 1 "TX" V 4723 6007 50  0000 R CNN
F 2 "" H 4775 6125 50  0001 C CNN
F 3 "~" H 4775 6125 50  0001 C CNN
	1    4775 6125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4775 6275 4775 6350
Wire Wire Line
	4775 6350 4775 6425
Connection ~ 4775 6350
$Comp
L power:+5V #PWR0130
U 1 1 63C00001
P 4775 5975
F 0 "#PWR0130" H 4775 5825 50  0001 C CNN
F 1 "+5V" H 4790 6148 50  0000 C CNN
F 2 "" H 4775 5975 50  0001 C CNN
F 3 "" H 4775 5975 50  0001 C CNN
	1    4775 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7000 4400 7075
Wire Wire Line
	4400 7075 4475 7075
Wire Wire Line
	4500 6350 4775 6350
Entry Wire Line
	4400 5675 4500 5775
Wire Wire Line
	4500 6350 4500 5775
Text GLabel 4400 6625 1    50   Input ~ 0
ESP_RTS
Wire Wire Line
	4400 6625 4400 6700
Text Label 4500 5800 3    50   ~ 0
FP_RTS
$Comp
L Device:LED D?
U 1 1 63C357DF
P 5725 6125
AR Path="/63C357DF" Ref="D?"  Part="1" 
AR Path="/6390AE73/63C357DF" Ref="D8"  Part="1" 
F 0 "D8" H 5718 5870 50  0000 C CNN
F 1 "RS-232" H 5718 5961 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Horizontal_O1.27mm_Z3.0mm" H 5725 6125 50  0001 C CNN
F 3 "~" H 5725 6125 50  0001 C CNN
	1    5725 6125
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63C357E5
P 5725 5975
AR Path="/63C357E5" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/63C357E5" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 5725 5825 50  0001 C CNN
F 1 "+5V" H 5725 6150 50  0000 C CNN
F 2 "" H 5725 5975 50  0001 C CNN
F 3 "" H 5725 5975 50  0001 C CNN
	1    5725 5975
	1    0    0    -1  
$EndComp
Text Label 5450 5800 3    50   ~ 0
FP_RS232
Entry Wire Line
	5350 5675 5450 5775
Wire Wire Line
	5450 6350 5450 5775
Text GLabel 5725 6800 3    50   Input ~ 0
MODE_232
Wire Wire Line
	5725 6725 5725 6800
$Comp
L Device:R R?
U 1 1 63C357D9
P 5725 6575
AR Path="/63C357D9" Ref="R?"  Part="1" 
AR Path="/6390AE73/63C357D9" Ref="R15"  Part="1" 
F 0 "R15" V 5518 6575 50  0000 C CNN
F 1 "2k2" V 5609 6575 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5655 6575 50  0001 C CNN
F 3 "~" H 5725 6575 50  0001 C CNN
	1    5725 6575
	-1   0    0    1   
$EndComp
Wire Wire Line
	5725 6275 5725 6350
Wire Wire Line
	5450 6350 5725 6350
Connection ~ 5725 6350
Wire Wire Line
	5725 6350 5725 6425
$Comp
L Device:LED D?
U 1 1 63C707E0
P 6675 6125
AR Path="/63C707E0" Ref="D?"  Part="1" 
AR Path="/6390AE73/63C707E0" Ref="D9"  Part="1" 
F 0 "D9" H 6668 5870 50  0000 C CNN
F 1 "C64" H 6668 5961 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Horizontal_O1.27mm_Z3.0mm" H 6675 6125 50  0001 C CNN
F 3 "~" H 6675 6125 50  0001 C CNN
	1    6675 6125
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63C707E6
P 6675 5975
AR Path="/63C707E6" Ref="#PWR?"  Part="1" 
AR Path="/6390AE73/63C707E6" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 6675 5825 50  0001 C CNN
F 1 "+5V" H 6675 6150 50  0000 C CNN
F 2 "" H 6675 5975 50  0001 C CNN
F 3 "" H 6675 5975 50  0001 C CNN
	1    6675 5975
	1    0    0    -1  
$EndComp
Text Label 6400 5800 3    50   ~ 0
FP_C64
Entry Wire Line
	6300 5675 6400 5775
Wire Wire Line
	6400 6350 6400 5775
Wire Wire Line
	6675 6725 6675 6800
$Comp
L Device:R R?
U 1 1 63C707F1
P 6675 6575
AR Path="/63C707F1" Ref="R?"  Part="1" 
AR Path="/6390AE73/63C707F1" Ref="R16"  Part="1" 
F 0 "R16" V 6468 6575 50  0000 C CNN
F 1 "2k2" V 6559 6575 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6605 6575 50  0001 C CNN
F 3 "~" H 6675 6575 50  0001 C CNN
	1    6675 6575
	-1   0    0    1   
$EndComp
Wire Wire Line
	6675 6275 6675 6350
Wire Wire Line
	6400 6350 6675 6350
Connection ~ 6675 6350
Wire Wire Line
	6675 6350 6675 6425
Text GLabel 6675 6800 3    50   Input ~ 0
MODE_C64
Wire Wire Line
	5525 3850 6200 3850
Wire Wire Line
	5525 3750 6200 3750
Wire Wire Line
	5525 3050 6200 3050
Wire Wire Line
	5525 2950 6200 2950
Wire Wire Line
	5525 2850 6200 2850
Wire Wire Line
	5525 2750 6200 2750
Wire Wire Line
	5525 2650 6200 2650
Wire Wire Line
	5525 2550 6200 2550
Entry Wire Line
	6300 3750 6200 3850
Entry Wire Line
	6300 3650 6200 3750
Entry Wire Line
	6300 2950 6200 3050
Entry Wire Line
	6300 2850 6200 2950
Entry Wire Line
	6300 2750 6200 2850
Entry Wire Line
	6300 2650 6200 2750
Entry Wire Line
	6300 2550 6200 2650
Entry Wire Line
	6300 2450 6200 2550
Text Label 6175 3850 2    50   ~ 0
FP_C64
Text Label 6175 3750 2    50   ~ 0
FP_RS232
Text Label 6175 3050 2    50   ~ 0
FP_RTS
Text Label 6175 2950 2    50   ~ 0
FP_CTS
Text Label 6175 2850 2    50   ~ 0
FP_TX
Text Label 6175 2750 2    50   ~ 0
FP_RX
Text Label 6175 2550 2    50   ~ 0
FP_POW
Text Label 6175 2650 2    50   ~ 0
FP_DATA
Wire Wire Line
	5525 4050 5750 4050
Wire Wire Line
	5525 3950 5750 3950
Text GLabel 5750 4050 2    50   Output ~ 0
MODE_C64
Text GLabel 5750 3950 2    50   Output ~ 0
MODE_232
Wire Wire Line
	5525 4150 5750 4150
Text GLabel 5750 4150 2    50   Output ~ 0
PWR_EN
$Comp
L power:+5V #PWR0117
U 1 1 6392433C
P 5675 2275
F 0 "#PWR0117" H 5675 2125 50  0001 C CNN
F 1 "+5V" H 5690 2448 50  0000 C CNN
F 2 "" H 5675 2275 50  0001 C CNN
F 3 "" H 5675 2275 50  0001 C CNN
	1    5675 2275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 63915A8F
P 5600 4425
F 0 "#PWR0116" H 5600 4175 50  0001 C CNN
F 1 "GND" H 5605 4252 50  0000 C CNN
F 2 "" H 5600 4425 50  0001 C CNN
F 3 "" H 5600 4425 50  0001 C CNN
	1    5600 4425
	1    0    0    -1  
$EndComp
Connection ~ 5600 4250
Wire Wire Line
	5600 4250 5600 4425
Wire Wire Line
	5525 2350 5675 2350
Wire Wire Line
	5600 2450 5600 4250
Wire Wire Line
	5600 2450 5525 2450
Wire Wire Line
	5525 4250 5600 4250
Wire Wire Line
	5525 4350 5675 4350
Connection ~ 5675 2350
Wire Wire Line
	5675 2350 5675 4350
Wire Wire Line
	5675 2350 5675 2275
$Comp
L BulkyModem:Module_Panel J3
U 1 1 63910ADA
P 5325 3350
F 0 "J3" H 5343 4575 50  0000 C CNN
F 1 "Module_Panel" H 5343 4484 50  0000 C CNN
F 2 "" H 5325 3350 50  0001 C CNN
F 3 "~" H 5325 3350 50  0001 C CNN
	1    5325 3350
	-1   0    0    -1  
$EndComp
Text Label 7050 2350 0    50   ~ 0
FP_DATA
Wire Wire Line
	8575 2350 8575 3025
$Comp
L power:+5V #PWR0109
U 1 1 63B5F6F1
P 8750 2650
F 0 "#PWR0109" H 8750 2500 50  0001 C CNN
F 1 "+5V" H 8765 2823 50  0000 C CNN
F 2 "" H 8750 2650 50  0001 C CNN
F 3 "" H 8750 2650 50  0001 C CNN
	1    8750 2650
	1    0    0    -1  
$EndComp
Connection ~ 8750 3025
Wire Wire Line
	8750 3025 8750 3100
Wire Wire Line
	8750 3025 8575 3025
Wire Wire Line
	8750 2950 8750 3025
$Comp
L Device:LED D3
U 1 1 63B5D459
P 8750 2800
F 0 "D3" V 8789 2682 50  0000 R CNN
F 1 "LED" V 8698 2682 50  0000 R CNN
F 2 "" H 8750 2800 50  0001 C CNN
F 3 "~" H 8750 2800 50  0001 C CNN
	1    8750 2800
	0    -1   -1   0   
$EndComp
Connection ~ 8750 3475
Wire Wire Line
	8750 3400 8750 3475
Wire Wire Line
	8950 3475 8950 3650
Wire Wire Line
	8750 3475 8950 3475
Wire Wire Line
	8750 3550 8750 3475
$Comp
L power:GND #PWR0105
U 1 1 63B5543E
P 8950 4100
F 0 "#PWR0105" H 8950 3850 50  0001 C CNN
F 1 "GND" H 8955 3927 50  0000 C CNN
F 2 "" H 8950 4100 50  0001 C CNN
F 3 "" H 8950 4100 50  0001 C CNN
	1    8950 4100
	1    0    0    -1  
$EndComp
Connection ~ 8950 4025
Wire Wire Line
	8950 4025 8950 4100
Wire Wire Line
	8950 4025 8950 3850
Wire Wire Line
	8750 4025 8950 4025
Wire Wire Line
	8750 3950 8750 4025
$Comp
L Device:CP_Small C7
U 1 1 63B5236B
P 8950 3750
F 0 "C7" H 9038 3796 50  0000 L CNN
F 1 "22uF" H 9038 3705 50  0000 L CNN
F 2 "" H 8950 3750 50  0001 C CNN
F 3 "~" H 8950 3750 50  0001 C CNN
	1    8950 3750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 63B51948
P 8650 3750
F 0 "Q3" H 8375 3625 50  0000 L CNN
F 1 "2N3904" H 8375 3525 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8850 3675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 8650 3750 50  0001 L CNN
	1    8650 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 63B5123D
P 8300 3750
F 0 "R5" V 8093 3750 50  0000 C CNN
F 1 "10k" V 8184 3750 50  0000 C CNN
F 2 "" V 8230 3750 50  0001 C CNN
F 3 "~" H 8300 3750 50  0001 C CNN
	1    8300 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 63B4AE7A
P 8750 3250
F 0 "R6" V 8543 3250 50  0000 C CNN
F 1 "470" V 8634 3250 50  0000 C CNN
F 2 "" V 8680 3250 50  0001 C CNN
F 3 "~" H 8750 3250 50  0001 C CNN
	1    8750 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 2875 7025 2875
Wire Wire Line
	6950 3475 7025 3475
Text GLabel 6950 3475 0    50   Input ~ 0
ESP_RX
Text GLabel 6950 2875 0    50   Input ~ 0
ESP_TX
Connection ~ 8075 3750
Wire Wire Line
	8150 3750 8075 3750
Wire Wire Line
	7325 2875 7775 2875
$Comp
L Device:R R1
U 1 1 63B3D0CF
P 7175 2875
F 0 "R1" V 6968 2875 50  0000 C CNN
F 1 "10k" V 7059 2875 50  0000 C CNN
F 2 "" V 7105 2875 50  0001 C CNN
F 3 "~" H 7175 2875 50  0001 C CNN
	1    7175 2875
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 63B3C774
P 7175 3475
F 0 "R2" V 6968 3475 50  0000 C CNN
F 1 "10k" V 7059 3475 50  0000 C CNN
F 2 "" V 7105 3475 50  0001 C CNN
F 3 "~" H 7175 3475 50  0001 C CNN
	1    7175 3475
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 63B3B6E8
P 7625 4125
F 0 "#PWR0120" H 7625 3875 50  0001 C CNN
F 1 "GND" H 7630 3952 50  0000 C CNN
F 2 "" H 7625 4125 50  0001 C CNN
F 3 "" H 7625 4125 50  0001 C CNN
	1    7625 4125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 63B3AF30
P 7625 3975
F 0 "R3" H 7695 4021 50  0000 L CNN
F 1 "4k7" H 7695 3930 50  0000 L CNN
F 2 "" V 7555 3975 50  0001 C CNN
F 3 "~" H 7625 3975 50  0001 C CNN
	1    7625 3975
	1    0    0    -1  
$EndComp
Connection ~ 7625 3750
Wire Wire Line
	7625 3750 7625 3825
Wire Wire Line
	7625 3750 7625 3675
Wire Wire Line
	8075 3750 7625 3750
Wire Wire Line
	8075 3075 8075 3750
$Comp
L power:+5V #PWR0119
U 1 1 63B3879F
P 7625 3275
F 0 "#PWR0119" H 7625 3125 50  0001 C CNN
F 1 "+5V" H 7640 3448 50  0000 C CNN
F 2 "" H 7625 3275 50  0001 C CNN
F 3 "" H 7625 3275 50  0001 C CNN
	1    7625 3275
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 63B38143
P 8075 2675
F 0 "#PWR0118" H 8075 2525 50  0001 C CNN
F 1 "+5V" H 8090 2848 50  0000 C CNN
F 2 "" H 8075 2675 50  0001 C CNN
F 3 "" H 8075 2675 50  0001 C CNN
	1    8075 2675
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 63B376D9
P 7525 3475
F 0 "Q1" H 7715 3521 50  0000 L CNN
F 1 "2N3904" H 7715 3430 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7725 3400 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7525 3475 50  0001 L CNN
	1    7525 3475
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 63B37202
P 7975 2875
F 0 "Q2" H 8165 2921 50  0000 L CNN
F 1 "2N3904" H 8165 2830 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8175 2800 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7975 2875 50  0001 L CNN
	1    7975 2875
	1    0    0    -1  
$EndComp
Entry Wire Line
	6300 2450 6400 2350
Wire Wire Line
	6400 2350 8575 2350
Wire Bus Line
	625  5675 6300 5675
Wire Bus Line
	6300 2450 6300 5675
$EndSCHEMATC
