v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1070 -260 1070 -150 {lab=GND}
N 1170 -260 1170 -200 {lab=GND}
N 1070 -200 1170 -200 {lab=GND}
N 1070 -350 1070 -320 {lab=VSS}
N 1170 -350 1170 -320 {lab=VDD}
N 1450 -410 1490 -410 {lab=Vin}
N 1510 -470 1550 -470 {lab=VDD}
N 1510 -340 1550 -340 {lab=VSS}
N 1280 -350 1280 -320 {lab=Vin}
N 1280 -260 1280 -200 {lab=GND}
N 1620 -410 1730 -410 {lab=Vout}
N 1730 -410 1760 -410 {lab=Vout}
N 1510 -470 1510 -450 {lab=VDD}
N 1510 -370 1510 -340 {lab=VSS}
C {io_inv_1.sym} 1510 -410 0 0 {name=x1}
C {vsource.sym} 1070 -290 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 1170 -290 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 1070 -150 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 1070 -350 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1170 -350 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1450 -410 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 1550 -470 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1550 -340 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 1280 -290 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} 1280 -200 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 1280 -350 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {simulator_commands_shown.sym} 1830 -520 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false 
value="
.include /home/subhransu/share/pdk/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /home/subhransu/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice ss
.include /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/netlist/schematic/io_inv_1.spice
.temp -40
.option SEED=12345
.option warn=1
"}
C {simulator_commands_shown.sym} 1830 -310 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false 
value="
.control
dc V3 0 1.8 0.1
set wr_singlescale
wrdata /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/runs/RUN_2026-01-19_07-05-56/parameters/dc_response/run_0/io_inv_1_dc_0.data V(Vin) V(Vout)
.endc
"}
C {lab_wire.sym} 1760 -410 0 0 {name=p7 sig_type=std_logic lab=Vout}
