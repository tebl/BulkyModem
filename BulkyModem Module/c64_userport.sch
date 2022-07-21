EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "BulkyModem Module (C64 UserPort)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5375 3800 0    50   Input ~ 0
C64_TX
Text HLabel 5375 4000 0    50   Input ~ 0
C64_RTS
Text HLabel 5375 3900 0    50   Output ~ 0
C64_RX
Text HLabel 5375 4100 0    50   Output ~ 0
C64_CTS
$Comp
L c64_adapter_idc:C64_Modem_OUT J5
U 1 1 62DCEDED
P 5900 3900
F 0 "J5" H 5912 4325 50  0000 C CNN
F 1 "C64_Modem_IDC" H 5912 4234 50  0000 C CNN
F 2 "BulkyModem:C64_Adapter_IDC" H 5925 3575 50  0001 C CNN
F 3 "" H 5925 3575 50  0001 C CNN
	1    5900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6375 3700 6450 3700
Wire Wire Line
	6450 3700 6450 3800
Wire Wire Line
	6375 4100 6450 4100
Connection ~ 6450 4100
Wire Wire Line
	6450 4100 6450 4175
Wire Wire Line
	6450 4000 6375 4000
Connection ~ 6450 4000
Wire Wire Line
	6450 4000 6450 4100
Wire Wire Line
	6375 3900 6450 3900
Connection ~ 6450 3900
Wire Wire Line
	6450 3900 6450 4000
Wire Wire Line
	6375 3800 6450 3800
Connection ~ 6450 3800
Wire Wire Line
	6450 3800 6450 3900
$Comp
L power:GND #PWR0139
U 1 1 62DD102B
P 6450 4175
F 0 "#PWR0139" H 6450 3925 50  0001 C CNN
F 1 "GND" H 6455 4002 50  0000 C CNN
F 2 "" H 6450 4175 50  0001 C CNN
F 3 "" H 6450 4175 50  0001 C CNN
	1    6450 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3700 5375 3700
Wire Wire Line
	5375 3700 5375 3625
$Comp
L power:+5V #PWR?
U 1 1 62DD613F
P 5375 3625
AR Path="/62DD613F" Ref="#PWR?"  Part="1" 
AR Path="/63AD1846/62DD613F" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 5375 3475 50  0001 C CNN
F 1 "+5V" H 5375 3800 50  0000 C CNN
F 2 "" H 5375 3625 50  0001 C CNN
F 3 "" H 5375 3625 50  0001 C CNN
	1    5375 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5375 3800 5450 3800
Wire Wire Line
	5375 3900 5450 3900
Wire Wire Line
	5375 4000 5450 4000
Wire Wire Line
	5375 4100 5450 4100
$EndSCHEMATC
