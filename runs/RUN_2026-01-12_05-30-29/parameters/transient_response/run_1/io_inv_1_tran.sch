v {xschem version=3.4.8RC file_version=1.2}
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
N -420 -40 -420 0 {lab=IN}
N -420 60 -420 130 {lab=GND}
N 40 -80 40 -50 {lab=VDD}
N -10 -10 20 -10 {lab=IN}
N 40 30 40 60 {lab=xxx}
N 150 -10 180 -10 {lab=OUT}
C {io_inv_1.sym} 40 -10 0 0 {name=x1}
C {vsource.sym} -210 30 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -130 30 0 0 {name=V2 value=cace\{vdd\} savecurrent=false}
C {gnd.sym} -210 130 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -210 -40 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -130 -40 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} -420 30 0 0 {name=V3 value="0 PULSE(0 1.8 0 1n 1n 10n 20n)" savecurrent=false}
C {gnd.sym} -420 130 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -420 -40 0 0 {name=p3 sig_type=std_logic lab=IN}
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
.include /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/netlist/schematic/io_inv_1.spice
.temp 27
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
wrdata /home/subhransu/gitRepo/gf180mcu_ocd_io-sdas/runs/RUN_2026-01-12_05-30-29/parameters/transient_response/run_1/io_inv_1_tran_1.data V(Vout) V(Vin)
.endc
"}
C {lab_wire.sym} 40 -80 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -10 -10 0 0 {name=p5 sig_type=std_logic lab=IN}
C {lab_wire.sym} 40 60 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 180 -10 2 0 {name=p7 sig_type=std_logic lab=OUT}
