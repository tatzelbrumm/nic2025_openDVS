v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 60 70 80 {lab=GND!}
N 70 -20 70 0 {lab=gnd}
N 100 -20 100 -0 {lab=vdd}
N 70 70 100 70 {lab=GND!}
N 100 60 100 70 {lab=GND!}
N -20 40 -20 70 {lab=gnd}
N -20 -70 -20 -20 {lab=vpd}
N -20 -70 10 -70 {lab=vpd}
N -420 210 -420 250 {lab=sf_bias}
N -370 220 -370 280 {lab=sf_bias}
N -420 330 -420 360 {lab=gnd}
N -420 310 -420 330 {lab=gnd}
N -390 220 -370 220 {lab=sf_bias}
N -380 280 -370 280 {lab=sf_bias}
N -420 220 -390 220 {lab=sf_bias}
N -370 280 -320 280 {lab=sf_bias}
N -420 120 -420 150 {lab=vdd}
N -40 -130 10 -130 {lab=sf_bias}
N -240 220 -240 250 {lab=gnd}
N -240 200 -240 220 {lab=gnd}
N -240 110 -240 140 {lab=vref}
N -20 -110 10 -110 {lab=vref}
N -40 -110 -20 -110 {lab=vref}
N 100 -270 100 -230 {lab=sense}
N 120 -280 120 -230 {lab=feedback}
N -40 -170 10 -170 {lab=vdd}
N 140 -280 140 -230 {lab=gnd}
N -40 -150 10 -150 {lab=vph_bias}
N -150 220 -150 250 {lab=gnd}
N -150 200 -150 220 {lab=gnd}
N -150 110 -150 140 {lab=vph_bias}
C {openDVS_pixel.sym} 160 -100 0 0 {name=xpix}
C {vsource.sym} 70 30 0 0 {name=Vgnd value=0 savecurrent=false}
C {gnd.sym} 70 80 0 0 {name=l1 lab=GND!}
C {vsource.sym} 100 30 0 0 {name=Vvdd value=xvdd savecurrent=false}
C {lab_wire.sym} 70 -10 0 0 {name=p1 sig_type=std_logic lab=gnd}
C {lab_wire.sym} -20 70 0 0 {name=p2 sig_type=std_logic lab=gnd}
C {isource.sym} -20 10 0 0 {name=Iipd value=xipd}
C {sky130_fd_pr/nfet_01v8.sym} -400 280 0 1 {name=M1
W=0.5
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {isource.sym} -420 180 0 0 {name=Iipd1 value=xisf_bias}
C {lab_wire.sym} -420 360 0 0 {name=p3 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 100 -10 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -320 280 0 0 {name=p5 sig_type=std_logic lab=sf_bias}
C {lab_wire.sym} -420 120 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -40 -130 0 0 {name=p7 sig_type=std_logic lab=sf_bias}
C {vsource.sym} -240 170 0 0 {name=Vvref value=xvref savecurrent=false}
C {lab_wire.sym} -240 250 0 0 {name=Vvref1 sig_type=std_logic lab=gnd
value=vref}
C {lab_wire.sym} -240 110 0 0 {name=Vvref2 sig_type=std_logic lab=vref
value=vref}
C {lab_wire.sym} -40 -110 0 0 {name=p10 sig_type=std_logic lab=vref}
C {lab_wire.sym} 120 -280 3 1 {name=p11 sig_type=std_logic lab=feedback}
C {lab_wire.sym} 100 -270 3 1 {name=p12 sig_type=std_logic lab=sense}
C {lab_wire.sym} -40 -170 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 140 -280 3 1 {name=p14 sig_type=std_logic lab=gnd}
C {lab_wire.sym} -40 -150 0 0 {name=p15 sig_type=std_logic lab=vph_bias}
C {vsource.sym} -150 170 0 0 {name=Vvph_bias value=xvph_bias savecurrent=false}
C {lab_wire.sym} -150 250 0 0 {name=Vvref4 sig_type=std_logic lab=gnd
value=vref}
C {lab_wire.sym} -150 110 0 0 {name=Vvref5 sig_type=std_logic lab=vph_bias
value=vph_bias}
C {devices/code.sym} -420 -210 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/launcher.sym} -170 -300 2 1 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} -830 -300 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
.param xipd = 1e-9
.param xvph_bias = 0.6
.param xisf_bias = 10p
.param xvdd = 1.8
.param xvref = 1.2
save all
# dc vph 0 1.8 10m
.IC v(vin)=0.5
tran 1n 10u UIC
plot v(vpd)
op
write pixel_tb.raw
.endc
"}
C {noconn.sym} 100 -270 1 0 {name=l2}
C {noconn.sym} 120 -280 1 0 {name=l3}
C {lab_wire.sym} -20 -50 0 0 {name=p8 sig_type=std_logic lab=vpd}
