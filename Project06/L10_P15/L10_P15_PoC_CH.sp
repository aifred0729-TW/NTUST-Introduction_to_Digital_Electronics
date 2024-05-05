* L10_P15_PoC_CH.sp

c1 c a 100m ic=100m
l1 a b 1 ic=0
r1 b c 20

.control
tran 10u 1 uic
plot v(b,c)
.endc
.end