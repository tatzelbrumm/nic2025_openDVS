# nic2025_openDVS
Telluride Neuromorphic Workshop project to design open-source DVS camera at the NIC group

Commit access to project members ONLY. Please upload your VERFIFIED FINAL designs ONLY.

Files to be uploaded (Tentative; keep checking for updates)
Analog Design: Xschem (.sch) files including Ngspice/Xyce simulation setup with output data (.raw) files
Digital Design: ACT (.act, .src) files including Xyce setup with output netlist (.prn) or waveform (.vcd) files 

Architecture details
1. 64x64 array (that can be tiled for scaling up resolution)
2. Nwell-psub photodiode
3. Modified qDVS pixel with Source Follower and MIM Caps for DDS (Double Difference Sampling)
4. Column Sense Amplifier, Voltage Clamp and Comparator can be reused or modified for better performance (settling time, power etc)
5. Asynchronous interface logic (as discussed on 9 July) that takes the EVENT bit (comparator output) to generate ROW_SEL (for row wise select), DETECT (for comparator), RESET (for column wise pixel reset).
6. Two 1x64 vectors to be readout parallelly for each ROW_SEL 

Target Specs (TBD)
Supply: 1.8V (could be scaled down to 1.2V)
Latency: 64µs to 200µs (64 rows x 1-3µs per row), depends on analog settling time
Power: 30µW (200nA*1.8V static + dynamic = 400nW per column X 64), depends on analog settling time
Contrast Sensitivity: 10-15% i.e. detect VPH changes of 4-6mV assuming 9:1 cap ratio in DDS stage, VREF needs to swing 10x i.e. 40-60mV
Dynamic Range: ~100dB (100fA – 10nA photocurrent) needs special care of photodetector design

