* Use of "dummy" voltage source to examine current value

v1 a 0 dc 9
vdr1 a b dc 0
r1 b 0 5k
vdr2 a c dc 0
r2 c 0 10k
vdr3 a d dc 0
r3 d 0 15k
.dc v1 9 9 1
.print dc v(a) v(b) v(c) v(d)
.print dc i(v1) i(vdr1) i(vdr2) i(vdr3)
* NOTICE: Use "dummy" voltage source (vdr1/vdr2/vdr3) to examine current value.
.end
