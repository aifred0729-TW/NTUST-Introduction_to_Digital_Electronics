* DC analysis on resistors in parallel

v1 a 0 dc 9
r1 a 0 5k
r2 a 0 10k
r3 a 0 15k
.dc v1 9 9 1
.print dc v(a)
.print dc i(v1)
* .print dc i(r1) i(r2) i(r3)
* NOTICE: Current value could be only examined on independent "voltage" source.
.end
