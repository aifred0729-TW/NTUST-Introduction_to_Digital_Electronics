* DC analysis on a simple circuit network

v1 a 0 dc 0
r1 a 0 5k
.dc v1 0 9 1.5
.print dc v(a)
.print dc i(v1)
.end
