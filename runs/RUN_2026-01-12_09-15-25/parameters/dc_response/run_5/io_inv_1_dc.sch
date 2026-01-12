v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 910 -260 910 -240 {lab=GND}
N 910 -240 990 -240 {lab=GND}
N 990 -260 990 -240 {lab=GND}
N 910 -240 910 -200 {lab=GND}
N 910 -360 910 -320 {lab=VSS}
N 990 -360 990 -320 {lab=VDD}
N 1120 -270 1120 -220 {lab=Vin}
N 1120 -160 1120 -120 {lab=GND}
C {io_inv_1.sym} 1210 -380 0 0 {name=x1}
C {devices/code_shown.sym} 1430 -410 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {simulator_commands_shown.sym} 1410 -290 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false 
value="
*.lib /home/subhransu/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice ff
.include /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/netlist/schematic/io_inv_1.spice
.temp 27
.option SEED=12345
.option warn=1
"}
C {simulator_commands_shown.sym} 1400 -120 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false 
value="
.control
dc V3 0 1.8 0.01
set wr_singlescale
wrdata /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/runs/RUN_2026-01-12_09-15-25/parameters/dc_response/run_5/io_inv_1_dc_5.data V(Vin) V(Vout)
.endc
"}
C {vsource.sym} 910 -290 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 990 -290 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 910 -200 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 910 -360 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 990 -360 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} 1120 -190 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} 1120 -130 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 1120 -270 0 0 {name=p3 sig_type=std_logic lab=Vin}
