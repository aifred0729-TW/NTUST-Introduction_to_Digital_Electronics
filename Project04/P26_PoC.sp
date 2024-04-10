* L26 PoC

r1 a rOne 70
vdr1 rOne b dc 0

r2 b rTwo 100
vdr2 rTwo c dc 0

r3 b rThree 20
vdr3 rThree d dc 0

r4 c rFour 80
vdr4 rFour e dc 0

r5 d rFive 10
vdr5 rFive e dc 0

r6 d rSix 30
vdr6 rSix g dc 0

r7 e rSeven 60
vdr7 rSeven h dc 0

r8 f rEight 40
vdr8 rEight g dc 0

r9 g rNine 90
vdr9 rNine h dc 0

v1 a f dc 50

.dc v1 15 15 1
.print dc v(a,b) i(vdr1)
.print dc v(b,c) i(vdr2)
.print dc v(b,d) i(vdr3)
.print dc v(c,e) i(vdr4)
.print dc v(d,e) i(vdr5)
.print dc v(d,g) i(vdr6)
.print dc v(e,h) i(vdr7)
.print dc v(f,g) i(vdr8)
.print dc v(g,h) i(vdr9)
.end