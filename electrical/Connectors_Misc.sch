EESchema Schematic File Version 2
LIBS:dronelight-rescue
LIBS:Jason_Custom_Home
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
LIBS:dronelight-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 5
Title "Dronelight"
Date "2017-05-29"
Rev "2"
Comp "Reclaimer Labs LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X02 J4
U 1 1 5903F367
P 1850 2650
F 0 "J4" H 1850 2800 50  0000 C CNN
F 1 "XT30" V 1950 2650 50  0000 C CNN
F 2 "Reclaimer_Labs:XT30" H 1850 2650 50  0001 C CNN
F 3 "" H 1850 2650 50  0000 C CNN
	1    1850 2650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR053
U 1 1 5903F36E
P 2150 2800
F 0 "#PWR053" H 2150 2550 50  0001 C CNN
F 1 "GND" H 2150 2650 50  0000 C CNN
F 2 "" H 2150 2800 50  0000 C CNN
F 3 "" H 2150 2800 50  0000 C CNN
	1    2150 2800
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR054
U 1 1 5903F374
P 2150 2500
F 0 "#PWR054" H 2150 2350 50  0001 C CNN
F 1 "+BATT" H 2150 2640 50  0000 C CNN
F 2 "" H 2150 2500 50  0000 C CNN
F 3 "" H 2150 2500 50  0000 C CNN
	1    2150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2800 2150 2700
Wire Wire Line
	2150 2500 2150 2600
Wire Wire Line
	2150 2600 2050 2600
Wire Wire Line
	2150 2700 2050 2700
$Comp
L USB_OTG-RESCUE-dronelight J5
U 1 1 5903FC1F
P 1800 4100
F 0 "J5" V 1450 4200 50  0000 C CNN
F 1 "USB_OTG" H 1800 4300 50  0000 C CNN
F 2 "Reclaimer_Labs:USB_Micro-B_10118194-0001LF" V 1750 4000 50  0001 C CNN
F 3 "" V 1750 4000 50  0000 C CNN
F 4 "MacroFab" H 1800 4100 60  0001 C CNN "Manufacturer"
F 5 "MF-CON-MICROUSB-RIGHT" H 1800 4100 60  0001 C CNN "Manufacturer Part Number"
	1    1800 4100
	0    -1   1    0   
$EndComp
NoConn ~ 2100 4200
$Comp
L GND #PWR055
U 1 1 5903FC27
P 2200 4350
F 0 "#PWR055" H 2200 4100 50  0001 C CNN
F 1 "GND" H 2200 4200 50  0000 C CNN
F 2 "" H 2200 4350 50  0000 C CNN
F 3 "" H 2200 4350 50  0000 C CNN
	1    2200 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 5903FC43
P 1700 4500
F 0 "#PWR056" H 1700 4250 50  0001 C CNN
F 1 "GND" H 1700 4350 50  0000 C CNN
F 2 "" H 1700 4500 50  0000 C CNN
F 3 "" H 1700 4500 50  0000 C CNN
	1    1700 4500
	1    0    0    -1  
$EndComp
Text Label 2200 4000 0    50   ~ 0
USB_D_N
Text Label 2200 4100 0    50   ~ 0
USB_D_P
Wire Wire Line
	2200 4350 2200 4300
Wire Wire Line
	2200 4300 2100 4300
Wire Wire Line
	2100 3900 2200 3900
Wire Wire Line
	2100 4000 2750 4000
Wire Wire Line
	2100 4100 2750 4100
$Comp
L MTHOLE X1
U 1 1 5904000A
P 4850 2900
F 0 "X1" H 4850 3050 60  0000 C CNN
F 1 "MTHOLE" H 4850 3150 60  0000 C CNN
F 2 "Reclaimer_Labs:MountingHole_3.5mm_Pad_Via" H 4850 2900 60  0001 C CNN
F 3 "" H 4850 2900 60  0000 C CNN
	1    4850 2900
	0    -1   -1   0   
$EndComp
Text GLabel 2750 4000 2    50   BiDi ~ 0
USB_D_N
Text GLabel 2750 4100 2    50   BiDi ~ 0
USB_D_P
$Comp
L VBUS #PWR057
U 1 1 5907797D
P 2200 3800
F 0 "#PWR057" H 2200 3650 50  0001 C CNN
F 1 "VBUS" H 2200 3940 50  0000 C CNN
F 2 "" H 2200 3800 50  0000 C CNN
F 3 "" H 2200 3800 50  0000 C CNN
	1    2200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3900 2200 3800
$Comp
L R R12
U 1 1 590A523B
P 4400 1900
F 0 "R12" V 4480 1900 50  0000 C CNN
F 1 "1k" V 4400 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 1900 50  0001 C CNN
F 3 "" H 4400 1900 50  0000 C CNN
F 4 "MacroFab" V 4400 1900 60  0001 C CNN "Manufacturer"
F 5 "MF-RES-0603-1K" V 4400 1900 60  0001 C CNN "Manufacturer Part Number"
	1    4400 1900
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR058
U 1 1 590A5242
P 3650 2000
F 0 "#PWR058" H 3650 1850 50  0001 C CNN
F 1 "+3.3V" H 3650 2140 50  0000 C CNN
F 2 "" H 3650 2000 50  0000 C CNN
F 3 "" H 3650 2000 50  0000 C CNN
	1    3650 2000
	1    0    0    -1  
$EndComp
$Comp
L RGB_LED_Cree_PLCC4 D3
U 1 1 590A524F
P 3950 2100
F 0 "D3" H 3950 2450 50  0000 C CNN
F 1 "RGB LED 3228 SMD PLCC-4" H 3950 1750 50  0000 C CNN
F 2 "Reclaimer_Labs:PLCC4" H 3905 2050 50  0001 C CNN
F 3 "" H 3905 2050 50  0000 C CNN
F 4 "MacroFab" H 3950 2100 60  0001 C CNN "Manufacturer"
F 5 "MF-LED-3228-RGB" H 3950 2100 60  0001 C CNN "Manufacturer Part Number"
	1    3950 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 1900 4250 1900
Wire Wire Line
	4250 2100 4150 2100
Wire Wire Line
	4150 2300 4250 2300
Wire Wire Line
	3650 2000 3650 2100
Wire Wire Line
	3650 2100 3750 2100
Wire Wire Line
	4550 1900 4650 1900
Wire Wire Line
	4650 2100 4550 2100
Wire Wire Line
	4550 2300 4650 2300
$Comp
L R R13
U 1 1 590A67C1
P 4400 2100
F 0 "R13" V 4480 2100 50  0000 C CNN
F 1 "1k" V 4400 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 2100 50  0001 C CNN
F 3 "" H 4400 2100 50  0000 C CNN
F 4 "MacroFab" V 4400 2100 60  0001 C CNN "Manufacturer"
F 5 "MF-RES-0603-1K" V 4400 2100 60  0001 C CNN "Manufacturer Part Number"
	1    4400 2100
	0    -1   -1   0   
$EndComp
$Comp
L R R14
U 1 1 590A6800
P 4400 2300
F 0 "R14" V 4480 2300 50  0000 C CNN
F 1 "1k" V 4400 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 2300 50  0001 C CNN
F 3 "" H 4400 2300 50  0000 C CNN
F 4 "MacroFab" V 4400 2300 60  0001 C CNN "Manufacturer"
F 5 "MF-RES-0603-1K" V 4400 2300 60  0001 C CNN "Manufacturer Part Number"
	1    4400 2300
	0    -1   -1   0   
$EndComp
Text GLabel 4650 1900 2    50   Input ~ 0
RGB_RED
Text GLabel 4650 2100 2    50   Input ~ 0
RGB_GRN
Text GLabel 4650 2300 2    50   Input ~ 0
RGB_BLU
$Comp
L MTHOLE X2
U 1 1 590AABE2
P 4850 3300
F 0 "X2" H 4850 3450 60  0000 C CNN
F 1 "MTHOLE" H 4850 3550 60  0000 C CNN
F 2 "Reclaimer_Labs:MountingHole_3.5mm_Pad_Via" H 4850 3300 60  0001 C CNN
F 3 "" H 4850 3300 60  0000 C CNN
	1    4850 3300
	0    -1   -1   0   
$EndComp
$Comp
L MTHOLE X3
U 1 1 590AAC28
P 4850 3700
F 0 "X3" H 4850 3850 60  0000 C CNN
F 1 "MTHOLE" H 4850 3950 60  0000 C CNN
F 2 "Reclaimer_Labs:MountingHole_3.5mm_Pad_Via" H 4850 3700 60  0001 C CNN
F 3 "" H 4850 3700 60  0000 C CNN
	1    4850 3700
	0    -1   -1   0   
$EndComp
$Comp
L MTHOLE X4
U 1 1 590AAC81
P 4850 4100
F 0 "X4" H 4850 4250 60  0000 C CNN
F 1 "MTHOLE" H 4850 4350 60  0000 C CNN
F 2 "Reclaimer_Labs:MountingHole_3.5mm_Pad_Via" H 4850 4100 60  0001 C CNN
F 3 "" H 4850 4100 60  0000 C CNN
	1    4850 4100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR059
U 1 1 5913663F
P 5200 4300
F 0 "#PWR059" H 5200 4050 50  0001 C CNN
F 1 "GND" H 5200 4150 50  0000 C CNN
F 2 "" H 5200 4300 50  0001 C CNN
F 3 "" H 5200 4300 50  0001 C CNN
	1    5200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2900 5200 4300
Wire Wire Line
	5200 4100 5100 4100
Wire Wire Line
	5200 3700 5100 3700
Connection ~ 5200 4100
Wire Wire Line
	5200 3300 5100 3300
Connection ~ 5200 3700
Wire Wire Line
	5200 2900 5100 2900
Connection ~ 5200 3300
$Comp
L MTHOLE X5
U 1 1 591421E6
P 6350 3050
F 0 "X5" H 6350 3200 60  0000 C CNN
F 1 "HEATSINK" H 6350 3300 60  0000 C CNN
F 2 "Reclaimer_Labs:573100D00010G" H 6350 3050 60  0001 C CNN
F 3 "" H 6350 3050 60  0000 C CNN
F 4 "Aavid Thermalloy" H 6350 3050 60  0001 C CNN "Manufacturer"
F 5 "573100D00010G" H 6350 3050 60  0001 C CNN "Manufacturer Part Number"
	1    6350 3050
	1    0    0    -1  
$EndComp
$Comp
L MTHOLE X6
U 1 1 591424CA
P 6900 3050
F 0 "X6" H 6900 3200 60  0000 C CNN
F 1 "HEATSINK" H 6900 3300 60  0000 C CNN
F 2 "Reclaimer_Labs:573100D00010G" H 6900 3050 60  0001 C CNN
F 3 "" H 6900 3050 60  0000 C CNN
F 4 "Aavid Thermalloy" H 6900 3050 60  0001 C CNN "Manufacturer"
F 5 "573100D00010G" H 6900 3050 60  0001 C CNN "Manufacturer Part Number"
	1    6900 3050
	1    0    0    -1  
$EndComp
$Comp
L MTHOLE X7
U 1 1 59142688
P 7400 3050
F 0 "X7" H 7400 3200 60  0000 C CNN
F 1 "HEATSINK" H 7400 3300 60  0000 C CNN
F 2 "Reclaimer_Labs:573100D00010G" H 7400 3050 60  0001 C CNN
F 3 "" H 7400 3050 60  0000 C CNN
F 4 "Aavid Thermalloy" H 7400 3050 60  0001 C CNN "Manufacturer"
F 5 "573100D00010G" H 7400 3050 60  0001 C CNN "Manufacturer Part Number"
	1    7400 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR060
U 1 1 591426B2
P 6350 3300
F 0 "#PWR060" H 6350 3050 50  0001 C CNN
F 1 "GND" H 6350 3150 50  0000 C CNN
F 2 "" H 6350 3300 50  0001 C CNN
F 3 "" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 5914271B
P 6900 3300
F 0 "#PWR061" H 6900 3050 50  0001 C CNN
F 1 "GND" H 6900 3150 50  0000 C CNN
F 2 "" H 6900 3300 50  0001 C CNN
F 3 "" H 6900 3300 50  0001 C CNN
	1    6900 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR062
U 1 1 5914276C
P 7400 3300
F 0 "#PWR062" H 7400 3050 50  0001 C CNN
F 1 "GND" H 7400 3150 50  0000 C CNN
F 2 "" H 7400 3300 50  0001 C CNN
F 3 "" H 7400 3300 50  0001 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
