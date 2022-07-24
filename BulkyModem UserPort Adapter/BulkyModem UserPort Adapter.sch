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
Comment4 "UserPort adapter for connecting to the BulkyModem via a 2x5 pin IDC cable."
$EndDescr
$Comp
L c64_user_port:C64_User_Port J1
U 1 1 60487E42
P 4900 3825
F 0 "J1" H 4900 4637 60  0000 C CNN
F 1 "C64_UserPort" H 4900 4531 60  0000 C CNN
F 2 "C64_User_Port:C64_User-Port" H 4750 4525 60  0001 C CNN
F 3 "~" H 4750 2625 60  0001 C CNN
	1    4900 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4375 4175 4375
Wire Wire Line
	4175 4375 4175 4525
Wire Wire Line
	4175 4525 5650 4525
Wire Wire Line
	5650 4525 5650 4375
Wire Wire Line
	5650 4375 5550 4375
Wire Wire Line
	5550 3275 5650 3275
Wire Wire Line
	5650 3275 5650 4375
Connection ~ 5650 4375
Wire Wire Line
	4250 3275 4175 3275
Wire Wire Line
	4175 3275 4175 4375
Connection ~ 4175 4375
$Comp
L power:GND #PWR0101
U 1 1 6048C013
P 5650 4675
F 0 "#PWR0101" H 5650 4425 50  0001 C CNN
F 1 "GND" H 5655 4502 50  0000 C CNN
F 2 "" H 5650 4675 50  0001 C CNN
F 3 "" H 5650 4675 50  0001 C CNN
	1    5650 4675
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
P 7550 3775
F 0 "J3" H 7562 4200 50  0000 C CNN
F 1 "C64_Modem_IDC" H 7562 4109 50  0000 C CNN
F 2 "BulkyModem:C64_Adapter_IDC" H 7575 3450 50  0001 C CNN
F 3 "" H 7575 3450 50  0001 C CNN
	1    7550 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	8175 3575 8175 3675
Connection ~ 8175 3875
Connection ~ 8175 3775
Wire Wire Line
	8175 3775 8175 3875
Connection ~ 8175 3675
Wire Wire Line
	8175 3675 8175 3775
$Comp
L power:GND #PWR0102
U 1 1 62D9791D
P 8175 4125
F 0 "#PWR0102" H 8175 3875 50  0001 C CNN
F 1 "GND" H 8180 3952 50  0000 C CNN
F 2 "" H 8175 4125 50  0001 C CNN
F 3 "" H 8175 4125 50  0001 C CNN
	1    8175 4125
	1    0    0    -1  
$EndComp
Text GLabel 6325 3675 0    50   Output ~ 0
TX
Wire Wire Line
	6325 3675 6400 3675
Wire Wire Line
	6325 3775 6400 3775
Wire Wire Line
	6325 3875 6400 3875
Wire Wire Line
	6325 3975 6400 3975
Text GLabel 6325 3875 0    50   Output ~ 0
RTS
Text GLabel 6325 3775 0    50   Input ~ 0
RX
Text GLabel 6325 3975 0    50   Input ~ 0
CTS
NoConn ~ 5550 4175
NoConn ~ 5550 4275
Text GLabel 4025 3375 0    50   Input ~ 0
TX
Wire Wire Line
	4100 3375 4250 3375
Wire Wire Line
	4100 3375 4100 3475
Wire Wire Line
	4100 3475 4250 3475
Wire Wire Line
	4100 3375 4025 3375
Connection ~ 4100 3375
Text GLabel 4025 4275 0    50   Output ~ 0
RX
Text GLabel 4025 3575 0    50   Output ~ 0
CTS
Wire Wire Line
	4025 3575 4250 3575
Text GLabel 4025 4075 0    50   Input ~ 0
RTS
Wire Wire Line
	4025 4275 4250 4275
Wire Wire Line
	4025 4075 4250 4075
NoConn ~ 4250 3675
NoConn ~ 4250 3775
NoConn ~ 4250 3975
NoConn ~ 5550 4075
NoConn ~ 5550 3975
NoConn ~ 5550 3575
NoConn ~ 5550 3475
Wire Wire Line
	6900 3575 6975 3575
Wire Wire Line
	7100 3675 6900 3675
Wire Wire Line
	6900 3775 7100 3775
Wire Wire Line
	7100 3875 6900 3875
Wire Wire Line
	6900 3975 7100 3975
Wire Wire Line
	6900 4175 6975 4175
Wire Wire Line
	6975 4175 6975 4250
$Comp
L power:GND #PWR0103
U 1 1 62DCE03D
P 6975 4325
F 0 "#PWR0103" H 6975 4075 50  0001 C CNN
F 1 "GND" H 6980 4152 50  0000 C CNN
F 2 "" H 6975 4325 50  0001 C CNN
F 3 "" H 6975 4325 50  0001 C CNN
	1    6975 4325
	1    0    0    -1  
$EndComp
Text GLabel 4025 3875 0    50   Input ~ 0
DCD
Wire Wire Line
	4025 3875 4250 3875
Text GLabel 6325 4075 0    50   Output ~ 0
DCD
Wire Wire Line
	6325 4075 6400 4075
Wire Wire Line
	6400 4175 6325 4175
Wire Wire Line
	6325 4175 6325 4250
Wire Wire Line
	6325 4250 6975 4250
Connection ~ 6975 4250
Wire Wire Line
	6975 4325 6975 4250
Wire Wire Line
	6400 3575 6325 3575
Wire Wire Line
	6325 3575 6325 3500
Wire Wire Line
	6325 3500 6975 3500
Wire Wire Line
	6975 3500 6975 3575
Text Notes 6275 4675 0    50   ~ 0
Connect DCD to RTS?
Text GLabel 5800 3675 2    50   Input ~ 0
RX
Text GLabel 5800 3875 2    50   Input ~ 0
TX
Wire Wire Line
	4250 4175 4100 4175
Wire Wire Line
	4100 4175 4100 4600
Wire Wire Line
	4100 4600 5725 4600
Wire Wire Line
	5650 4525 5650 4675
Connection ~ 5650 4525
Wire Wire Line
	5725 3775 5550 3775
Wire Wire Line
	5725 3775 5725 4600
Wire Wire Line
	5550 3675 5800 3675
Wire Wire Line
	5800 3875 5550 3875
NoConn ~ 7100 3575
Wire Wire Line
	5550 3375 6225 3375
Wire Wire Line
	6225 3375 6225 3500
Wire Wire Line
	6225 3500 6325 3500
Connection ~ 6325 3500
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J2
U 1 1 62DBC4D4
P 6600 3875
F 0 "J2" H 6650 4392 50  0000 C CNN
F 1 "Temporary" H 6650 4301 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 6600 3875 50  0001 C CNN
F 3 "~" H 6600 3875 50  0001 C CNN
	1    6600 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4075 8100 4075
Wire Wire Line
	8100 4075 8100 3975
Wire Wire Line
	8100 3975 8025 3975
Wire Wire Line
	8025 3875 8175 3875
Wire Wire Line
	8025 3775 8175 3775
Wire Wire Line
	8025 3575 8175 3575
Wire Wire Line
	8025 3675 8175 3675
Wire Wire Line
	8175 3875 8175 4125
$EndSCHEMATC
