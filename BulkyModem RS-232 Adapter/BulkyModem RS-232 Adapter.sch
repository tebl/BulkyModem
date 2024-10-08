EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BulkyModem (C64 UserPort Adapter)"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "UserPort adapter for connecting to the BulkyModem via a 2x8-pin IDC cable."
$EndDescr
$Comp
L c64_user_port:C64_User_Port_Serial J1
U 1 1 60487E42
P 4375 3800
F 0 "J1" H 4375 4612 60  0000 C CNN
F 1 "C64_UserPort" H 4375 4506 60  0000 C CNN
F 2 "C64_User_Port:C64_User-Port" H 4225 4500 60  0001 C CNN
F 3 "~" H 4225 2600 60  0001 C CNN
	1    4375 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 4350 3650 4350
Wire Wire Line
	3650 4350 3650 4500
Wire Wire Line
	3650 4500 5125 4500
Wire Wire Line
	5125 4500 5125 4350
Wire Wire Line
	5125 4350 5025 4350
Wire Wire Line
	5025 3250 5125 3250
Wire Wire Line
	5125 3250 5125 4350
Connection ~ 5125 4350
Wire Wire Line
	3725 3250 3650 3250
Wire Wire Line
	3650 3250 3650 4350
Connection ~ 3650 4350
$Comp
L power:GND #PWR0101
U 1 1 6048C013
P 5125 4650
F 0 "#PWR0101" H 5125 4400 50  0001 C CNN
F 1 "GND" H 5130 4477 50  0000 C CNN
F 2 "" H 5125 4650 50  0001 C CNN
F 3 "" H 5125 4650 50  0001 C CNN
	1    5125 4650
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M1
U 1 1 604E62DD
P 10750 550
F 0 "M1" H 10750 650 50  0001 C CNN
F 1 "Mounting" H 10750 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10750 550 50  0001 C CNN
F 3 "~" H 10750 550 50  0001 C CNN
	1    10750 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 604E7421
P 10875 550
F 0 "M2" H 10875 650 50  0001 C CNN
F 1 "Mounting" H 10875 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10875 550 50  0001 C CNN
F 3 "~" H 10875 550 50  0001 C CNN
	1    10875 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 604E78AD
P 11000 550
F 0 "M3" H 11000 650 50  0001 C CNN
F 1 "Mounting" H 11000 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 11000 550 50  0001 C CNN
F 3 "~" H 11000 550 50  0001 C CNN
	1    11000 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 604E7CA7
P 11125 550
F 0 "M4" H 11125 650 50  0001 C CNN
F 1 "Mounting" H 11125 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 11125 550 50  0001 C CNN
F 3 "~" H 11125 550 50  0001 C CNN
	1    11125 550 
	1    0    0    -1  
$EndComp
$Comp
L c64_adapter_idc:C64_Modem_IDC J3
U 1 1 62D951D5
P 8475 3750
F 0 "J3" H 8487 4175 50  0000 C CNN
F 1 "C64_Modem_IDC" H 8487 4084 50  0000 C CNN
F 2 "BulkyModem:UserPort_Adapter_IDC" H 8500 3425 50  0001 C CNN
F 3 "" H 8500 3425 50  0001 C CNN
	1    8475 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3550 9100 3650
Connection ~ 9100 3850
Connection ~ 9100 3750
Wire Wire Line
	9100 3750 9100 3850
Connection ~ 9100 3650
Wire Wire Line
	9100 3650 9100 3750
$Comp
L power:GND #PWR0102
U 1 1 62D9791D
P 9100 4300
F 0 "#PWR0102" H 9100 4050 50  0001 C CNN
F 1 "GND" H 9105 4127 50  0000 C CNN
F 2 "" H 9100 4300 50  0001 C CNN
F 3 "" H 9100 4300 50  0001 C CNN
	1    9100 4300
	1    0    0    -1  
$EndComp
Text GLabel 7950 3650 0    50   Output ~ 0
TXD
Wire Wire Line
	7950 3650 8025 3650
Wire Wire Line
	7950 3750 8025 3750
Wire Wire Line
	7950 3850 8025 3850
Wire Wire Line
	7950 3950 8025 3950
Text GLabel 7950 3850 0    50   Output ~ 0
RTS
Text GLabel 7950 3750 0    50   Input ~ 0
RXD
Text GLabel 7950 3950 0    50   Input ~ 0
CTS
NoConn ~ 5025 4150
NoConn ~ 5025 4250
Text GLabel 3500 3450 0    50   Input ~ 0
TXD
Wire Wire Line
	3575 3350 3725 3350
Wire Wire Line
	3575 3350 3575 3450
Wire Wire Line
	3575 3450 3725 3450
Wire Wire Line
	3575 3450 3500 3450
Text GLabel 3500 4250 0    50   Output ~ 0
RXD
Text GLabel 3500 3550 0    50   Output ~ 0
CTS
Wire Wire Line
	3500 3550 3725 3550
Text GLabel 3500 4050 0    50   Input ~ 0
RTS
Wire Wire Line
	3500 4250 3725 4250
Wire Wire Line
	3500 4050 3725 4050
NoConn ~ 3725 3650
NoConn ~ 3725 3950
NoConn ~ 5025 4050
NoConn ~ 5025 3950
NoConn ~ 5025 3550
NoConn ~ 5025 3450
Text GLabel 3500 3850 0    50   Input ~ 0
DCD
Wire Wire Line
	3500 3850 3725 3850
Text GLabel 7950 4050 0    50   Output ~ 0
DCD
Wire Wire Line
	7950 4050 8025 4050
Text GLabel 5650 3650 2    50   Input ~ 0
RXD
Text GLabel 5650 3850 2    50   Input ~ 0
TXD
Wire Wire Line
	3725 4150 3575 4150
Wire Wire Line
	3575 4150 3575 4575
Wire Wire Line
	3575 4575 5200 4575
Wire Wire Line
	5125 4500 5125 4650
Connection ~ 5125 4500
Wire Wire Line
	5200 3750 5025 3750
Wire Wire Line
	5200 3750 5200 4575
Wire Wire Line
	5025 3650 5275 3650
NoConn ~ 8025 3550
Wire Wire Line
	8950 3850 9100 3850
Wire Wire Line
	8950 3750 9100 3750
Wire Wire Line
	8950 3550 9100 3550
Wire Wire Line
	8950 3650 9100 3650
Text GLabel 7950 4150 0    50   Output ~ 0
RI
Wire Wire Line
	7950 4150 8025 4150
Text GLabel 3500 3750 0    50   Input ~ 0
RI
Wire Wire Line
	3725 3750 3500 3750
Wire Wire Line
	9100 3850 9100 3950
Wire Wire Line
	8950 4150 9100 4150
Connection ~ 9100 4150
Wire Wire Line
	9100 4150 9100 4300
Wire Wire Line
	8950 4050 9100 4050
Connection ~ 9100 4050
Wire Wire Line
	9100 4050 9100 4150
Wire Wire Line
	8950 3950 9100 3950
Connection ~ 9100 3950
Wire Wire Line
	9100 3950 9100 4050
Connection ~ 3575 3450
NoConn ~ 5025 3350
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 642FE4A1
P 5425 3650
F 0 "JP1" H 5425 3855 50  0000 C CNN
F 1 "UP9600" H 5425 3764 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5425 3650 50  0001 C CNN
F 3 "~" H 5425 3650 50  0001 C CNN
	1    5425 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 3850 5275 3850
Wire Wire Line
	5650 3650 5575 3650
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 64311086
P 5425 3850
F 0 "JP2" H 5425 3725 50  0000 C CNN
F 1 "UP9600" H 5425 3650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5425 3850 50  0001 C CNN
F 3 "~" H 5425 3850 50  0001 C CNN
	1    5425 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 3850 5650 3850
Text Notes 5275 4500 0    50   ~ 0
UP9600 is not compatible with burst mode disk drives\nconnected to Commodore 128. This is due to UP9600\nusing HW-timers that are needed for other things on\nthe 128.
$EndSCHEMATC
