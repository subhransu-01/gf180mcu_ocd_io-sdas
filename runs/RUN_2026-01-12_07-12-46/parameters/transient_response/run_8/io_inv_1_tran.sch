v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -210 60 -210 130 {lab=GND}
N -130 60 -130 90 {lab=GND}
N -210 90 -130 90 {lab=GND}
N -210 -40 -210 -0 {lab=VSS}
N -130 -40 -130 -0 {lab=VDD}
N -420 -40 -420 0 {lab=Vin}
N -420 60 -420 130 {lab=GND}
N -190 -180 -160 -180 {lab=Vin}
N 140 -160 170 -160 {lab=Vout}
N 160 -160 160 -130 {lab=Vout}
N 160 -70 160 -40 {lab=GND}
N 140 -140 140 -120 {lab=VSS}
N 90 -120 140 -120 {lab=VSS}
N 90 -120 90 -90 {lab=VSS}
N 140 -180 190 -180 {lab=VDD}
C {io_inv_1.sym} -10 -160 0 0 {name=x1}
C {vsource.sym} -210 30 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -130 30 0 0 {name=V2 value=cace\{vdd\} savecurrent=false}
C {gnd.sym} -210 130 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -210 -40 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -130 -40 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} -420 30 0 0 {name=V3 value="0 PULSE(0 1.8 0 1n 1n 10n 20n)" savecurrent=false}
C {gnd.sym} -420 130 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -420 -40 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/code_shown.sym} 330 -40 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {simulator_commands_shown.sym} 330 90 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false 
value="
*.lib /home/subhransu/share/pdk/gf180mcuD/libs.tech/ngspice/sm141064.ngspice ff
.include /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/netlist/schematic/io_inv_1.spice
.temp 130
.option SEED=12345
.option warn=1

"}
C {simulator_commands_shown.sym} 340 270 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false 
value="
.control
tran 0.1n 5.0000000000000004e-08
set wr_singlescale
wrdata /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/runs/RUN_2026-01-12_07-12-46/parameters/transient_response/run_8/io_inv_1_tran_8.data V(Vout) V(Vin)
.endc
"}
C {lab_wire.sym} -190 -180 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 170 -160 2 0 {name=p7 sig_type=std_logic lab=Vout}
C {capa.sym} 160 -100 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 160 -40 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 190 -180 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 90 -90 0 0 {name=p6 sig_type=std_logic lab=VSS}
