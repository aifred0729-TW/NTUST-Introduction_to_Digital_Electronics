* L07_P15 PoC
* plot v(A,B) v(B)

r1 A B 0.5k
c1 B 0 10u ic = 0
v1 A 0 dc 10

.tran 10m 100m uic
.end
