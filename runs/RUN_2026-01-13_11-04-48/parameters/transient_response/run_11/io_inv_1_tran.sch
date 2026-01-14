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
N 1510 -480 1550 -480 {lab=VDD}
N 1510 -340 1550 -340 {lab=VSS}
N 1290 -350 1290 -320 {lab=IN}
N 1290 -260 1290 -200 {lab=GND}
N 1660 -410 1730 -410 {lab=Vout}
N 1730 -410 1730 -380 {lab=Vout}
N 1730 -410 1770 -410 {lab=Vout}
N 1730 -320 1730 -290 {lab=GND}
N 1620 -410 1660 -410 {lab=Vout}
N 1510 -480 1510 -450 {lab=VDD}
N 1510 -370 1510 -340 {lab=VSS}
C {io_inv_1.sym} 1510 -410 0 0 {name=x1}
C {devices/code_shown.sym} 1840 -440 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 1070 -290 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 1170 -290 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 1070 -150 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 1070 -350 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1170 -350 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1450 -410 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 1550 -480 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1550 -340 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 1290 -290 0 0 {name=V3 value="0 PULSE(0 1.8 0 1n 1n 10n 20n)" savecurrent=false}
C {gnd.sym} 1290 -200 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 1290 -350 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {simulator_commands_shown.sym} 1840 -320 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false 
value="
*.lib /home/subhransu/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice ff
.include /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/netlist/schematic/io_inv_1.spice
.temp 130
.option SEED=12345
.option warn=1
"}
C {simulator_commands_shown.sym} 1840 -140 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false 
value="
.control
tran 0.1n 5.0000000000000004e-08
set wr_singlescale
wrdata /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/runs/RUN_2026-01-13_11-04-48/parameters/transient_response/run_11/io_inv_1_tran_11.data V(Vout) V(Vin)
.endc
"}
C {lab_wire.sym} 1770 -410 0 0 {name=p7 sig_type=std_logic lab=Vout}
C {capa.sym} 1730 -350 0 0 {name=C1
m=1
value=1e-15
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1730 -290 0 0 {name=l3 lab=GND}
