v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 100 -90 110 {lab=GND}
N -90 20 -90 30 {lab=vphoto}
N -90 -90 -90 -60 {lab=VDD}
N -90 20 -30 20 {lab=vphoto}
N 220 80 240 80 {lab=vph_sf}
N 220 180 240 180 {lab=vref}
N 300 180 320 180 {lab=vin}
N 320 80 320 180 {lab=vin}
N 300 80 320 80 {lab=vin}
N -90 0 -90 20 {lab=vphoto}
N -90 90 -90 100 {lab=GND}
N -90 -30 -60 -30 {lab=GND}
N 130 -110 130 -80 {lab=VDD}
N 130 -50 160 -50 {lab=GND}
N 130 150 130 170 {lab=GND}
N 130 120 160 120 {lab=GND}
N 130 80 220 80 {lab=vph_sf}
N 200 180 220 180 {lab=vref}
N -30 20 30 20 {lab=vphoto}
N 40 120 90 120 {lab=sf_bias}
N 130 -20 130 60 {lab=vph_sf}
N 130 60 130 90 {lab=vph_sf}
N 320 80 340 80 {lab=vin}
N 380 80 410 80 {lab=GND}
N 380 -40 380 50 {lab=#net1}
N 450 120 450 140 {lab=#net2}
N 450 180 450 210 {lab=GND}
N 320 180 420 180 {lab=vin}
N 680 -190 680 30 {lab=feedback}
N 480 180 530 180 {lab=feedback}
N 450 90 450 120 {lab=#net2}
N 450 0 450 90 {lab=#net2}
N 30 -50 90 -50 {lab=vphoto}
N 30 -50 30 20 {lab=vphoto}
N -170 -30 -130 -30 {lab=vph_bias}
N 430 -70 430 -40 {lab=GND}
N 460 -70 510 -70 {lab=sense}
N 580 -60 580 -40 {lab=row_sel}
N 580 0 580 30 {lab=GND}
N 450 0 550 0 {lab=#net2}
N 630 -170 630 0 {lab=pix_rst}
N 380 -70 400 -70 {lab=#net1}
N 380 -70 380 -50 {lab=#net1}
N 380 -50 380 -40 {lab=#net1}
N -170 -170 -130 -170 {lab=row_sel}
N -130 -170 480 -170 {lab=row_sel}
N 430 -170 430 -110 {lab=row_sel}
N 510 -190 510 -70 {lab=sense}
N 630 -190 630 -170 {lab=pix_rst}
N 580 -170 580 -60 {lab=row_sel}
N 480 -170 580 -170 {lab=row_sel}
N 610 0 630 0 {lab=pix_rst}
N 530 180 680 180 {lab=feedback}
N 680 30 680 180 {lab=feedback}
C {vdd.sym} -90 -90 0 0 {name=l1 lab=VDD}
C {gnd.sym} -90 110 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 270 80 3 0 {name=CSAMPLE model=cap_mim_m3_1 W=1 L=1 MF=16 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 270 180 3 0 {name=CREF model=cap_mim_m3_1 W=1 L=1 MF=2 spiceprefix=X}
C {gnd.sym} -60 -30 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -110 -30 0 0 {name=M1
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
C {lab_pin.sym} 30 20 2 0 {name=p1 sig_type=std_logic lab=vphoto}
C {vdd.sym} 130 -110 0 0 {name=l7 lab=VDD}
C {gnd.sym} 130 170 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 130 30 2 0 {name=p2 sig_type=std_logic lab=vph_sf}
C {lab_pin.sym} 320 130 2 0 {name=p3 sig_type=std_logic lab=vin}
C {sky130_fd_pr/nfet_01v8.sym} 360 80 0 0 {name=M4
W=2
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
C {gnd.sym} 410 80 0 0 {name=l13 lab=GND}
C {gnd.sym} 380 110 0 0 {name=l14 lab=GND}
C {lab_pin.sym} 510 -180 0 0 {name=p4 sig_type=std_logic lab=sense}
C {sky130_fd_pr/nfet_01v8.sym} 450 160 1 0 {name=M7
W=1
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
C {gnd.sym} 450 210 1 0 {name=l20 lab=GND}
C {lab_pin.sym} 680 -180 2 0 {name=p5 sig_type=std_logic lab=feedback}
C {lab_pin.sym} 630 -180 0 0 {name=p6 sig_type=std_logic lab=pix_rst}
C {lab_pin.sym} 200 180 0 0 {name=p9 sig_type=std_logic lab=vref}
C {sky130_fd_pr/nfet_01v8.sym} 110 120 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 110 -50 0 0 {name=M3
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
C {gnd.sym} 160 -50 0 0 {name=l8 lab=GND}
C {gnd.sym} 160 120 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 40 120 0 0 {name=p7 sig_type=std_logic lab=sf_bias}
C {lab_pin.sym} -170 -30 0 0 {name=p8 sig_type=std_logic lab=vph_bias}
C {sky130_fd_pr/photodiode.sym} -90 60 0 0 {name=D1
model=photodiode
area=9e-12
perim=12e-6
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 430 -90 1 0 {name=M5
W=1
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
C {gnd.sym} 430 -40 1 0 {name=l3 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 580 -20 1 0 {name=M6
W=1
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
C {gnd.sym} 580 30 1 0 {name=l4 lab=GND}
C {lab_pin.sym} -170 -170 0 0 {name=p10 sig_type=std_logic lab=row_sel}
