EESchema Schematic File Version 2
LIBS:strava-distance-display-rescue
LIBS:misc-personal
LIBS:zetex
LIBS:xilinx
LIBS:xilinx-virtex7
LIBS:xilinx-virtex6
LIBS:xilinx-virtex5
LIBS:xilinx-spartan6
LIBS:xilinx-kintex7
LIBS:xilinx-artix7
LIBS:wiznet
LIBS:video
LIBS:triac_thyristor
LIBS:texas
LIBS:supertex
LIBS:siliconi
LIBS:silabs
LIBS:sensors
LIBS:rfcom
LIBS:regul
LIBS:references
LIBS:pspice
LIBS:powerint
LIBS:power
LIBS:philips
LIBS:opto
LIBS:onsemi
LIBS:nxp
LIBS:nordicsemi
LIBS:motorola
LIBS:motor_drivers
LIBS:modules
LIBS:microcontrollers
LIBS:microchip
LIBS:memory
LIBS:maxim
LIBS:logic_programmable
LIBS:linear
LIBS:ir
LIBS:intersil
LIBS:interface
LIBS:intel
LIBS:infineon
LIBS:hc11
LIBS:gennum
LIBS:ftdi
LIBS:elec-unifil
LIBS:dsp
LIBS:driver_gate
LIBS:digital-audio
LIBS:device
LIBS:dc-dc
LIBS:cypress
LIBS:contrib
LIBS:brooktre
LIBS:bbd
LIBS:audio
LIBS:atmel
LIBS:analog_switches
LIBS:analog_devices
LIBS:adc-dac
LIBS:ac-dc
LIBS:Zilog
LIBS:Xicor
LIBS:Worldsemi
LIBS:Valve
LIBS:Transistor
LIBS:Transformer
LIBS:Switch
LIBS:Sensor_Humidity
LIBS:Sensor_Current
LIBS:Relay
LIBS:RF_Bluetooth
LIBS:RFSolutions
LIBS:Power_Management
LIBS:Oscillators
LIBS:Motor
LIBS:Mechanical
LIBS:MCU_Texas_MSP430
LIBS:MCU_ST_STM8
LIBS:MCU_ST_STM32
LIBS:MCU_Parallax
LIBS:MCU_NXP_S08
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_Kinetis
LIBS:MCU_Microchip_PIC32
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC10
LIBS:Logic_TTL_IEEE
LIBS:Logic_CMOS_IEEE
LIBS:Logic_CMOS_4000
LIBS:Logic_74xx
LIBS:Logic_74xgxx
LIBS:Lattice
LIBS:LEM
LIBS:LED
LIBS:Graphic
LIBS:FPGA_Actel
LIBS:Espressif
LIBS:ESD_Protection
LIBS:Display
LIBS:Diode
LIBS:Decawave
LIBS:DSP_Microchip_DSPIC33
LIBS:Connector
LIBS:Bosch
LIBS:Battery_Management
LIBS:Altera
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
P 6550 3550
F 0 "J1" H 6550 3850 50  0000 C CNN
F 1 "Display" H 6550 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 6550 3550 50  0001 C CNN
F 3 "" H 6550 3550 50  0001 C CNN
	1    6550 3550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 5AAB7915
P 6250 3250
F 0 "#PWR01" H 6250 3100 50  0001 C CNN
F 1 "+3.3V" H 6250 3390 50  0000 C CNN
F 2 "" H 6250 3250 50  0001 C CNN
F 3 "" H 6250 3250 50  0001 C CNN
	1    6250 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5AAB7946
P 6050 3450
F 0 "#PWR02" H 6050 3200 50  0001 C CNN
F 1 "GND" H 6050 3300 50  0000 C CNN
F 2 "" H 6050 3450 50  0001 C CNN
F 3 "" H 6050 3450 50  0001 C CNN
	1    6050 3450
	1    0    0    -1  
$EndComp
$Comp
L LD1117S33TR_SOT223 U2
U 1 1 5AAD4FB7
P 4900 1600
F 0 "U2" H 4750 1725 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 4900 1725 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4900 1800 50  0001 C CNN
F 3 "" H 5000 1350 50  0001 C CNN
	1    4900 1600
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 5AAD503E
P 3750 3150
F 0 "C2" H 3775 3250 50  0000 L CNN
F 1 "1uF" H 3775 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3788 3000 50  0001 C CNN
F 3 "" H 3750 3150 50  0001 C CNN
	1    3750 3150
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-strava-distance-display R1
U 1 1 5AAD5075
P 4400 3050
F 0 "R1" V 4480 3050 50  0000 C CNN
F 1 "1K" V 4400 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4330 3050 50  0001 C CNN
F 3 "" H 4400 3050 50  0001 C CNN
	1    4400 3050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5AAD50BE
P 3450 3550
F 0 "SW1" H 3500 3650 50  0000 L CNN
F 1 "reset" H 3450 3490 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SKHH_Angled" H 3450 3750 50  0001 C CNN
F 3 "" H 3450 3750 50  0001 C CNN
	1    3450 3550
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5AAD5127
P 5400 3100
F 0 "SW2" H 5450 3200 50  0000 L CNN
F 1 "prog enable" H 5400 3040 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SKHH_Angled" H 5400 3300 50  0001 C CNN
F 3 "" H 5400 3300 50  0001 C CNN
	1    5400 3100
	1    0    0    -1  
$EndComp
$Comp
L FTDI_CONN J3
U 1 1 5AAD53E4
P 6550 4250
F 0 "J3" H 6550 4550 50  0000 C CNN
F 1 "FTDI_CONN" H 6550 3850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 6550 4250 50  0001 C CNN
F 3 "" H 6550 4250 50  0001 C CNN
	1    6550 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5AAD56DA
P 6250 4150
F 0 "#PWR03" H 6250 3900 50  0001 C CNN
F 1 "GND" H 6250 4000 50  0000 C CNN
F 2 "" H 6250 4150 50  0001 C CNN
F 3 "" H 6250 4150 50  0001 C CNN
	1    6250 4150
	1    0    0    -1  
$EndComp
NoConn ~ 6350 4250
NoConn ~ 6350 4550
NoConn ~ 6350 4150
$Comp
L GND #PWR04
U 1 1 5AAD5AE3
P 3150 3650
F 0 "#PWR04" H 3150 3400 50  0001 C CNN
F 1 "GND" H 3150 3500 50  0000 C CNN
F 2 "" H 3150 3650 50  0001 C CNN
F 3 "" H 3150 3650 50  0001 C CNN
	1    3150 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5AAD5FC8
P 5050 3200
F 0 "#PWR05" H 5050 2950 50  0001 C CNN
F 1 "GND" H 5050 3050 50  0000 C CNN
F 2 "" H 5050 3200 50  0001 C CNN
F 3 "" H 5050 3200 50  0001 C CNN
	1    5050 3200
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-strava-distance-display C1
U 1 1 5AAD65D4
P 4500 1750
F 0 "C1" H 4525 1850 50  0000 L CNN
F 1 "100nF" H 4525 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4538 1600 50  0001 C CNN
F 3 "" H 4500 1750 50  0001 C CNN
	1    4500 1750
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 5AAD681D
P 5300 1750
F 0 "C4" H 5325 1850 50  0000 L CNN
F 1 "22uF" H 5325 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5338 1600 50  0001 C CNN
F 3 "" H 5300 1750 50  0001 C CNN
	1    5300 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5AAD69C2
P 4900 2000
F 0 "#PWR06" H 4900 1750 50  0001 C CNN
F 1 "GND" H 4900 1850 50  0000 C CNN
F 2 "" H 4900 2000 50  0001 C CNN
F 3 "" H 4900 2000 50  0001 C CNN
	1    4900 2000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 5AAD6A88
P 5600 1600
F 0 "#PWR07" H 5600 1450 50  0001 C CNN
F 1 "+3.3V" H 5600 1740 50  0000 C CNN
F 2 "" H 5600 1600 50  0001 C CNN
F 3 "" H 5600 1600 50  0001 C CNN
	1    5600 1600
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J2
U 1 1 5AAD6BA5
P 3800 1600
F 0 "J2" H 3800 1700 50  0000 C CNN
F 1 "Battery" H 3800 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 3800 1600 50  0001 C CNN
F 3 "" H 3800 1600 50  0001 C CNN
	1    3800 1600
	-1   0    0    -1  
$EndComp
Text Notes 6650 3800 0    63   ~ 0
Vi2c\nVCC\nGND\nSDA\nSCL
Text Notes 6900 3650 0    60   ~ 0
Adafruit  0.54" Alphanumeric \ndisplay with i2c backpack
$Comp
L CP C5
U 1 1 5AAE3A3B
P 4150 1750
F 0 "C5" H 4175 1850 50  0000 L CNN
F 1 "220uF" H 4175 1650 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.8" H 4188 1600 50  0001 C CNN
F 3 "" H 4150 1750 50  0001 C CNN
	1    4150 1750
	1    0    0    -1  
$EndComp
$Comp
L ESP-12E U1
U 1 1 5AC544B3
P 4750 4350
F 0 "U1" H 4050 5350 50  0000 C CNN
F 1 "ESP-12E" H 5350 3350 50  0000 C CNN
F 2 "RF_Modules:ESP-12E" H 4750 4600 50  0001 C CNN
F 3 "" H 4400 4650 50  0001 C CNN
	1    4750 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5AC54629
P 4750 5550
F 0 "#PWR08" H 4750 5300 50  0001 C CNN
F 1 "GND" H 4750 5400 50  0000 C CNN
F 2 "" H 4750 5550 50  0001 C CNN
F 3 "" H 4750 5550 50  0001 C CNN
	1    4750 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3250 6250 3450
Wire Wire Line
	6250 3350 6350 3350
Wire Wire Line
	6250 3450 6350 3450
Connection ~ 6250 3350
Wire Wire Line
	6150 3550 6350 3550
Wire Wire Line
	6250 4150 6250 4050
Wire Wire Line
	6250 4050 6350 4050
Wire Wire Line
	3150 3650 3150 3550
Wire Wire Line
	3150 3550 3250 3550
Wire Wire Line
	5650 4450 6350 4450
Wire Wire Line
	6350 4350 6250 4350
Wire Wire Line
	6250 4350 6250 4550
Wire Wire Line
	4000 1600 4600 1600
Connection ~ 4900 1900
Wire Wire Line
	4900 1900 4900 2000
Connection ~ 5300 1600
Connection ~ 4500 1600
Wire Wire Line
	4000 1700 4000 1900
Connection ~ 4500 1900
Connection ~ 4150 1600
Connection ~ 4150 1900
Wire Wire Line
	4000 1900 5300 1900
Wire Wire Line
	5200 1600 5600 1600
Wire Wire Line
	4750 5450 4750 5550
Wire Wire Line
	5650 3650 6350 3650
Wire Wire Line
	5650 3750 6350 3750
Wire Wire Line
	6150 3550 6150 3350
Wire Wire Line
	6150 3350 6050 3350
Wire Wire Line
	6050 3350 6050 3450
Wire Wire Line
	6250 4550 5650 4550
$Comp
L R R2
U 1 1 5AC559D6
P 5850 5100
F 0 "R2" V 5930 5100 50  0000 C CNN
F 1 "10K" V 5850 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5850 5100 50  0001 C CNN
F 3 "" H 5850 5100 50  0001 C CNN
	1    5850 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5AC55AAD
P 5850 5450
F 0 "#PWR09" H 5850 5200 50  0001 C CNN
F 1 "GND" H 5850 5300 50  0000 C CNN
F 2 "" H 5850 5450 50  0001 C CNN
F 3 "" H 5850 5450 50  0001 C CNN
	1    5850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5350 5850 5450
NoConn ~ 5650 4850
NoConn ~ 5650 4950
NoConn ~ 5650 4250
NoConn ~ 5650 4050
Wire Wire Line
	5600 3100 5750 3100
Wire Wire Line
	5750 3100 5750 3550
Wire Wire Line
	5750 3550 5650 3550
Wire Wire Line
	5050 3200 5050 3100
Wire Wire Line
	5050 3100 5200 3100
$Comp
L +3.3V #PWR010
U 1 1 5AC56279
P 4750 3150
F 0 "#PWR010" H 4750 3000 50  0001 C CNN
F 1 "+3.3V" H 4750 3290 50  0000 C CNN
F 2 "" H 4750 3150 50  0001 C CNN
F 3 "" H 4750 3150 50  0001 C CNN
	1    4750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3150 4750 3250
Wire Wire Line
	3650 3550 3850 3550
Wire Wire Line
	3750 3300 3750 3550
Connection ~ 3750 3550
Wire Wire Line
	3750 3000 3750 2850
Wire Wire Line
	3750 2850 5850 2850
Wire Wire Line
	5850 2850 5850 3850
Wire Wire Line
	5850 3850 5650 3850
Wire Wire Line
	4400 2850 4400 2900
Connection ~ 4400 2850
Wire Wire Line
	4400 3200 4750 3200
Connection ~ 4750 3200
$Comp
L +3.3V #PWR011
U 1 1 5AC58788
P 3750 3750
F 0 "#PWR011" H 3750 3600 50  0001 C CNN
F 1 "+3.3V" H 3750 3890 50  0000 C CNN
F 2 "" H 3750 3750 50  0001 C CNN
F 3 "" H 3750 3750 50  0001 C CNN
	1    3750 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 3750 3850 3750
NoConn ~ 3850 3950
NoConn ~ 3850 4050
NoConn ~ 3850 4150
NoConn ~ 3850 4250
NoConn ~ 3850 4350
NoConn ~ 3850 4450
Wire Wire Line
	5650 4750 5850 4750
Wire Wire Line
	5850 4750 5850 4850
NoConn ~ 5650 4650
$EndSCHEMATC
