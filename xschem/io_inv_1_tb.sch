v {xschem version=3.4.8RC file_version=1.2
* Copyright 2023 David Mitchell Bailey
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
* 
*     https://www.apache.org/licenses/LICENSE-2.0
* 
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
}
G {}
K {}
V {}
S {}
E {}
P 4 1 -250 -170 {}
N -700 130 -700 240 {lab=GND}
N -700 170 -610 170 {lab=GND}
N -610 130 -610 170 {lab=GND}
N -700 0 -700 70 {lab=VSS}
N -350 150 -350 210 {lab=GND}
N -140 -50 -90 -50 {lab=Vout}
N -350 -50 -350 90 {lab=Vin}
N -350 -50 -310 -50 {lab=Vin}
N -180 -50 -140 -50 {lab=Vout}
N -700 -10 -290 -10 {lab=VSS}
N -700 -10 -700 -0 {lab=VSS}
N -610 -90 -290 -90 {lab=VDD}
N -610 -90 -610 70 {lab=VDD}
N -120 -50 -120 -20 {lab=Vout}
N -120 40 -120 70 {lab=GND}
C {devices/code_shown.sym} 160 -80 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {simulator_commands_shown.sym} 190 80 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
** Rise/Fall 10-90%
.meas tran tr1090 TRIG v(vout) VAL='0.1*1.8' RISE=1 TARG v(vout) VAL='0.9*1.8' RISE=1
.control
save all	
TRAN 0.1n 50n
** Rise/Fall 10-90%
meas tran tr1090 TRIG v(vout) VAL='0.1*1.8' RISE=1 TARG v(vout) VAL='0.9*1.8' RISE=1


plot v(Vin) v(Vout)
.endc

"}
C {io_inv_1.sym} -290 -50 0 0 {name=x1}
C {vsource.sym} -700 100 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -610 100 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -700 240 0 0 {name=l1 lab=GND}
C {vsource.sym} -350 120 0 0 {name=V3 value="0 PULSE(0 1.8 0 1n 1n 10n 20n)" savecurrent=false}
C {gnd.sym} -350 210 0 0 {name=l2 lab=GND}
C {opin.sym} -90 -50 0 0 {name=p1 lab=Vout}
C {lab_wire.sym} -350 -50 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {capa.sym} -120 10 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -120 70 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -610 -90 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -700 -10 0 0 {name=p4 sig_type=std_logic lab=VSS}
