* L10_P15_PoC_RH.sp

c1 c a 10m ic=10m
l1 a b 1 ic=0
r1 b c 50

.control
tran 10u 1 uic
plot v(b,c)
.endc
.end