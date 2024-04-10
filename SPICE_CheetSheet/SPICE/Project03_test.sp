* Simple spice netlist

v1 vdd 0 1.8V

m1 out in vdd vdd pch
m2 out in 0 0 nch
c1 out 0 1f

v2 in 0 pwl 0ps 0 100ps 0 200ps 1.8 500ps 1.8 600ps 0 900ps 0 1100ps 1.8 1400ps 1.8 1600ps 0 1900ps 0 1950ps 1.8 2300ps 1.8 2350ps 0

.model nch nmos
.model pch pmos
.tran  1p 2600p
.end
