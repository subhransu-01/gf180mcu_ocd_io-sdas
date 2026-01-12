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
N -320 -40 -320 -0 {lab=IN}
N -320 60 -320 130 {lab=GND}
C {io_inv_1.sym} 40 -10 0 0 {name=x1}
C {vsource.sym} -210 30 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -130 30 0 0 {name=V2 value=cace\{vdd\} savecurrent=false}
C {gnd.sym} -210 130 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -210 -40 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -130 -40 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} -320 30 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -320 130 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -320 -40 0 0 {name=p3 sig_type=std_logic lab=IN}
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
.include CACE\{DUT_path\}
.temp CACE\{temperature\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.option warn=1

"}
C {simulator_commands_shown.sym} 340 270 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false 
value="
.control
dc V3 0 1.8 0.01
set wr_singlescale
wrdata CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data V(Vin) V(Vout)
.endc
"}
