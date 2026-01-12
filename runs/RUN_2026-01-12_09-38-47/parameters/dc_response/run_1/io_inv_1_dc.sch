v {xschem version=3.4.7 file_version=1.2}
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
N 1320 -430 1360 -430 {lab=Vin}
N 1660 -430 1700 -430 {lab=VDD}
N 1660 -410 1700 -410 {lab=#net1}
N 1660 -390 1700 -390 {lab=VSS}
N 1250 -350 1250 -320 {lab=Vin}
N 1250 -260 1250 -200 {lab=GND}
C {io_inv_1.sym} 1510 -410 0 0 {name=x1}
C {devices/code_shown.sym} 1840 -440 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 1070 -290 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 1170 -290 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 1070 -150 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 1070 -350 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1170 -350 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1320 -430 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 1700 -430 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1700 -390 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 1250 -290 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} 1250 -200 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 1250 -350 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {simulator_commands_shown.sym} 1840 -320 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false 
value="
.include /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/netlist/schematic/io_inv_1.spice
.temp 27
.option SEED=12345
.option warn=1
"}
C {simulator_commands_shown.sym} 1840 -140 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false 
value="
.control
dc V3 0 1.8 0.01
set wr_singlescale
wrdata /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/runs/RUN_2026-01-12_09-38-47/parameters/dc_response/run_1/io_inv_1_dc_1.data V(Vin) V(Vout)
.endc
"}
