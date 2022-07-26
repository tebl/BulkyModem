EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BulkyModem Front Plate (FP1)"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "A cosmetic plate to go on the front of the device."
$EndDescr
$Comp
L mounting:Mounting_Pin M1
U 1 1 6282631C
P 10700 575
F 0 "M1" H 10700 675 50  0001 C CNN
F 1 "Mounting_Pin" H 10700 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10700 575 50  0001 C CNN
F 3 "~" H 10700 575 50  0001 C CNN
	1    10700 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M2
U 1 1 62826824
P 10825 575
F 0 "M2" H 10825 675 50  0001 C CNN
F 1 "Mounting_Pin" H 10825 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10825 575 50  0001 C CNN
F 3 "~" H 10825 575 50  0001 C CNN
	1    10825 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M3
U 1 1 62826D8F
P 10950 575
F 0 "M3" H 10950 675 50  0001 C CNN
F 1 "Mounting_Pin" H 10950 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 10950 575 50  0001 C CNN
F 3 "~" H 10950 575 50  0001 C CNN
	1    10950 575 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting_Pin M4
U 1 1 62827110
P 11075 575
F 0 "M4" H 11075 675 50  0001 C CNN
F 1 "Mounting_Pin" H 11075 500 50  0001 C CNN
F 2 "mounting:M3_pin" H 11075 575 50  0001 C CNN
F 3 "~" H 11075 575 50  0001 C CNN
	1    11075 575 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 725  10700 800 
Wire Wire Line
	10700 800  10825 800 
Wire Wire Line
	11075 800  11075 725 
Wire Wire Line
	10825 725  10825 800 
Connection ~ 10825 800 
Wire Wire Line
	10825 800  10950 800 
Wire Wire Line
	10950 725  10950 800 
Connection ~ 10950 800 
Wire Wire Line
	10950 800  11075 800 
Connection ~ 11075 800 
Wire Wire Line
	11075 800  11075 875 
$Comp
L power:GND #PWR0111
U 1 1 6282AADA
P 11075 875
F 0 "#PWR0111" H 11075 625 50  0001 C CNN
F 1 "GND" H 11080 702 50  0000 C CNN
F 2 "" H 11075 875 50  0001 C CNN
F 3 "" H 11075 875 50  0001 C CNN
	1    11075 875 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 62DFAD4A
P 11075 800
F 0 "#FLG?" H 11075 875 50  0001 C CNN
F 1 "PWR_FLAG" H 11075 973 50  0001 C CNN
F 2 "" H 11075 800 50  0001 C CNN
F 3 "~" H 11075 800 50  0001 C CNN
	1    11075 800 
	0    1    1    0   
$EndComp
$EndSCHEMATC
