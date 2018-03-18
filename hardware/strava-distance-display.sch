EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:ESP8266
LIBS:misc-personal
LIBS:strava-distance-display-cache
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
L Conn_01x05 J1
U 1 1 5AAB73A0
P 7600 4400
F 0 "J1" H 7600 4700 50  0000 C CNN
F 1 "Display" H 7600 4100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 7600 4400 50  0001 C CNN
F 3 "" H 7600 4400 50  0001 C CNN
	1    7600 4400
	1    0    0    -1  
$EndComp
$Comp
L ESP-12F U1
U 1 1 5AAB7503
P 5250 4300
F 0 "U1" H 5250 4200 50  0000 C CNN
F 1 "ESP-12F" H 5250 4400 50  0000 C CNN
F 2 "RF_Modules:ESP-12E" H 5250 4300 50  0001 C CNN
F 3 "" H 5250 4300 50  0001 C CNN
	1    5250 4300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 5AAB7915
P 7300 4100
F 0 "#PWR01" H 7300 3950 50  0001 C CNN
F 1 "+3.3V" H 7300 4240 50  0000 C CNN
F 2 "" H 7300 4100 50  0001 C CNN
F 3 "" H 7300 4100 50  0001 C CNN
	1    7300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4100 7300 4200
Wire Wire Line
	7300 4200 7300 4300
Wire Wire Line
	7300 4200 7400 4200
Wire Wire Line
	7300 4300 7400 4300
Connection ~ 7300 4200
$Comp
L GND #PWR02
U 1 1 5AAB7946
P 7050 4400
F 0 "#PWR02" H 7050 4150 50  0001 C CNN
F 1 "GND" H 7050 4250 50  0000 C CNN
F 2 "" H 7050 4400 50  0001 C CNN
F 3 "" H 7050 4400 50  0001 C CNN
	1    7050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4400 7400 4400
$Comp
L GND #PWR03
U 1 1 5AAB79E2
P 6250 4800
F 0 "#PWR03" H 6250 4550 50  0001 C CNN
F 1 "GND" H 6250 4650 50  0000 C CNN
F 2 "" H 6250 4800 50  0001 C CNN
F 3 "" H 6250 4800 50  0001 C CNN
	1    6250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4700 6250 4700
Wire Wire Line
	6250 4700 6250 4800
$Comp
L +3.3V #PWR04
U 1 1 5AAB7A2A
P 4250 4800
F 0 "#PWR04" H 4250 4650 50  0001 C CNN
F 1 "+3.3V" H 4250 4940 50  0000 C CNN
F 2 "" H 4250 4800 50  0001 C CNN
F 3 "" H 4250 4800 50  0001 C CNN
	1    4250 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 4200 4250 4700
Wire Wire Line
	4250 4700 4250 4800
Wire Wire Line
	4050 4700 4250 4700
Wire Wire Line
	4250 4700 4350 4700
$Comp
L LD1117S33TR_SOT223 U2
U 1 1 5AAD4FB7
P 4050 2650
F 0 "U2" H 3900 2775 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 4050 2775 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 4050 2850 50  0001 C CNN
F 3 "" H 4150 2400 50  0001 C CNN
	1    4050 2650
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 5AAD503E
P 4050 4100
F 0 "C2" H 4075 4200 50  0000 L CNN
F 1 "1uF" H 4075 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4088 3950 50  0001 C CNN
F 3 "" H 4050 4100 50  0001 C CNN
	1    4050 4100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AAD5075
P 4050 4500
F 0 "R1" V 4130 4500 50  0000 C CNN
F 1 "1K" V 4050 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3980 4500 50  0001 C CNN
F 3 "" H 4050 4500 50  0001 C CNN
	1    4050 4500
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5AAD50BE
P 3700 3900
F 0 "SW1" H 3750 4000 50  0000 L CNN
F 1 "reset" H 3700 3840 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SKHH_Angled" H 3700 4100 50  0001 C CNN
F 3 "" H 3700 4100 50  0001 C CNN
	1    3700 3900
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5AAD5127
P 6550 4500
F 0 "SW2" H 6600 4600 50  0000 L CNN
F 1 "prog enable" H 6550 4440 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SKHH_Angled" H 6550 4700 50  0001 C CNN
F 3 "" H 6550 4700 50  0001 C CNN
	1    6550 4500
	-1   0    0    -1  
$EndComp
$Comp
L FTDI_CONN J3
U 1 1 5AAD53E4
P 6650 3700
F 0 "J3" H 6650 4000 50  0000 C CNN
F 1 "FTDI_CONN" H 6650 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 6650 3700 50  0001 C CNN
F 3 "" H 6650 3700 50  0001 C CNN
	1    6650 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5AAD56DA
P 6350 3600
F 0 "#PWR05" H 6350 3350 50  0001 C CNN
F 1 "GND" H 6350 3450 50  0000 C CNN
F 2 "" H 6350 3600 50  0001 C CNN
F 3 "" H 6350 3600 50  0001 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3600 6350 3500
Wire Wire Line
	6350 3500 6450 3500
NoConn ~ 6450 3700
NoConn ~ 6450 4000
NoConn ~ 6450 3600
Wire Wire Line
	4050 4250 4050 4300
Wire Wire Line
	4050 4300 4050 4350
Connection ~ 4050 4300
Wire Wire Line
	4050 3950 4050 3900
Wire Wire Line
	3900 3900 4050 3900
Wire Wire Line
	4050 3900 4350 3900
Wire Wire Line
	4050 4650 4050 4700
Connection ~ 4250 4700
Connection ~ 4050 3900
$Comp
L GND #PWR06
U 1 1 5AAD5AE3
P 3400 4000
F 0 "#PWR06" H 3400 3750 50  0001 C CNN
F 1 "GND" H 3400 3850 50  0000 C CNN
F 2 "" H 3400 4000 50  0001 C CNN
F 3 "" H 3400 4000 50  0001 C CNN
	1    3400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4000 3400 3900
Wire Wire Line
	3400 3900 3500 3900
Wire Wire Line
	6450 3900 6250 3900
Wire Wire Line
	6250 3900 6250 4000
Wire Wire Line
	6250 4000 6150 4000
Wire Wire Line
	6450 3800 6350 3800
Wire Wire Line
	6350 3800 6350 4100
Wire Wire Line
	6350 4100 6150 4100
Wire Wire Line
	6250 4600 6150 4600
Wire Wire Line
	6250 4400 6250 4500
Wire Wire Line
	6250 4500 6250 4600
Wire Wire Line
	6250 4400 6150 4400
Connection ~ 6250 4500
NoConn ~ 6150 4500
$Comp
L GND #PWR07
U 1 1 5AAD5FC8
P 6850 4600
F 0 "#PWR07" H 6850 4350 50  0001 C CNN
F 1 "GND" H 6850 4450 50  0000 C CNN
F 2 "" H 6850 4600 50  0001 C CNN
F 3 "" H 6850 4600 50  0001 C CNN
	1    6850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4500 6850 4600
Wire Wire Line
	4350 4200 4250 4200
Wire Wire Line
	4050 4300 4350 4300
Wire Wire Line
	4350 3900 4350 4000
NoConn ~ 4350 4100
NoConn ~ 4350 4400
NoConn ~ 4350 4500
NoConn ~ 4350 4600
$Comp
L C C1
U 1 1 5AAD65D4
P 3650 2800
F 0 "C1" H 3675 2900 50  0000 L CNN
F 1 "100nF" H 3675 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3688 2650 50  0001 C CNN
F 3 "" H 3650 2800 50  0001 C CNN
	1    3650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2650 3300 2650
Wire Wire Line
	3300 2650 3650 2650
Wire Wire Line
	3650 2650 3750 2650
Connection ~ 4050 2950
$Comp
L CP C4
U 1 1 5AAD681D
P 4450 2800
F 0 "C4" H 4475 2900 50  0000 L CNN
F 1 "22uF" H 4475 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4488 2650 50  0001 C CNN
F 3 "" H 4450 2800 50  0001 C CNN
	1    4450 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5AAD69C2
P 4050 3050
F 0 "#PWR08" H 4050 2800 50  0001 C CNN
F 1 "GND" H 4050 2900 50  0000 C CNN
F 2 "" H 4050 3050 50  0001 C CNN
F 3 "" H 4050 3050 50  0001 C CNN
	1    4050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2950 4050 3050
$Comp
L +3.3V #PWR09
U 1 1 5AAD6A88
P 4750 2650
F 0 "#PWR09" H 4750 2500 50  0001 C CNN
F 1 "+3.3V" H 4750 2790 50  0000 C CNN
F 2 "" H 4750 2650 50  0001 C CNN
F 3 "" H 4750 2650 50  0001 C CNN
	1    4750 2650
	0    1    1    0   
$EndComp
Connection ~ 4450 2650
$Comp
L Conn_01x02 J2
U 1 1 5AAD6BA5
P 2950 2650
F 0 "J2" H 2950 2750 50  0000 C CNN
F 1 "Battery" H 2950 2450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 2950 2650 50  0001 C CNN
F 3 "" H 2950 2650 50  0001 C CNN
	1    2950 2650
	-1   0    0    -1  
$EndComp
Connection ~ 3650 2650
Wire Wire Line
	3150 2750 3150 2950
Connection ~ 3650 2950
Text Notes 7700 4650 0    63   ~ 0
Vi2c\nVCC\nGND\nSDA\nSCL
Text Notes 7950 4500 0    60   ~ 0
Adafruit  0.54" Alphanumeric \ndisplay with i2c backpack
Wire Wire Line
	7250 4300 7250 4500
Wire Wire Line
	7250 4500 7400 4500
Wire Wire Line
	7150 4200 7150 4600
Wire Wire Line
	7150 4600 7400 4600
Wire Wire Line
	6150 4200 7150 4200
Wire Wire Line
	6150 4300 7250 4300
NoConn ~ 5000 5200
NoConn ~ 5100 5200
NoConn ~ 5200 5200
NoConn ~ 5300 5200
NoConn ~ 5400 5200
NoConn ~ 5500 5200
$Comp
L CP C5
U 1 1 5AAE3A3B
P 3300 2800
F 0 "C5" H 3325 2900 50  0000 L CNN
F 1 "220uF" H 3325 2700 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.8" H 3338 2650 50  0001 C CNN
F 3 "" H 3300 2800 50  0001 C CNN
	1    3300 2800
	1    0    0    -1  
$EndComp
Connection ~ 3300 2650
Connection ~ 3300 2950
Wire Wire Line
	3150 2950 3300 2950
Wire Wire Line
	3300 2950 3650 2950
Wire Wire Line
	3650 2950 4050 2950
Wire Wire Line
	4050 2950 4450 2950
Wire Wire Line
	4350 2650 4450 2650
Wire Wire Line
	4450 2650 4750 2650
Wire Wire Line
	6250 4500 6350 4500
Wire Wire Line
	6750 4500 6850 4500
$EndSCHEMATC