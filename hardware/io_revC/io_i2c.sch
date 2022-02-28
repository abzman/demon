EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Demon Debugger ROM-IO Interface - I2C Version"
Date "2021-05-24"
Rev "B"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3200 2300 3200 1400
Wire Wire Line
	3100 2400 3100 1500
$Comp
L power:GND #PWR0101
U 1 1 5E291DAD
P 3900 4400
F 0 "#PWR0101" H 3900 4150 50  0001 C CNN
F 1 "GND" H 3905 4227 50  0000 C CNN
F 2 "" H 3900 4400 50  0001 C CNN
F 3 "" H 3900 4400 50  0001 C CNN
	1    3900 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5E292725
P 3550 1850
F 0 "#PWR0103" H 3550 1700 50  0001 C CNN
F 1 "+5V" H 3565 2023 50  0000 C CNN
F 2 "" H 3550 1850 50  0001 C CNN
F 3 "" H 3550 1850 50  0001 C CNN
	1    3550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4200 3900 4400
$Comp
L power:GND #PWR0106
U 1 1 5E2DC915
P 7750 3500
F 0 "#PWR0106" H 7750 3250 50  0001 C CNN
F 1 "GND" H 7755 3327 50  0000 C CNN
F 2 "" H 7750 3500 50  0001 C CNN
F 3 "" H 7750 3500 50  0001 C CNN
	1    7750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1400 5000 1400
Wire Wire Line
	5000 1400 5000 1900
$Comp
L Memory_EPROM:2716 U1
U 1 1 607DF9F3
P 3900 3100
F 0 "U1" H 3900 4281 50  0000 C CNN
F 1 "2716" H 3900 4190 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 3900 3100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11107M.pdf" H 3900 3100 50  0001 C CNN
	1    3900 3100
	1    0    0    -1  
$EndComp
$Comp
L Memory_EPROM:2716 J1
U 1 1 607E1EA2
P 2300 3100
F 0 "J1" H 2300 4281 50  0000 C CNN
F 1 "Target Interface, 2716 Pinout" H 2300 4190 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 2300 3100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11107M.pdf" H 2300 3100 50  0001 C CNN
	1    2300 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 607E52A3
P 2300 4400
F 0 "#PWR0104" H 2300 4150 50  0001 C CNN
F 1 "GND" H 2305 4227 50  0000 C CNN
F 2 "" H 2300 4400 50  0001 C CNN
F 3 "" H 2300 4400 50  0001 C CNN
	1    2300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4200 2300 4400
$Comp
L power:+5V #PWR0107
U 1 1 607E610F
P 1700 1900
F 0 "#PWR0107" H 1700 1750 50  0001 C CNN
F 1 "+5V" H 1715 2073 50  0000 C CNN
F 2 "" H 1700 1900 50  0001 C CNN
F 3 "" H 1700 1900 50  0001 C CNN
	1    1700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2100 1700 1900
Text Label 2800 2300 0    50   ~ 0
D0
Text Label 4400 2300 0    50   ~ 0
D0
Text Label 2800 2400 0    50   ~ 0
D1
Text Label 2800 2500 0    50   ~ 0
D2
Text Label 4400 2400 0    50   ~ 0
D1
Text Label 4400 2500 0    50   ~ 0
D2
Text Label 2800 2600 0    50   ~ 0
D3
Text Label 2800 2700 0    50   ~ 0
D4
Text Label 2800 2800 0    50   ~ 0
D5
Text Label 2800 2900 0    50   ~ 0
D6
Text Label 2800 3000 0    50   ~ 0
D7
Text Label 4400 2600 0    50   ~ 0
D3
Text Label 4400 2700 0    50   ~ 0
D4
Text Label 4400 2800 0    50   ~ 0
D5
Text Label 4400 2900 0    50   ~ 0
D6
Text Label 4400 3000 0    50   ~ 0
D7
$Comp
L 74xx:74HC74 U2
U 1 1 607FBD53
P 5900 2000
F 0 "U2" H 5900 2481 50  0000 C CNN
F 1 "74HCT74" H 5900 2390 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5900 2000 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5900 2000 50  0001 C CNN
	1    5900 2000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC74 U2
U 2 1 607FC853
P 5900 3150
F 0 "U2" H 5900 3631 50  0000 C CNN
F 1 "74HCT74" H 5900 3540 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5900 3150 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5900 3150 50  0001 C CNN
	2    5900 3150
	1    0    0    -1  
$EndComp
Text Label 1700 2300 0    50   ~ 0
A0
Text Label 1700 2400 0    50   ~ 0
A1
Text Label 1700 2500 0    50   ~ 0
A2
Text Label 1700 2600 0    50   ~ 0
A3
Text Label 1700 2700 0    50   ~ 0
A4
Text Label 1700 2800 0    50   ~ 0
A5
Text Label 1700 2900 0    50   ~ 0
A6
Text Label 1700 3000 0    50   ~ 0
A7
Text Label 1700 3100 0    50   ~ 0
A8
Text Label 1700 3200 0    50   ~ 0
A9
Text Label 1700 3300 0    50   ~ 0
A10
Text Label 3300 2400 0    50   ~ 0
A1
Text Label 3300 2500 0    50   ~ 0
A2
Text Label 3300 2600 0    50   ~ 0
A3
Text Label 3300 2700 0    50   ~ 0
A4
Text Label 3300 2800 0    50   ~ 0
A5
Text Label 3300 2900 0    50   ~ 0
A6
Text Label 3300 3000 0    50   ~ 0
A7
Text Label 3300 3100 0    50   ~ 0
A8
Text Label 3300 3200 0    50   ~ 0
A9
Text Label 3300 3300 0    50   ~ 0
A10
Text Label 3300 2300 0    50   ~ 0
A0
Wire Wire Line
	3500 4000 3350 4000
Wire Wire Line
	3100 1500 4900 1500
Text Label 1700 3800 0    50   ~ 0
VPP
Wire Wire Line
	1650 2300 1900 2300
Wire Wire Line
	1650 2400 1900 2400
Wire Wire Line
	1650 2500 1900 2500
Wire Wire Line
	1650 2600 1900 2600
Wire Wire Line
	1650 2700 1900 2700
Wire Wire Line
	1650 2800 1900 2800
Wire Wire Line
	1650 2900 1900 2900
Wire Wire Line
	1650 3000 1900 3000
Wire Wire Line
	1650 3100 1900 3100
Wire Wire Line
	1650 3200 1900 3200
Wire Wire Line
	1650 3300 1900 3300
Wire Wire Line
	1650 3800 1900 3800
Wire Wire Line
	3200 2300 3500 2300
Wire Wire Line
	3100 2400 3500 2400
Wire Wire Line
	3250 2500 3500 2500
Wire Wire Line
	3250 2600 3500 2600
Wire Wire Line
	3250 2700 3500 2700
Wire Wire Line
	3250 2800 3500 2800
Wire Wire Line
	3250 2900 3500 2900
Wire Wire Line
	3250 3000 3500 3000
Wire Wire Line
	3250 3100 3500 3100
Wire Wire Line
	3250 3200 3500 3200
Wire Wire Line
	3250 3300 3500 3300
Wire Wire Line
	2700 2300 2950 2300
Wire Wire Line
	2700 2400 2950 2400
Wire Wire Line
	2700 2500 2950 2500
Wire Wire Line
	2700 2600 2950 2600
Wire Wire Line
	2700 2700 2950 2700
Wire Wire Line
	2700 2800 2950 2800
Wire Wire Line
	2700 2900 2950 2900
Wire Wire Line
	2700 3000 2950 3000
Wire Wire Line
	4300 2400 4550 2400
Wire Wire Line
	4300 2300 4650 2300
Wire Wire Line
	4300 2500 4550 2500
Wire Wire Line
	4300 2600 4550 2600
Wire Wire Line
	4300 2700 4550 2700
Wire Wire Line
	4300 2800 4550 2800
Wire Wire Line
	4300 2900 4550 2900
Wire Wire Line
	4300 3000 4550 3000
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 60A18A27
P 7650 3050
F 0 "Q1" H 7854 3096 50  0000 L CNN
F 1 "2N7000" H 7854 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7850 2975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 7650 3050 50  0001 L CNN
	1    7650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2700 7750 2850
Wire Wire Line
	4650 2300 4650 4200
Wire Wire Line
	7750 3250 7750 3500
Connection ~ 7750 2700
$Comp
L power:GND #PWR0108
U 1 1 60A5E23B
P 8950 4300
F 0 "#PWR0108" H 8950 4050 50  0001 C CNN
F 1 "GND" H 8955 4127 50  0000 C CNN
F 2 "" H 8950 4300 50  0001 C CNN
F 3 "" H 8950 4300 50  0001 C CNN
	1    8950 4300
	1    0    0    -1  
$EndComp
Text Label 7200 3150 0    50   ~ 0
SDA
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 60A79C85
P 9350 2950
F 0 "A1" H 9350 1861 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 9350 1770 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 9350 2950 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 9350 2950 50  0001 C CNN
	1    9350 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8450 3450 8850 3450
Wire Wire Line
	6200 1900 6500 1900
Wire Wire Line
	8850 3350 8550 3350
Wire Wire Line
	7750 2700 8200 2700
Connection ~ 9250 3950
Wire Wire Line
	9250 3950 9350 3950
Wire Wire Line
	8950 3950 8950 4300
Wire Wire Line
	8950 3950 9250 3950
$Comp
L Device:R R1
U 1 1 60AA2A6E
P 7750 2450
F 0 "R1" H 7820 2496 50  0000 L CNN
F 1 "4.7k" H 7820 2405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7680 2450 50  0001 C CNN
F 3 "~" H 7750 2450 50  0001 C CNN
	1    7750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1500 4900 3050
$Comp
L power:+5V #PWR0109
U 1 1 60ABFE6E
P 7750 2200
F 0 "#PWR0109" H 7750 2050 50  0001 C CNN
F 1 "+5V" H 7765 2373 50  0000 C CNN
F 2 "" H 7750 2200 50  0001 C CNN
F 3 "" H 7750 2200 50  0001 C CNN
	1    7750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2200 7750 2300
NoConn ~ 8850 2350
NoConn ~ 8850 2450
NoConn ~ 9150 1950
NoConn ~ 9250 1950
NoConn ~ 9450 1950
NoConn ~ 9850 2350
NoConn ~ 9850 2450
NoConn ~ 9850 2550
NoConn ~ 9850 2650
NoConn ~ 9850 2750
NoConn ~ 9850 2850
NoConn ~ 9850 2950
NoConn ~ 9850 3050
NoConn ~ 9850 3150
NoConn ~ 9850 3250
NoConn ~ 9850 3350
NoConn ~ 9850 3450
NoConn ~ 9850 3550
NoConn ~ 9850 3650
NoConn ~ 8850 3650
NoConn ~ 8850 3550
NoConn ~ 8850 3250
NoConn ~ 8850 3150
NoConn ~ 8850 3050
NoConn ~ 8850 2950
NoConn ~ 8850 2750
NoConn ~ 6200 2100
NoConn ~ 6200 3250
Text Label 3550 1950 0    50   ~ 0
VCC
Wire Wire Line
	3550 2100 3550 1850
Wire Wire Line
	3550 2100 3900 2100
$Comp
L power:+5V #PWR0110
U 1 1 60B637C5
P 5550 1600
F 0 "#PWR0110" H 5550 1450 50  0001 C CNN
F 1 "+5V" H 5565 1773 50  0000 C CNN
F 2 "" H 5550 1600 50  0001 C CNN
F 3 "" H 5550 1600 50  0001 C CNN
	1    5550 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1600 5550 1700
Wire Wire Line
	5550 1700 5900 1700
Wire Wire Line
	5550 1700 5550 2300
Wire Wire Line
	5550 2300 5900 2300
Connection ~ 5550 1700
Wire Wire Line
	5550 2300 5550 2850
Wire Wire Line
	5550 2850 5900 2850
Connection ~ 5550 2300
Wire Wire Line
	5550 2850 5550 3450
Wire Wire Line
	5550 3450 5900 3450
Connection ~ 5550 2850
$Comp
L 74xx:74HC74 U2
U 3 1 6094B177
P 7100 5450
F 0 "U2" H 7330 5496 50  0000 L CNN
F 1 "74HCT74" H 7330 5405 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7100 5450 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 7100 5450 50  0001 C CNN
	3    7100 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 6094D2E4
P 7100 4850
F 0 "#PWR0112" H 7100 4700 50  0001 C CNN
F 1 "+5V" H 7115 5023 50  0000 C CNN
F 2 "" H 7100 4850 50  0001 C CNN
F 3 "" H 7100 4850 50  0001 C CNN
	1    7100 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 60955ECA
P 7100 6050
F 0 "#PWR0113" H 7100 5800 50  0001 C CNN
F 1 "GND" H 7105 5877 50  0000 C CNN
F 2 "" H 7100 6050 50  0001 C CNN
F 3 "" H 7100 6050 50  0001 C CNN
	1    7100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4850 7100 4950
Connection ~ 7100 4950
Wire Wire Line
	7100 4950 7100 5050
Wire Wire Line
	7100 5950 7100 6050
Wire Wire Line
	7100 5850 7100 5950
Connection ~ 7100 5950
$Comp
L Device:C C1
U 1 1 609B294C
P 7500 1150
F 0 "C1" H 7615 1196 50  0000 L CNN
F 1 "0.1uF" H 7615 1105 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 7538 1000 50  0001 C CNN
F 3 "~" H 7500 1150 50  0001 C CNN
	1    7500 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 609B8BE0
P 7500 950
F 0 "#PWR0114" H 7500 800 50  0001 C CNN
F 1 "+5V" H 7515 1123 50  0000 C CNN
F 2 "" H 7500 950 50  0001 C CNN
F 3 "" H 7500 950 50  0001 C CNN
	1    7500 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 609C1DCC
P 7500 1350
F 0 "#PWR0115" H 7500 1100 50  0001 C CNN
F 1 "GND" H 7505 1177 50  0000 C CNN
F 2 "" H 7500 1350 50  0001 C CNN
F 3 "" H 7500 1350 50  0001 C CNN
	1    7500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 950  7500 1000
Wire Wire Line
	7500 1300 7500 1350
$Comp
L Device:C C2
U 1 1 609D51D4
P 7950 1150
F 0 "C2" H 8065 1196 50  0000 L CNN
F 1 "0.1uF" H 8065 1105 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 7988 1000 50  0001 C CNN
F 3 "~" H 7950 1150 50  0001 C CNN
	1    7950 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 609D51DA
P 7950 950
F 0 "#PWR0116" H 7950 800 50  0001 C CNN
F 1 "+5V" H 7965 1123 50  0000 C CNN
F 2 "" H 7950 950 50  0001 C CNN
F 3 "" H 7950 950 50  0001 C CNN
	1    7950 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 609D51E0
P 7950 1350
F 0 "#PWR0117" H 7950 1100 50  0001 C CNN
F 1 "GND" H 7955 1177 50  0000 C CNN
F 2 "" H 7950 1350 50  0001 C CNN
F 3 "" H 7950 1350 50  0001 C CNN
	1    7950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 950  7950 1000
Wire Wire Line
	7950 1300 7950 1350
$Comp
L Device:C C3
U 1 1 609DA154
P 8400 1150
F 0 "C3" H 8515 1196 50  0000 L CNN
F 1 "0.1uF" H 8515 1105 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 8438 1000 50  0001 C CNN
F 3 "~" H 8400 1150 50  0001 C CNN
	1    8400 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 609DA15A
P 8400 950
F 0 "#PWR0118" H 8400 800 50  0001 C CNN
F 1 "+5V" H 8415 1123 50  0000 C CNN
F 2 "" H 8400 950 50  0001 C CNN
F 3 "" H 8400 950 50  0001 C CNN
	1    8400 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 609DA160
P 8400 1350
F 0 "#PWR0119" H 8400 1100 50  0001 C CNN
F 1 "GND" H 8405 1177 50  0000 C CNN
F 2 "" H 8400 1350 50  0001 C CNN
F 3 "" H 8400 1350 50  0001 C CNN
	1    8400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 950  8400 1000
Wire Wire Line
	8400 1300 8400 1350
$Comp
L 74xx:74LS125 U3
U 1 1 6081E4DE
P 5900 4200
F 0 "U3" H 5900 4517 50  0000 C CNN
F 1 "74HCT125" H 5900 4426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5900 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 5900 4200 50  0001 C CNN
	1    5900 4200
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U3
U 2 1 60822247
P 4200 6350
F 0 "U3" H 4200 6650 50  0000 C CNN
F 1 "74HCT125" H 4200 6550 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4200 6350 50  0001 C CNN
	2    4200 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U3
U 3 1 60828A42
P 4800 6750
F 0 "U3" H 4800 7067 50  0000 C CNN
F 1 "74HCT125" H 4800 6976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4800 6750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4800 6750 50  0001 C CNN
	3    4800 6750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U3
U 4 1 6082F5AD
P 5400 7150
F 0 "U3" H 5400 7467 50  0000 C CNN
F 1 "74HCT125" H 5400 7376 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5400 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 5400 7150 50  0001 C CNN
	4    5400 7150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U3
U 5 1 60835E25
P 7900 5450
F 0 "U3" H 8130 5496 50  0000 L CNN
F 1 "74HCT125" H 8130 5405 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7900 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 7900 5450 50  0001 C CNN
	5    7900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4950 7900 4950
Wire Wire Line
	7100 5950 7900 5950
Wire Wire Line
	1850 6700 2050 6700
Text Label 1950 6700 0    50   ~ 0
A9
Wire Wire Line
	3400 7400 5400 7400
Wire Wire Line
	3400 7000 4800 7000
Wire Wire Line
	4500 6350 5700 6350
Wire Wire Line
	5700 6350 5700 6750
Wire Wire Line
	5100 6750 5700 6750
Connection ~ 5700 6750
Wire Wire Line
	5700 6750 5700 7150
Wire Wire Line
	5700 6350 5700 5950
Connection ~ 5700 6350
Wire Wire Line
	3350 4000 3350 4400
$Comp
L power:+5V #PWR0102
U 1 1 6095C339
P 2300 6200
F 0 "#PWR0102" H 2300 6050 50  0001 C CNN
F 1 "+5V" H 2315 6373 50  0000 C CNN
F 2 "" H 2300 6200 50  0001 C CNN
F 3 "" H 2300 6200 50  0001 C CNN
	1    2300 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6300 2300 6300
Wire Wire Line
	2300 6300 2300 6200
$Comp
L power:GND #PWR0105
U 1 1 6096B771
P 3700 6300
F 0 "#PWR0105" H 3700 6050 50  0001 C CNN
F 1 "GND" H 3705 6127 50  0000 C CNN
F 2 "" H 3700 6300 50  0001 C CNN
F 3 "" H 3700 6300 50  0001 C CNN
	1    3700 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6300 3700 6200
Wire Wire Line
	3700 6200 3900 6200
Wire Wire Line
	3900 6200 3900 6350
$Comp
L power:GND #PWR0122
U 1 1 609825DE
P 4300 6700
F 0 "#PWR0122" H 4300 6450 50  0001 C CNN
F 1 "GND" H 4305 6527 50  0000 C CNN
F 2 "" H 4300 6700 50  0001 C CNN
F 3 "" H 4300 6700 50  0001 C CNN
	1    4300 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6700 4300 6600
Wire Wire Line
	4300 6600 4500 6600
$Comp
L power:GND #PWR0123
U 1 1 609880C8
P 4900 7100
F 0 "#PWR0123" H 4900 6850 50  0001 C CNN
F 1 "GND" H 4905 6927 50  0000 C CNN
F 2 "" H 4900 7100 50  0001 C CNN
F 3 "" H 4900 7100 50  0001 C CNN
	1    4900 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7100 4900 7000
Wire Wire Line
	4900 7000 5100 7000
Wire Wire Line
	4500 6600 4500 6750
Wire Wire Line
	5100 7000 5100 7150
$Comp
L power:GND #PWR0124
U 1 1 609A4B25
P 1500 7000
F 0 "#PWR0124" H 1500 6750 50  0001 C CNN
F 1 "GND" H 1350 6950 50  0000 C CNN
F 2 "" H 1500 7000 50  0001 C CNN
F 3 "" H 1500 7000 50  0001 C CNN
	1    1500 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 609BD524
P 2000 7050
F 0 "#PWR0125" H 2000 6900 50  0001 C CNN
F 1 "+5V" H 2015 7223 50  0000 C CNN
F 2 "" H 2000 7050 50  0001 C CNN
F 3 "" H 2000 7050 50  0001 C CNN
	1    2000 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7300 2050 7300
$Comp
L power:GND #PWR0126
U 1 1 60A2AE32
P 2550 7700
F 0 "#PWR0126" H 2550 7450 50  0001 C CNN
F 1 "GND" H 2555 7527 50  0000 C CNN
F 2 "" H 2550 7700 50  0001 C CNN
F 3 "" H 2550 7700 50  0001 C CNN
	1    2550 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 7700 2550 7600
$Comp
L Device:R R2
U 1 1 60A45B5D
P 2950 4100
F 0 "R2" H 2800 4150 50  0000 L CNN
F 1 "1k" H 2800 4050 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 4100 50  0001 C CNN
F 3 "~" H 2950 4100 50  0001 C CNN
	1    2950 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 60A45B63
P 2950 3750
F 0 "#PWR0127" H 2950 3600 50  0001 C CNN
F 1 "+5V" H 2965 3923 50  0000 C CNN
F 2 "" H 2950 3750 50  0001 C CNN
F 3 "" H 2950 3750 50  0001 C CNN
	1    2950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3750 2950 3800
Wire Wire Line
	1700 2100 2300 2100
$Comp
L Connector:TestPoint TP1
U 1 1 60B17A29
P 1500 6450
F 0 "TP1" H 1558 6568 50  0000 L CNN
F 1 "TestPoint" H 1558 6477 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 1700 6450 50  0001 C CNN
F 3 "~" H 1700 6450 50  0001 C CNN
	1    1500 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 7050 2000 7100
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 60B83A66
P 1500 6800
F 0 "JP1" V 1450 6450 50  0000 L CNN
F 1 "SolderJumper" V 1550 6250 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 1500 6800 50  0001 C CNN
F 3 "~" H 1500 6800 50  0001 C CNN
	1    1500 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 7100 2050 7100
$Comp
L power:GND #PWR0111
U 1 1 60B10BC3
P 3200 3950
F 0 "#PWR0111" H 3200 3700 50  0001 C CNN
F 1 "GND" H 3205 3777 50  0000 C CNN
F 2 "" H 3200 3950 50  0001 C CNN
F 3 "" H 3200 3950 50  0001 C CNN
	1    3200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3950 3200 3900
Wire Wire Line
	3200 3900 3500 3900
Wire Wire Line
	1500 6450 1500 6600
Wire Wire Line
	1500 6950 1500 7000
Connection ~ 1500 6600
Wire Wire Line
	1500 6600 1500 6650
Wire Wire Line
	2050 7200 900  7200
NoConn ~ 1650 3800
Wire Wire Line
	7750 2600 7750 2700
Wire Wire Line
	8200 2700 8200 4200
Wire Wire Line
	6200 4200 6500 4200
Connection ~ 8200 2700
Wire Wire Line
	8200 2700 8550 2700
Wire Wire Line
	7150 3050 7450 3050
Wire Wire Line
	6650 2950 6500 2950
Wire Wire Line
	6500 2950 6500 1900
Wire Wire Line
	7150 2950 7450 2950
Wire Wire Line
	7450 2950 7450 1900
Wire Wire Line
	7450 1900 8450 1900
Wire Wire Line
	7150 3150 7450 3150
Wire Wire Line
	7450 3150 7450 4200
Wire Wire Line
	7450 4200 8200 4200
Wire Wire Line
	6650 3150 6500 3150
Wire Wire Line
	6500 3150 6500 4200
$Comp
L power:GND #PWR0121
U 1 1 60C604EE
P 7150 3550
F 0 "#PWR0121" H 7150 3300 50  0001 C CNN
F 1 "GND" H 7155 3377 50  0000 C CNN
F 2 "" H 7150 3550 50  0001 C CNN
F 3 "" H 7150 3550 50  0001 C CNN
	1    7150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3250 7150 3450
Wire Wire Line
	6650 3250 6650 3450
Wire Wire Line
	6650 3450 7150 3450
Connection ~ 7150 3450
Wire Wire Line
	7150 3450 7150 3550
Wire Wire Line
	8450 1900 8450 3450
Wire Wire Line
	8550 2700 8550 3350
Text Label 7200 3050 0    50   ~ 0
DOUT
Text Label 7200 2950 0    50   ~ 0
SCL
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 60CB41F4
P 6850 3050
F 0 "J2" H 6900 3367 50  0000 C CNN
F 1 "Jumper Block" H 6900 3276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 6850 3050 50  0001 C CNN
F 3 "~" H 6850 3050 50  0001 C CNN
	1    6850 3050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 1 1 60DA66B9
P 3500 5150
F 0 "U5" H 3500 5467 50  0000 C CNN
F 1 "74LS14" H 3500 5376 50  0000 C CNN
F 2 "" H 3500 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 3500 5150 50  0001 C CNN
	1    3500 5150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 2 1 60DB780F
P 4150 5150
F 0 "U5" H 4150 5467 50  0000 C CNN
F 1 "74LS14" H 4150 5376 50  0000 C CNN
F 2 "" H 4150 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 4150 5150 50  0001 C CNN
	2    4150 5150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 3 1 60DB9435
P 5400 5150
F 0 "U5" H 5400 5467 50  0000 C CNN
F 1 "74LS14" H 5400 5376 50  0000 C CNN
F 2 "" H 5400 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 5400 5150 50  0001 C CNN
	3    5400 5150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U5
U 7 1 60DBA707
P 8750 5450
F 0 "U5" H 8980 5496 50  0000 L CNN
F 1 "74LS14" H 8980 5405 50  0000 L CNN
F 2 "" H 8750 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 8750 5450 50  0001 C CNN
	7    8750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4400 3350 4400
Wire Wire Line
	3050 6600 4200 6600
Wire Wire Line
	3200 5850 5900 5850
Wire Wire Line
	2950 5950 2950 4400
Wire Wire Line
	2950 5950 5700 5950
$Comp
L Device:R R3
U 1 1 60EA0464
P 4650 5150
F 0 "R3" V 4950 5100 50  0000 L CNN
F 1 "1k" V 4850 5100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 5150 50  0001 C CNN
F 3 "~" H 4650 5150 50  0001 C CNN
	1    4650 5150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 60EBCC73
P 4950 5350
F 0 "C6" H 5065 5396 50  0000 L CNN
F 1 "390pF" H 5065 5305 50  0000 L CNN
F 2 "" H 4988 5200 50  0001 C CNN
F 3 "~" H 4950 5350 50  0001 C CNN
	1    4950 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60ECF172
P 4950 5550
F 0 "#PWR?" H 4950 5300 50  0001 C CNN
F 1 "GND" H 4955 5377 50  0000 C CNN
F 2 "" H 4950 5550 50  0001 C CNN
F 3 "" H 4950 5550 50  0001 C CNN
	1    4950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5150 4950 5150
Wire Wire Line
	4950 5200 4950 5150
Wire Wire Line
	4950 5500 4950 5550
Wire Wire Line
	5200 4650 5800 4650
Wire Wire Line
	5800 4650 5800 5150
Wire Wire Line
	5800 5150 5700 5150
Wire Wire Line
	3200 5150 3200 5850
Connection ~ 3200 5850
Wire Wire Line
	7900 4950 8750 4950
Connection ~ 7900 4950
Wire Wire Line
	8750 5950 7900 5950
Connection ~ 7900 5950
Wire Wire Line
	2950 3800 3500 3800
Wire Wire Line
	6200 3050 6650 3050
Wire Wire Line
	5200 2000 5200 3150
Wire Wire Line
	5200 3150 5600 3150
Connection ~ 5200 3150
Wire Wire Line
	5200 3150 5200 4650
Wire Wire Line
	4900 3050 5600 3050
Wire Wire Line
	5000 1900 5600 1900
Wire Wire Line
	4650 4200 5600 4200
Wire Wire Line
	5200 2000 5600 2000
Wire Wire Line
	5900 4450 5900 5850
Wire Wire Line
	2950 4250 2950 4400
Connection ~ 2950 4400
Wire Wire Line
	2950 3950 2950 3800
Connection ~ 2950 3800
$Comp
L 74xx:74LS14 U5
U 5 1 6106A573
P 2400 5150
F 0 "U5" H 2400 5550 50  0000 C CNN
F 1 "74LS14" H 2400 5450 50  0000 C CNN
F 2 "" H 2400 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 2400 5150 50  0001 C CNN
	5    2400 5150
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 6107193E
P 1700 5250
F 0 "J3" H 1750 5567 50  0000 C CNN
F 1 "Jumper Block" H 1750 5476 50  0000 C CNN
F 2 "" H 1700 5250 50  0001 C CNN
F 3 "~" H 1700 5250 50  0001 C CNN
	1    1700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4000 1800 4000
$Comp
L 74xx:74LS14 U5
U 4 1 61066620
P 1100 5150
F 0 "U5" H 1100 5550 50  0000 C CNN
F 1 "74LS14" H 1100 5450 50  0000 C CNN
F 2 "" H 1100 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 1100 5150 50  0001 C CNN
	4    1100 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 5150 1400 5150
Wire Wire Line
	2000 5150 2100 5150
Connection ~ 1400 5150
Wire Wire Line
	800  5150 800  5350
Wire Wire Line
	800  5350 1500 5350
Wire Wire Line
	1500 5250 1400 5250
Wire Wire Line
	1400 5250 1400 6150
Wire Wire Line
	900  6150 900  7200
Wire Wire Line
	800  7300 800  6050
Wire Wire Line
	2100 5250 2000 5250
Wire Wire Line
	1400 3900 1900 3900
Wire Wire Line
	2100 4300 1800 4300
Wire Wire Line
	1800 4300 1800 4000
Wire Wire Line
	2700 5350 2700 5150
Wire Wire Line
	2000 5350 2700 5350
Connection ~ 2100 5150
Wire Wire Line
	800  6050 2100 6050
Wire Wire Line
	900  6150 1400 6150
Wire Wire Line
	2100 6050 2100 5250
Wire Wire Line
	1400 3900 1400 5150
Wire Wire Line
	2100 4300 2100 5150
$Comp
L 74xx:74LS138 U4
U 1 1 6089A506
P 2550 6900
F 0 "U4" H 2550 7681 50  0000 C CNN
F 1 "74HCT138" H 2550 7590 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2550 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 2550 6900 50  0001 C CNN
	1    2550 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6800 2050 6800
Text Label 1900 6800 0    50   ~ 0
A10
Wire Wire Line
	1500 6600 2050 6600
Wire Wire Line
	3200 5850 3200 7000
Wire Wire Line
	3050 6800 3400 6800
Wire Wire Line
	3400 6800 3400 7000
NoConn ~ 3050 6700
NoConn ~ 3050 6900
Wire Wire Line
	3400 7200 3050 7200
Wire Wire Line
	3400 7200 3400 7400
Wire Wire Line
	3050 7000 3200 7000
NoConn ~ 3050 7100
NoConn ~ 3050 7300
Wire Wire Line
	4950 5150 5100 5150
Connection ~ 4950 5150
Wire Wire Line
	4450 5150 4500 5150
Wire Wire Line
	3800 5150 3850 5150
$Comp
L Device:C C4
U 1 1 6105795C
P 8850 1150
F 0 "C4" H 8965 1196 50  0000 L CNN
F 1 "0.1uF" H 8965 1105 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 8888 1000 50  0001 C CNN
F 3 "~" H 8850 1150 50  0001 C CNN
	1    8850 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61057962
P 8850 950
F 0 "#PWR?" H 8850 800 50  0001 C CNN
F 1 "+5V" H 8865 1123 50  0000 C CNN
F 2 "" H 8850 950 50  0001 C CNN
F 3 "" H 8850 950 50  0001 C CNN
	1    8850 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61057968
P 8850 1350
F 0 "#PWR?" H 8850 1100 50  0001 C CNN
F 1 "GND" H 8855 1177 50  0000 C CNN
F 2 "" H 8850 1350 50  0001 C CNN
F 3 "" H 8850 1350 50  0001 C CNN
	1    8850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 950  8850 1000
Wire Wire Line
	8850 1300 8850 1350
$Comp
L Device:C C5
U 1 1 610650F4
P 9300 1150
F 0 "C5" H 9415 1196 50  0000 L CNN
F 1 "0.1uF" H 9415 1105 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 9338 1000 50  0001 C CNN
F 3 "~" H 9300 1150 50  0001 C CNN
	1    9300 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 610650FA
P 9300 950
F 0 "#PWR?" H 9300 800 50  0001 C CNN
F 1 "+5V" H 9315 1123 50  0000 C CNN
F 2 "" H 9300 950 50  0001 C CNN
F 3 "" H 9300 950 50  0001 C CNN
	1    9300 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61065100
P 9300 1350
F 0 "#PWR?" H 9300 1100 50  0001 C CNN
F 1 "GND" H 9305 1177 50  0000 C CNN
F 2 "" H 9300 1350 50  0001 C CNN
F 3 "" H 9300 1350 50  0001 C CNN
	1    9300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 950  9300 1000
Wire Wire Line
	9300 1300 9300 1350
$EndSCHEMATC
