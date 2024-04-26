* L08_P11 PoC
* plot v(A,B) v(B)

r1 A B 1k
l1 B 0 100m ic = 0
v1 A 0 dc 10

.tran 10u 100u uic
.end