* L22 PoC

r1 a rOne 10
vdr1 rOne b dc 0

r2 b rTwo 20
vdr2 rTwo c dc 0

r3 c rThree 30
vdr3 rThree d dc 0

r4 b rFour 15
vdr4 rFour e dc 0

r5 c rFive 25
vdr5 rFive e dc 0

v1 a e dc 50
v2 d e dc 100

.dc v1 50 50 1
.print dc v(b,a) i(vdr1)
.print dc v(b,c) i(vdr2)
.print dc v(c,d) i(vdr3)
.print dc v(b,e) i(vdr4)
.print dc v(c,e) i(vdr5)
.end