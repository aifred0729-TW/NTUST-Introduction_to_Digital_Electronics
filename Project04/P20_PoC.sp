* L20 PoC

r1 a rOne 10
vdr1 rOne c dc 0
v1 c b dc 5

r2 a rTwo 5
vdr2 rTwo b dc 0

i1 b a dc 2

.dc v1 5 5 1
.print dc v(a,c) i(vdr1)
.print dc v(a,b) i(vdr2)
.end