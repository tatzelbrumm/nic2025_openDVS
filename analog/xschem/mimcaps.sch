v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -140 300 -120 {
lab=bottom}
N 140 -140 140 -120 {
lab=bottom}
N 140 -120 300 -120 {
lab=bottom}
N 220 -120 220 -100 {
lab=bottom}
N 300 -220 300 -200 {
lab=bigtop}
N 140 -220 140 -200 {
lab=liltop}
C {devices/title.sym} 160 0 0 0 {name=l1 author="Christoph Maier"}
C {sky130_fd_pr/cap_mim_m3_1.sym} 300 -170 0 0 {name=CSAMPLE model=cap_mim_m3_1 W=4 L=8 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 140 -170 0 0 {name=CREF model=cap_mim_m3_1 W=2 L=2 MF=1 spiceprefix=X}
C {devices/iopin.sym} 220 -100 1 0 {name=p0 lab=bottom}
C {devices/iopin.sym} 140 -220 3 0 {name=p2 lab=liltop
}
C {devices/iopin.sym} 300 -220 3 0 {name=p1 lab=bigtop}
