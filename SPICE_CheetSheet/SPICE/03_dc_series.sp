* DC analysis on resistors in series

i1 0 a dc 1m
r1 a b 3k
r2 b c 10k
r3 c 0 5k
.dc i1 0.001 0.001 1
.print dc v(a) v(b) v(c)
.print dc v(a,b) v(b,c) v(c)
* .print dc i(i1)
* NOTICE: Current value could be only examined on independent "voltage" source.
.end
