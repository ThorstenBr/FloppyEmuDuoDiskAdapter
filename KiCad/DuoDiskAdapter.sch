EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DuoDisk-FloppyEmu Adapter"
Date "2022-06-05"
Rev "1.0"
Comp "Thorsten Brehm"
Comment1 "CC-BY-SA 4.0"
Comment2 "FloppyEmu-DuoDisk-Adapter for the Apple II"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:DB25_Female J1
U 1 1 629CB973
P 1250 2850
F 0 "J1" H 1168 1358 50  0000 C CNN
F 1 "Apple II" H 1100 1450 50  0000 C CNN
F 2 "Connectors_DSUB:DSUB-25_Female_EdgeMount_Pitch2.77mm" H 1250 2850 50  0001 C CNN
F 3 " ~" H 1250 2850 50  0001 C CNN
	1    1250 2850
	-1   0    0    1   
$EndComp
$Comp
L Connector:DB25_Male J2
U 1 1 629CD696
P 4600 2850
F 0 "J2" H 4500 4350 50  0000 L CNN
F 1 "DuoDisk" H 4300 4250 50  0000 L CNN
F 2 "Connectors_DSUB:DSUB-25_Male_EdgeMount_Pitch2.77mm" H 4600 2850 50  0001 C CNN
F 3 " ~" H 4600 2850 50  0001 C CNN
	1    4600 2850
	1    0    0    -1  
$EndComp
NoConn ~ 1550 4050
NoConn ~ 4300 4050
NoConn ~ 4300 1650
NoConn ~ 1550 1650
NoConn ~ 1550 2350
NoConn ~ 1550 1750
NoConn ~ 4300 1750
NoConn ~ 4300 2350
Text Label 1650 1850 0    50   ~ 0
WPROT
Text Label 1650 1950 0    50   ~ 0
+5V
Text Label 1650 2150 0    50   ~ 0
-12V
Text Label 1650 2250 0    50   ~ 0
GND2
Text Label 1650 2450 0    50   ~ 0
GND1
Text Label 1650 2750 0    50   ~ 0
+12V
Text Label 1650 2850 0    50   ~ 0
_+5V
Text Label 1650 2950 0    50   ~ 0
+12V
Text Label 1650 3050 0    50   ~ 0
WR
Text Label 1650 3150 0    50   ~ 0
PHASE3
Text Label 1650 3250 0    50   ~ 0
WREQ
Text Label 1650 3350 0    50   ~ 0
PHASE2
Text Label 1650 3450 0    50   ~ 0
GND
Text Label 1650 3550 0    50   ~ 0
PHASE1
Text Label 1650 3650 0    50   ~ 0
RD
Text Label 1650 3750 0    50   ~ 0
PHASE0
Text Label 1650 3850 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J3
U 1 1 629DF311
P 2550 4850
F 0 "J3" H 2600 4100 50  0000 C CNN
F 1 "FloppyEmu" H 2600 4200 50  0000 C CNN
F 2 "ThorstensFootprints:Header_2x10_Shrouded_100mil" H 2550 4850 50  0001 C CNN
F 3 "~" H 2550 4850 50  0001 C CNN
	1    2550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4550 2150 4550
Wire Wire Line
	2150 4550 2150 4450
Wire Wire Line
	2350 4750 2100 4750
Wire Wire Line
	2100 4750 2100 2250
NoConn ~ 2350 4850
NoConn ~ 2350 4950
NoConn ~ 2350 5050
NoConn ~ 2350 5150
NoConn ~ 2350 5250
NoConn ~ 2350 5350
Wire Wire Line
	2850 4450 3150 4450
Wire Wire Line
	3150 4450 3150 3750
Wire Wire Line
	2850 4550 3200 4550
Wire Wire Line
	3200 4550 3200 3550
Wire Wire Line
	2850 4650 3250 4650
Wire Wire Line
	3250 4650 3250 3350
Wire Wire Line
	2850 4750 3300 4750
Wire Wire Line
	2850 4850 3350 4850
Wire Wire Line
	3350 4850 3350 3250
Wire Wire Line
	2850 4950 3400 4950
Wire Wire Line
	3400 4950 3400 1950
Connection ~ 3400 1950
Wire Wire Line
	1550 2650 2250 2650
Wire Wire Line
	1550 2050 2250 2050
Wire Wire Line
	2850 5150 3450 5150
Wire Wire Line
	3450 5150 3450 3650
Wire Wire Line
	2850 5250 3500 5250
Wire Wire Line
	3500 5250 3500 3050
Wire Wire Line
	2850 5350 3550 5350
Wire Wire Line
	3550 5350 3550 1850
$Comp
L Device:R R1
U 1 1 629FBAE6
P 1700 4650
F 0 "R1" V 1907 4650 50  0000 C CNN
F 1 "470" V 1816 4650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1630 4650 50  0001 C CNN
F 3 "~" H 1700 4650 50  0001 C CNN
	1    1700 4650
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 629FE426
P 5850 1950
F 0 "SW1" V 5804 2098 50  0000 L CNN
F 1 "DRIVE1" V 5895 2098 50  0000 L CNN
F 2 "ThorstensFootprints:KNX-1" H 5850 1950 50  0001 C CNN
F 3 "~" H 5850 1950 50  0001 C CNN
	1    5850 1950
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPDT SW2
U 1 1 629FFF9C
P 6900 1950
F 0 "SW2" V 6854 2098 50  0000 L CNN
F 1 "DRIVE2" V 6945 2098 50  0000 L CNN
F 2 "ThorstensFootprints:KNX-1" H 6900 1950 50  0001 C CNN
F 3 "~" H 6900 1950 50  0001 C CNN
	1    6900 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 62A00178
P 5950 2700
F 0 "R2" H 6100 2650 50  0000 R CNN
F 1 "3K3" H 6150 2750 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 2700 50  0001 C CNN
F 3 "~" H 5950 2700 50  0001 C CNN
	1    5950 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 62A0061F
P 7100 3000
F 0 "R3" H 7170 3046 50  0000 L CNN
F 1 "3K3" H 7170 2955 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7030 3000 50  0001 C CNN
F 3 "~" H 7100 3000 50  0001 C CNN
	1    7100 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 62A0082D
P 7100 2700
F 0 "R4" H 6950 2750 50  0000 L CNN
F 1 "3K3" H 6900 2650 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7030 2700 50  0001 C CNN
F 3 "~" H 7100 2700 50  0001 C CNN
	1    7100 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 62A00AA8
P 6800 3000
F 0 "R5" H 6870 3046 50  0000 L CNN
F 1 "3K3" H 6870 2955 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6730 3000 50  0001 C CNN
F 3 "~" H 6800 3000 50  0001 C CNN
	1    6800 3000
	1    0    0    -1  
$EndComp
Text GLabel 2250 2050 2    50   Output ~ 0
~ENABLE1
Text GLabel 4200 2050 0    50   Input ~ 0
~DUO_ENABLE1
Wire Wire Line
	4300 2050 4200 2050
Text GLabel 2250 2650 2    50   Output ~ 0
~ENABLE2
Text GLabel 4200 2650 0    50   Input ~ 0
~DUO_ENABLE2
Wire Wire Line
	4200 2650 4300 2650
Text GLabel 1450 4650 0    50   Input ~ 0
~FE_ENABLE2
Text GLabel 3600 5050 2    50   Input ~ 0
~FE_ENABLE1
Wire Wire Line
	2850 5050 3600 5050
Text GLabel 3500 1700 2    50   Output ~ 0
+5V
Wire Wire Line
	3400 1700 3500 1700
Text GLabel 5850 1650 1    50   Input ~ 0
~ENABLE1
Text GLabel 6900 1650 1    50   Input ~ 0
~ENABLE2
Wire Wire Line
	5850 1750 5850 1650
Wire Wire Line
	6900 1650 6900 1750
Text GLabel 7350 2850 2    50   Input ~ 0
+5V
Connection ~ 6800 2850
Wire Wire Line
	7000 2150 7000 2300
Text GLabel 6050 2300 2    50   Output ~ 0
~DUO_ENABLE1
Text GLabel 7250 2300 2    50   Output ~ 0
~DUO_ENABLE2
Text GLabel 7250 3300 2    50   Output ~ 0
~FE_ENABLE1
Text GLabel 7250 3650 2    50   Output ~ 0
~FE_ENABLE2
$Comp
L Switch:SW_DPDT_x2 SW3
U 1 1 62A26783
P 6500 3300
F 0 "SW3" H 6500 2975 50  0000 C CNN
F 1 "SWAP 1/2" H 6500 3066 50  0000 C CNN
F 2 "ThorstensFootprints:KNX-2" H 6500 3300 50  0001 C CNN
F 3 "~" H 6500 3300 50  0001 C CNN
	1    6500 3300
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW3
U 2 1 62A2774D
P 6500 3650
F 0 "SW3" H 6500 4000 50  0000 C CNN
F 1 "SWAP 1/2" H 6500 3900 50  0000 C CNN
F 2 "ThorstensFootprints:KNX-2" H 6500 3650 50  0001 C CNN
F 3 "~" H 6500 3650 50  0001 C CNN
	2    6500 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 3300 6800 3300
Wire Wire Line
	7250 3650 7100 3650
Wire Wire Line
	6300 3200 5750 3200
Wire Wire Line
	6300 3400 6100 3400
Wire Wire Line
	5750 3200 5750 3750
Wire Wire Line
	5750 3750 6300 3750
Wire Notes Line
	7850 4350 5050 4350
Wire Notes Line
	5050 1150 7850 1150
Wire Notes Line
	4900 1150 4900 5850
Wire Notes Line
	850  5850 850  1150
Text Notes 5100 1250 0    50   ~ 0
Switches
Text Notes 1000 1250 0    50   ~ 0
Connectors
Text Label 2850 4450 0    50   ~ 0
PHASE0
Text Label 2850 4550 0    50   ~ 0
PHASE1
Text Label 2850 4650 0    50   ~ 0
PHASE2
Text Label 2850 4750 0    50   ~ 0
PHASE3
Text Label 2850 4850 0    50   ~ 0
WREQ
Text Label 2850 4950 0    50   ~ 0
+5V
Text Label 2850 5050 0    50   ~ 0
~FE_ENABLE1
Text Label 2850 5150 0    50   ~ 0
RD
Text Label 2850 5250 0    50   ~ 0
WR
Text Label 2850 5350 0    50   ~ 0
WPROT
Text Label 2200 4450 0    50   ~ 0
GND
Text Label 2200 4550 0    50   ~ 0
GND
Text Label 2150 4750 0    50   ~ 0
GND2
Text Notes 5100 4300 0    50   ~ 0
SW1 connects DRIVE1 to DUODISK or FLOPPYEMU\nSW2 connects DRIVE2 to DUODISK or FLOPPYEMU\nSW3 swaps FLOPPYEMU's DRIVE1/DRIVE2
Wire Notes Line
	5050 1150 5050 4350
Wire Notes Line
	7850 1150 7850 4350
Wire Wire Line
	6800 2850 7100 2850
Wire Wire Line
	6800 3150 6800 3300
Connection ~ 6800 3300
Wire Wire Line
	6800 3300 7250 3300
Connection ~ 7100 2850
Wire Wire Line
	7100 2850 7350 2850
Wire Wire Line
	7100 3150 7100 3650
Connection ~ 7100 3650
Wire Wire Line
	7100 3650 6700 3650
Wire Wire Line
	5950 2150 5950 2300
Wire Wire Line
	6800 2150 6800 2550
Wire Wire Line
	7100 2550 7100 2300
Wire Wire Line
	7000 2300 7100 2300
Connection ~ 7100 2300
Wire Wire Line
	7100 2300 7250 2300
Wire Wire Line
	6800 2550 6100 2550
Wire Wire Line
	6100 2550 6100 3400
Wire Wire Line
	6050 2300 5950 2300
Wire Wire Line
	5950 2850 6800 2850
Wire Wire Line
	5950 2550 5950 2300
Connection ~ 5950 2300
Wire Wire Line
	5750 2150 5750 3200
Connection ~ 5750 3200
Wire Wire Line
	6100 3550 6100 3400
Wire Wire Line
	6100 3550 6300 3550
Connection ~ 6100 3400
Text Label 5750 3750 0    50   ~ 0
~FE_ENABLE1_SW
Text Label 6100 2550 0    50   ~ 0
~FE_ENABLE2_SW
Text Label 1850 4650 0    50   ~ 0
~FE_ENABLE2_R
Wire Wire Line
	1550 4650 1450 4650
Connection ~ 2150 4450
Wire Wire Line
	2150 4450 2150 4200
Wire Wire Line
	2150 4450 2350 4450
Connection ~ 2150 3850
Wire Wire Line
	2150 3850 2150 3450
Text Label 1650 3950 0    50   ~ 0
GND3
Text Label 1650 2550 0    50   ~ 0
GND4
Connection ~ 2150 4200
Wire Wire Line
	2150 4200 2150 3850
Text GLabel 2300 4200 2    50   Output ~ 0
GND
Wire Wire Line
	2150 4200 2300 4200
Text GLabel 6000 4700 0    50   Input ~ 0
GND
$Comp
L Connector:TestPoint TP1
U 1 1 62B6B05E
P 6300 4700
F 0 "TP1" V 6254 4888 50  0000 L CNN
F 1 "GND" V 6345 4888 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 6500 4700 50  0001 C CNN
F 3 "~" H 6500 4700 50  0001 C CNN
	1    6300 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 4700 6000 4700
Wire Notes Line
	5050 4450 7850 4450
Text Notes 5100 4550 0    50   ~ 0
Testpoints
Wire Wire Line
	1850 4650 2350 4650
Wire Wire Line
	1550 2250 2100 2250
Connection ~ 2100 2250
Wire Wire Line
	1550 3450 2150 3450
Connection ~ 2150 3450
Wire Wire Line
	1550 3850 2150 3850
Wire Wire Line
	1550 3050 3500 3050
Connection ~ 3500 3050
Wire Wire Line
	1550 3150 3300 3150
Connection ~ 3300 3150
Wire Wire Line
	1550 3250 3350 3250
Connection ~ 3350 3250
Wire Wire Line
	1550 3350 3250 3350
Connection ~ 3250 3350
Wire Wire Line
	1550 3550 3200 3550
Connection ~ 3200 3550
Wire Wire Line
	1550 3750 3150 3750
Connection ~ 3150 3750
Wire Wire Line
	3550 1850 4300 1850
Wire Wire Line
	3400 1950 4300 1950
Wire Wire Line
	1550 2150 4300 2150
Wire Wire Line
	2100 2250 4300 2250
Wire Wire Line
	1550 2450 4300 2450
Wire Wire Line
	1550 2550 4300 2550
Wire Wire Line
	1550 2750 4300 2750
Wire Wire Line
	1550 2850 4300 2850
Wire Wire Line
	1550 2950 4300 2950
Wire Wire Line
	3500 3050 4300 3050
Wire Wire Line
	3300 3150 4300 3150
Wire Wire Line
	3350 3250 4300 3250
Wire Wire Line
	3250 3350 4300 3350
Wire Wire Line
	2150 3450 4300 3450
Wire Wire Line
	3200 3550 4300 3550
Wire Wire Line
	3450 3650 4300 3650
Wire Wire Line
	3150 3750 4300 3750
Wire Wire Line
	2150 3850 4300 3850
Wire Wire Line
	1550 3950 4300 3950
Wire Wire Line
	1550 1950 3400 1950
Wire Notes Line
	850  5850 4900 5850
Wire Notes Line
	5050 5850 7850 5850
Wire Notes Line
	5050 4450 5050 5850
Wire Notes Line
	7850 5850 7850 4450
Connection ~ 3450 3650
Wire Wire Line
	3300 3150 3300 4750
Wire Wire Line
	1550 3650 3450 3650
Wire Wire Line
	1550 1850 3550 1850
Connection ~ 3550 1850
Wire Wire Line
	3400 1950 3400 1700
Wire Notes Line
	850  1150 4900 1150
$EndSCHEMATC
