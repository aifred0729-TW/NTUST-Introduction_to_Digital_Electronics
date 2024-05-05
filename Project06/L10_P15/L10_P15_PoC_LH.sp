* L10_P15_PoC_LH.sp

c1 c a 10m ic=10m
l1 a b 10 ic=0
r1 b c 20

.control
tran 10u 10 uic
plot v(b,c)
.endc
.end