* P16 PoC

r1 a rOne 100
vdr1 rOne c dc 0
v1 c b dc 15

r2 a rTwo 200
vdr2 rTwo d dc 0
v2 d b dc 20

r3 a rThree 50
vdr3 rThree b dc 0

.dc v1 15 15 1
.print dc v(a,c) i(vdr1)
.print dc v(a,d) i(vdr2)
.print dc v(a,b) i(vdr3)
.end