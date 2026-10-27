## Boolean Board (Spartan-7 xc7s50csga324-1) constraints
## Port names must match your top module: clk, SW, LED, BTN, RGB0, RGB1
## Unused ports (e.g. clk/BTN in the adder lab) only cause harmless
## 'No ports matched' warnings.

## Board configuration
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

## 100 MHz clock
set_property -dict { PACKAGE_PIN F14 IOSTANDARD LVCMOS33 } [get_ports { clk }]
create_clock -name sys_clk -period 10.000 -waveform {0 5} [get_ports { clk }]

## Slide switches
set_property -dict { PACKAGE_PIN V2  IOSTANDARD LVCMOS33 } [get_ports { SW[0] }]
set_property -dict { PACKAGE_PIN U2  IOSTANDARD LVCMOS33 } [get_ports { SW[1] }]
set_property -dict { PACKAGE_PIN U1  IOSTANDARD LVCMOS33 } [get_ports { SW[2] }]
set_property -dict { PACKAGE_PIN T2  IOSTANDARD LVCMOS33 } [get_ports { SW[3] }]
set_property -dict { PACKAGE_PIN T1  IOSTANDARD LVCMOS33 } [get_ports { SW[4] }]
set_property -dict { PACKAGE_PIN R2  IOSTANDARD LVCMOS33 } [get_ports { SW[5] }]
set_property -dict { PACKAGE_PIN R1  IOSTANDARD LVCMOS33 } [get_ports { SW[6] }]
set_property -dict { PACKAGE_PIN P2  IOSTANDARD LVCMOS33 } [get_ports { SW[7] }]
set_property -dict { PACKAGE_PIN P1  IOSTANDARD LVCMOS33 } [get_ports { SW[8] }]
set_property -dict { PACKAGE_PIN N2  IOSTANDARD LVCMOS33 } [get_ports { SW[9] }]
set_property -dict { PACKAGE_PIN N1  IOSTANDARD LVCMOS33 } [get_ports { SW[10] }]
set_property -dict { PACKAGE_PIN M2  IOSTANDARD LVCMOS33 } [get_ports { SW[11] }]
set_property -dict { PACKAGE_PIN M1  IOSTANDARD LVCMOS33 } [get_ports { SW[12] }]
set_property -dict { PACKAGE_PIN L1  IOSTANDARD LVCMOS33 } [get_ports { SW[13] }]
set_property -dict { PACKAGE_PIN K2  IOSTANDARD LVCMOS33 } [get_ports { SW[14] }]
set_property -dict { PACKAGE_PIN K1  IOSTANDARD LVCMOS33 } [get_ports { SW[15] }]

## LEDs
set_property -dict { PACKAGE_PIN G1  IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]
set_property -dict { PACKAGE_PIN G2  IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]
set_property -dict { PACKAGE_PIN F1  IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]
set_property -dict { PACKAGE_PIN F2  IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]
set_property -dict { PACKAGE_PIN E1  IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]
set_property -dict { PACKAGE_PIN E2  IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]
set_property -dict { PACKAGE_PIN E3  IOSTANDARD LVCMOS33 } [get_ports { LED[6] }]
set_property -dict { PACKAGE_PIN E5  IOSTANDARD LVCMOS33 } [get_ports { LED[7] }]
set_property -dict { PACKAGE_PIN E6  IOSTANDARD LVCMOS33 } [get_ports { LED[8] }]
set_property -dict { PACKAGE_PIN C3  IOSTANDARD LVCMOS33 } [get_ports { LED[9] }]
set_property -dict { PACKAGE_PIN B2  IOSTANDARD LVCMOS33 } [get_ports { LED[10] }]
set_property -dict { PACKAGE_PIN A2  IOSTANDARD LVCMOS33 } [get_ports { LED[11] }]
set_property -dict { PACKAGE_PIN B3  IOSTANDARD LVCMOS33 } [get_ports { LED[12] }]
set_property -dict { PACKAGE_PIN A3  IOSTANDARD LVCMOS33 } [get_ports { LED[13] }]
set_property -dict { PACKAGE_PIN B4  IOSTANDARD LVCMOS33 } [get_ports { LED[14] }]
set_property -dict { PACKAGE_PIN A4  IOSTANDARD LVCMOS33 } [get_ports { LED[15] }]

## Push buttons (BTN0-BTN3)
set_property -dict { PACKAGE_PIN J2  IOSTANDARD LVCMOS33 } [get_ports { BTN[0] }]
set_property -dict { PACKAGE_PIN J5  IOSTANDARD LVCMOS33 } [get_ports { BTN[1] }]
set_property -dict { PACKAGE_PIN H2  IOSTANDARD LVCMOS33 } [get_ports { BTN[2] }]
set_property -dict { PACKAGE_PIN J1  IOSTANDARD LVCMOS33 } [get_ports { BTN[3] }]

## RGB LEDs (index 0 = red, 1 = green, 2 = blue)
set_property -dict { PACKAGE_PIN V6  IOSTANDARD LVCMOS33 } [get_ports { RGB0[0] }]
set_property -dict { PACKAGE_PIN V4  IOSTANDARD LVCMOS33 } [get_ports { RGB0[1] }]
set_property -dict { PACKAGE_PIN U6  IOSTANDARD LVCMOS33 } [get_ports { RGB0[2] }]
set_property -dict { PACKAGE_PIN U3  IOSTANDARD LVCMOS33 } [get_ports { RGB1[0] }]
set_property -dict { PACKAGE_PIN V3  IOSTANDARD LVCMOS33 } [get_ports { RGB1[1] }]
set_property -dict { PACKAGE_PIN V5  IOSTANDARD LVCMOS33 } [get_ports { RGB1[2] }]
