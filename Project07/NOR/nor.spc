*SPICE circuit <nor> from XCircuit v3.10 rev 39
.GLOBAL vdd

Vdd vdd 0 3.3
Vin1 in1 0 PULSE(0.0 3.3 0.0 1n 1n 8n 20n)
Vin2 in2 0 PULSE(0.0 3.3 3.5n 1n 1n 8n 20n)
C1 out 0 15f

.subckt nor in2 in1 out
M1 out in2 GND agnd nfet w=0.22u l=0.18u m=1
M2 out in1 GND agnd nfet w=0.22u l=0.18u m=1
M3 out in1 int8 avdd pfet W=0.44u L=0.18u M=1
M4 int8 in2 Vdd avdd pfet W=0.44u L=0.18u M=1
.ends

.model nfet nmos level=49 version=3.3.0
.model pfet pmos level=49 version=3.3.0

X1 in1 in2 out nor

.measure tran t_rise
+TRIG v(out) VAL=0.33 RISE=1
+TARG v(out) VAL=2.97 RISE=1

.measure tran t_fall
+TRIG v(out) VAL=2.97 FALL=1
+TARG v(out) VAL=2.97 FALL=1

.measure tran t_propagation_r
+TRIG v(in1) VAL=1.65 FALL=1
+TARG v(out) VAL=1.65 RISE=1

.measure tran t_propagation_r
+TRIG v(in2) VAL=1.65 FALL=1
+TARG v(out) VAL=1.65 RISE=1

.measure tran t_propagation_f
+TRIG v(in1) VAL=1.65 RISE=1
+TARG v(out) VAL=1.65 FALL=1


.measure tran t_propagation_f
+TRIG v(in2) VAL=1.65 RISE=1
+TARG v(out) VAL=1.65 FALL=1

.tran 100p 40n

.end
