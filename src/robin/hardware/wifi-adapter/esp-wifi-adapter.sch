EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:esp-wifi-adapter-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BSS138 Q1
U 1 1 58F6BCD2
P 4700 4200
F 0 "Q1" H 4900 4275 50  0000 L CNN
F 1 "BSS138" H 4900 4200 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4900 4125 50  0001 L CIN
F 3 "" H 4700 4200 50  0001 L CNN
	1    4700 4200
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 58F6C006
P 4750 3900
F 0 "R2" V 4830 3900 50  0000 C CNN
F 1 "10K" V 4750 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4680 3900 50  0001 C CNN
F 3 "" H 4750 3900 50  0001 C CNN
	1    4750 3900
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 58F6C0A9
P 5400 3900
F 0 "R3" V 5480 3900 50  0000 C CNN
F 1 "10K" V 5400 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5330 3900 50  0001 C CNN
F 3 "" H 5400 3900 50  0001 C CNN
	1    5400 3900
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 58F6C102
P 4950 5000
F 0 "R4" V 5030 5000 50  0000 C CNN
F 1 "10K" V 4950 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4880 5000 50  0001 C CNN
F 3 "" H 4950 5000 50  0001 C CNN
	1    4950 5000
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 58F6C161
P 4950 4750
F 0 "R5" V 5030 4750 50  0000 C CNN
F 1 "10K" V 4950 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4880 4750 50  0001 C CNN
F 3 "" H 4950 4750 50  0001 C CNN
	1    4950 4750
	0    1    1    0   
$EndComp
$Comp
L BSS138 Q2
U 1 1 58F6C1DC
P 5350 4200
F 0 "Q2" H 5550 4275 50  0000 L CNN
F 1 "BSS138" H 5550 4200 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5550 4125 50  0001 L CIN
F 3 "" H 5350 4200 50  0001 L CNN
	1    5350 4200
	-1   0    0    1   
$EndComp
$Comp
L CONN_02X04 J1
U 1 1 58F6C219
P 4200 3250
F 0 "J1" H 4200 3500 50  0000 C CNN
F 1 "CONN_02X04" H 4200 3000 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x04_Pitch2.54mm" H 4200 2050 50  0001 C CNN
F 3 "" H 4200 2050 50  0001 C CNN
	1    4200 3250
	0    -1   1    0   
$EndComp
$Comp
L CONN_02X05 J2
U 1 1 58F6C296
P 4050 5550
F 0 "J2" H 4050 5850 50  0000 C CNN
F 1 "CONN_02X05" H 4050 5250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x05_Pitch2.54mm" H 4050 4350 50  0001 C CNN
F 3 "" H 4050 4350 50  0001 C CNN
	1    4050 5550
	0    -1   1    0   
$EndComp
$Comp
L R R1
U 1 1 58F6C30F
P 4250 2650
F 0 "R1" V 4330 2650 50  0000 C CNN
F 1 "10K" V 4250 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4180 2650 50  0001 C CNN
F 3 "" H 4250 2650 50  0001 C CNN
	1    4250 2650
	1    0    0    -1  
$EndComp
$Comp
L MCP1826S U1
U 1 1 59094C25
P 2600 4000
F 0 "U1" H 2300 4150 50  0000 L CNN
F 1 "MCP1826S" H 2900 4150 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 2600 3600 50  0001 C CIN
F 3 "" H 2600 4000 50  0001 C CNN
	1    2600 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 J3
U 1 1 59097597
P 4100 6650
F 0 "J3" H 4100 7000 50  0000 C CNN
F 1 "CONN_01X06" V 4200 6650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 4100 6650 50  0001 C CNN
F 3 "" H 4100 6650 50  0001 C CNN
	1    4100 6650
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5909A28E
P 2600 4450
F 0 "#PWR01" H 2600 4200 50  0001 C CNN
F 1 "GND" H 2600 4300 50  0000 C CNN
F 2 "" H 2600 4450 50  0001 C CNN
F 3 "" H 2600 4450 50  0001 C CNN
	1    2600 4450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 5909A305
P 3900 2500
F 0 "#PWR02" H 3900 2350 50  0001 C CNN
F 1 "+3.3V" H 3900 2640 50  0000 C CNN
F 2 "" H 3900 2500 50  0001 C CNN
F 3 "" H 3900 2500 50  0001 C CNN
	1    3900 2500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 5909A33C
P 3100 3850
F 0 "#PWR03" H 3100 3700 50  0001 C CNN
F 1 "+3.3V" H 3100 3990 50  0000 C CNN
F 2 "" H 3100 3850 50  0001 C CNN
F 3 "" H 3100 3850 50  0001 C CNN
	1    3100 3850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 5909A4FD
P 4050 6300
F 0 "#PWR04" H 4050 6150 50  0001 C CNN
F 1 "+5V" H 4050 6440 50  0000 C CNN
F 2 "" H 4050 6300 50  0001 C CNN
F 3 "" H 4050 6300 50  0001 C CNN
	1    4050 6300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 5909A60A
P 2100 3850
F 0 "#PWR05" H 2100 3700 50  0001 C CNN
F 1 "+5V" H 2100 3990 50  0000 C CNN
F 2 "" H 2100 3850 50  0001 C CNN
F 3 "" H 2100 3850 50  0001 C CNN
	1    2100 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5909A753
P 3500 6450
F 0 "#PWR06" H 3500 6200 50  0001 C CNN
F 1 "GND" H 3500 6300 50  0000 C CNN
F 2 "" H 3500 6450 50  0001 C CNN
F 3 "" H 3500 6450 50  0001 C CNN
	1    3500 6450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 5909A7E8
P 5400 5000
F 0 "#PWR07" H 5400 4850 50  0001 C CNN
F 1 "+5V" H 5400 5140 50  0000 C CNN
F 2 "" H 5400 5000 50  0001 C CNN
F 3 "" H 5400 5000 50  0001 C CNN
	1    5400 5000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 5909A9F7
P 3950 5100
F 0 "#PWR08" H 3950 4950 50  0001 C CNN
F 1 "+5V" H 3950 5240 50  0000 C CNN
F 2 "" H 3950 5100 50  0001 C CNN
F 3 "" H 3950 5100 50  0001 C CNN
	1    3950 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5909AA6F
P 4500 3700
F 0 "#PWR09" H 4500 3450 50  0001 C CNN
F 1 "GND" H 4500 3550 50  0000 C CNN
F 2 "" H 4500 3700 50  0001 C CNN
F 3 "" H 4500 3700 50  0001 C CNN
	1    4500 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5909AB5B
P 3550 5300
F 0 "#PWR010" H 3550 5050 50  0001 C CNN
F 1 "GND" H 3550 5150 50  0000 C CNN
F 2 "" H 3550 5300 50  0001 C CNN
F 3 "" H 3550 5300 50  0001 C CNN
	1    3550 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2900 4050 3000
Wire Wire Line
	3900 2900 4150 2900
Wire Wire Line
	4150 2900 4150 3000
Connection ~ 4150 2900
Wire Wire Line
	3900 2500 3900 2900
Connection ~ 4050 2900
Wire Wire Line
	4250 3700 4500 3700
Wire Wire Line
	3900 2500 4250 2500
Connection ~ 3900 2900
Wire Wire Line
	4250 2800 4250 3000
Wire Wire Line
	4600 4000 4600 3900
Wire Wire Line
	4600 3900 4050 3900
Wire Wire Line
	5250 2850 5250 4000
Wire Wire Line
	5250 2850 4350 2850
Wire Wire Line
	4350 2850 4350 3000
Wire Wire Line
	4900 4150 4900 3900
Wire Wire Line
	5550 3750 5550 4150
Wire Wire Line
	4250 5300 4250 4750
Wire Wire Line
	4250 4750 4800 4750
Wire Wire Line
	4250 3500 4250 3700
Wire Wire Line
	3950 5100 3950 5300
Wire Wire Line
	3850 5800 3850 6100
Wire Wire Line
	3850 6100 4600 6100
Wire Wire Line
	4600 6100 4600 4400
Connection ~ 4250 6100
Wire Wire Line
	4150 5950 4500 5950
Wire Wire Line
	4500 5950 4500 4750
Connection ~ 4500 4750
Wire Wire Line
	4350 3700 4350 3500
Wire Wire Line
	4050 3900 4050 3500
Connection ~ 5250 3900
Wire Wire Line
	4750 4750 4750 4500
Wire Wire Line
	4750 4500 5250 4500
Wire Wire Line
	5250 4500 5250 4400
Connection ~ 4750 4750
Wire Wire Line
	4800 5000 4600 5000
Connection ~ 4600 5000
Wire Wire Line
	4250 6100 4250 6450
Wire Wire Line
	4150 5950 4150 6450
Wire Wire Line
	4050 6300 4050 6450
Wire Wire Line
	2600 4300 2600 4450
Wire Wire Line
	3500 6450 3500 6350
Wire Wire Line
	3500 6350 3850 6350
Wire Wire Line
	3850 6350 3850 6450
Wire Wire Line
	5100 4750 5200 4750
Wire Wire Line
	5200 4750 5200 5000
Wire Wire Line
	5100 5000 5400 5000
Connection ~ 5200 5000
Connection ~ 4350 3700
Wire Wire Line
	3550 5300 3550 5200
Wire Wire Line
	3550 5200 3850 5200
Wire Wire Line
	3850 5200 3850 5300
Wire Wire Line
	3100 3850 3100 3900
Wire Wire Line
	3100 3900 2900 3900
Wire Wire Line
	2100 3850 2100 3900
Wire Wire Line
	2100 3900 2300 3900
$Comp
L +3.3V #PWR?
U 1 1 59096C5A
P 5050 3650
F 0 "#PWR?" H 5050 3500 50  0001 C CNN
F 1 "+3.3V" H 5050 3790 50  0000 C CNN
F 2 "" H 5050 3650 50  0001 C CNN
F 3 "" H 5050 3650 50  0001 C CNN
	1    5050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3650 5050 3900
Wire Wire Line
	5050 3900 4900 3900
Wire Wire Line
	5550 3750 5050 3750
Connection ~ 5050 3750
Connection ~ 5550 3900
$EndSCHEMATC
